import regex
import sys
import random

"""
	DESCRIPTION:

	This script should create INSERT commands for PostgreSQL
	automatically, using a .sql document with all the CREATE 
	TABLE command. The .sql file must be passed as program
	argument.
"""

"""
	Regular expression that get a TABLE from the source file.
"""
reGetTable=regex.compile(
	r'\s*CREATE\s*TABLE\s*([^\s(]+)\s*\(([^;]*)\);', 
	regex.IGNORECASE | regex.MULTILINE)

"""
	Read all data from the .sql source file, 
	preprocessing the data.

	-	Substitutes all blank spaces sequences 
		for a single blank space. 

	-	Remove all source /* commentaries */
"""
def readData(db):
	with open(db) as f:
		return regex.sub(r'\s+', ' ', 
			regex.sub(r'/\*[^*]*\*/', '', f.read()))

"""
	This is a pseudo-regular expression implementation
	that finds a full POSTGRESQL command, which may uses ','
	as a stop symbol but, unfortunally, it is used within a
	command too, making hard to detect using pure regex.
"""
def processCommands(text, stop=','):
	insideParenthesis=0
	result=['']

	for c in text:
		if c == '(':
			insideParenthesis += 1
		if c == ')':
			insideParenthesis -= 1
		if c == stop and insideParenthesis == 0:
			result[-1] = regex.sub('^\s*', '', result[-1])
			result.append('')				
		elif c != '\n':
			result[-1] += c

	return result

"""
	Get a base structure that links a table name with a list
	containing all its SQL commands to latter be processed
	into valid INSERT commands.
"""
def getCommands(rawDataCommands):
	structuredT = {}
	for r in rawDataCommands:
		structuredT[r[0]] = processCommands(r[1])
	return structuredT

"""
	Init a empty block of attribute information. All this
	information will be necessary to construct correct
	INSERT commands.
"""
def initColumnMetadata(attrType='', maxSize=-1):
	return {
		'TYPE': attrType, 
		'MAXSIZE': maxSize, 
		'PERMITTEDVALUES': set(),
		'PK': False, 
		'UNIQUE': False, 
		'DEFVAL': '', 
		'NOTNULL': False, 
		'FK': ''
	}


"""
	Just an auxilliary function for multivalue regex matching
	(for example, a PRIMARY KEY constraint, that may have
	multiple values related to a single command).
"""
def processTokens(match, sep=','):
	return regex.sub('\s+', '', match.groups()[0]).split(sep)

"""
	Preprocess all data into a big hashtable (Python dictionary),
	transforming all writen SQL commands into information. Latter,
	all this information will be used to construct the INSERT
	commands.
"""
def processConstraints(structuredTableCommands, sep=','):

	"""
	Regular expressions used to convert SQL commands
	into information necessary to generate correct
	INSERT commands.
	"""
	reConstraintDetect=regex.compile(r'CONSTRAINT', 
		regex.IGNORECASE)
	reConstraintFK=regex.compile(
		r'FOREIGN\s+KEY\s*\(([^\s]+)\)'+
		'\s*REFERENCES\s*([^\s]+)', regex.IGNORECASE)
	reConstraintPK=regex.compile(
		r'PRIMARY\s+KEY\s*\(([^\s]+)\)', regex.IGNORECASE)
	reConstraintUn=regex.compile(
		r'UNIQUE\s*\(([^)]+)\)', regex.IGNORECASE)
	reConstraintCI=regex.compile(
		r'\CHECK\s*\([^(]*\(([^)]+)\)'+
		'\s*IN\s*\(([^)]+)\)\s*\)', regex.IGNORECASE)
	reConstraintNN=regex.compile(
		r'([^\s]+).*NOT\s*NULL\s*', regex.IGNORECASE)
	reConstraintDF=regex.compile(
		r'\s*DEFAULT\s*([^\s]+)\s*', regex.IGNORECASE)
	reDeclareAttr=regex.compile(
		r'([^\s]+)\s+([^\s(]+)[^(]*(?:\(\s*(\d+)\s*\))?', 
		regex.IGNORECASE)

	"""
	Check out "initColumnMetadata" for the model of a
	basic column-relate information block. All the blocks
	will be linked to the correspondent table name inside
	"dbStructure" hashtable. This data structure will be
	the information core necessary to produce valid
	INSERT commands.
	"""
	dbStructure={}
	errorTable={}
	errorCounter=0
	for key in structuredTableCommands:
		# Each table has its own sub-hashtable for each of its own
		# columns/attributes.
		dbStructure[key]={}
		errorTable[key]=[]
		
		# Auxilliary variables to reduce verbosity level through
		# this function.
		curList=structuredTableCommands[key]
		curTable=dbStructure[key]
		curErrorTable=errorTable[key]

		for i in range(len(curList)):
			# Another auxiliary variable to reduce verbosity level
			currentCommand=curList[i]

			checkConstraint=reConstraintDetect.search(currentCommand)
			if checkConstraint:				
				# Constraint declaration
				
				# Check UNIQUE
				matchUnique=reConstraintUn.search(currentCommand)
				if matchUnique:
						refColumns=processTokens(matchUnique, sep)
						for r in refColumns:
							if r in curTable:
									curTable[r]['UNIQUE']=True
							else:
								curErrorTable.append(matchUnique.groups())
								errorCounter+=1

				# Check CHECK IN
				matchCheckIn=reConstraintCI.search(currentCommand)
				if matchCheckIn:
					refColumn=matchCheckIn.groups()[0]
					if refColumn in curTable:
						curTable[refColumn]['PERMITTEDVALUES']=set(
							(regex.sub('\s+|\'', '', 
							matchCheckIn.groups()[1])).split(sep))
					else:
						curErrorTable.append(matchUnique.groups())
						errorCounter+=1

				# Check PRIMARY KEY
				matchPK=reConstraintPK.search(currentCommand)
				if matchPK:
						refColumns=processTokens(matchPK, sep)
						for r in refColumns:
							if r in curTable:
								curTable[r]['PK']=True
							else:
								curErrorTable.append(matchUnique.groups())
								errorCounter+=1

				# Check FOREIGN KEY
				matchFK=reConstraintFK.search(currentCommand)
				if matchFK:
						refColumns=processTokens(matchFK, sep)
						for r in refColumns:
							if r in curTable:
								curTable[r]['FK']=matchFK.group(2)
							else:
								curErrorTable.append(matchUnique.groups())
								errorCounter+=1

				# check REGULAR EXPRESSION
				# for a future update...

			else:
				# Attribute/Column declaration
				match=reDeclareAttr.search(currentCommand)
				if match:
					matchData=match.groups()
					attrName=matchData[0]
					attrType=matchData[1]

					try:
						attrMaxSize=int(matchData[2])
					except:
						attrMaxSize=-1

					if attrName in curTable:
						# In case that the column is declared
						# twice in the same table
						curErrorTable.append(matchUnique.groups())
						errorCounter+=1
					else:
						# Init current column metadata
						curTable[attrName]=initColumnMetadata(
							attrType, attrMaxSize)

						# Check if current column is NOT NULL
						notNullMatch=reConstraintNN.search(currentCommand)
						if notNullMatch:
							curTable[attrName]['NOTNULL']=True

						# Check if current column has DEFAULT VALUE
						defaultValueMatch=reConstraintDF.search(currentCommand)
						if defaultValueMatch:
							curTable[attrName]['DEFVAL']=defaultValueMatch.groups()[0]

	return dbStructure, errorCounter

"""

"""
def _randDATE():
	m=random.randint(1, 12)
	d=random.randint(1, 31-(m%2+(m==2)))
	y=random.randint(2000, 2018)
	m=str(m)
	d=str(d)
	y=str(y)
	return '-'.join(
		[('0' if len(d)==1 else '')+d, 
		('0' if len(d)==1 else '')+m, 
		y])

"""

"""
def _randTIME():
	h=str(random.randint(0, 23))
	m=str(random.randint(0, 59))
	s=str(random.randint(0, 59))
	return ':'.join([
		('0' if len(h)==1 else '')+h,
		('0' if len(m)==1 else '')+m,
		('0' if len(s)==1 else '')+s
	])
	

def genValue(valType, valMaxValue):
	"""
	POSTGRESQL DATATYPES:
	
	INTEGER: 4B
	BIGINT: 8B
	DATE: 'yyyy-mm-dd'
	BIGSERIAL: 8B (autoincrementable) 
	TYPE[N] (VECTOR) 
	BOOLEAN: TRUE/FALSE
	VARCHAR 
	CHAR 
	TIME: 'hh:mm:ss'
	TIMESTAMP: 'yyyy-mm-dd hh:mm:ss'
	"""
	canonicalVT = valType.upper()
	if canonicalVT == 'INTEGER':
		return random.randint(-2**(8*4), 2**(8*4)-1)

	elif canonicalVT == 'BIGINT':
		return random.randint(-2**(8*8), 2**(8*8)-1)

	elif canonicalVT == 'DATE':
		return _randDATE()

	elif canonicalVT == 'BOOLEAN':
		return random.sample(('TRUE', 'FALSE'), k=1)[0]

	elif canonicalVT == 'VARCHAR' or canonicalVT == 'CHAR':
		
		size=valMaxValue 
		if canonicalVT == 'CHAR': 
			random.randint(valMaxValue//2, valMaxValue)

		data=''
		for i in range(size):
			data += chr(random.randint(ord('a'), ord('z')))
		return data 

	elif canonicalVT == 'TIME':
		return _randTIME()

	elif canonicalVT == 'TIMESTAMP':
		return _randDATE() + ' ' + _randTIME()

	return None


"""
		'TYPE': attrType, 
		'MAXSIZE': maxSize, 
		'PERMITTEDVALUES': set(),
		'PK': False, 
		'UNIQUE': False, 
		'DEFVAL': '', 
		'NOTNULL': False, 
		'FK': ''
"""

"""
	Generate the SQL INSERT commands.
	This is the very last step of this program.
"""
def genInsertCommands(dbStructure, numInst=5):
	# First, ignore the NULL non-constraints
	tableNumTotal=0
	for table in dbStructure:
		tableNumTotal+=1
		curTable=dbStructure[table]
		print('/* TABLE', table, '*/')

		for i in range(numInst):
			command='INSERT INTO '+ table + ' ( ' +\
				', '.join(curTable.keys())+ ' )\n\tVALUES ( '
			counter=0
			for column in curTable:
				curColumn = curTable[column]

				counter+=1
				curEnd=', ' if counter < len(curTable) else ''
				command+=str(
					genValue(curColumn['TYPE'], 
					curColumn['MAXSIZE'],
					curColumn['FK']
					))+curEnd
			command+=' );'

			print(command)
		print()
	print('/* TABLE NUMBER TOTAL:', tableNumTotal, '*/')

if __name__ == '__main__':
	if len(sys.argv) < 2:
		print('usage:', sys.argv[0], 
			'< .sql file with CREATE TABLE commands >',
			'[# of valid instances for each table (default to 5)]')
		exit(1)

	instNum=5
	if len(sys.argv) >= 3:
		try:
			instNum=int(sys.argv[2])
			if instNum <= 0:
				raise Exception;
		except:
			print('Incorrent parameter type/value (\'' + 
				sys.argv[2] + '\').',
				'Must be a positive integer value.',
				'Setting to default value (5).')
			instNum=5

	# Get the file content	
	data=readData(sys.argv[1])

	# Extract all tables from .sql file 
	# (with CREATE TABLE commands)
	rawTableCommands=reGetTable.findall(data) 

	# First preprocessing of the data:
	# Links table name with each one of its creation commands
	# in the form of character strings separated inside a Python list.
	structuredTableCommands=getCommands(rawTableCommands)

	# Final preprocessing stage, where all data is converted
	# into true TABLE information, heavily structured into a
	# hashtable that links the table name with a dictionary of
	# "all possible" POSTGRES constraints and information needed to
	# construct valid INSERT commands.
	dbStructure, errorCounter=processConstraints(structuredTableCommands)

	# DEBUG purposes
	if False:
		for table in dbStructure:
			print('TABLE NAME:', table)
			for column in dbStructure[table]:
					print('\tCOLUMN NAME:', column)
					for constraint in dbStructure[table][column]:
							print('\t\t'+constraint+':', 
								dbStructure[table][column][constraint])
			print('END OF TABLE', table, '\n\n')

	print('TOTAL OF', errorCounter, 
		'ERRORS WHILE BUILDING METADATA STRUCTURE.')
	if errorCounter:
		print('SHOWING ERRORS FOR EACH TABLE:')
		for table in dbStructure:
			print('ERROR IN TABLE', table)	
			for column in dbStructure[table]:
				print('\tIN COMMAND:', dbStructure[table][column])
			print('END ERROR SECTION OF TABLE', table, '\n\n')	

	else:
					# If everything was correct til now...
					# Finally, produce INSERT commands now
					genInsertCommands(dbStructure)
