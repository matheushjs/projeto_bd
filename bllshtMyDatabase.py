import regex
import sys

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

"""
def getCommands(rawDataCommands):
	structuredT = {}
	for r in rawDataCommands:
		structuredT[r[0]] = processCommands(r[1])
	return structuredT

"""

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
	
"""
def processTokens(match, sep=','):
	return regex.sub('\s+', '', match.groups()[0]).split(sep)

"""
	In this version, the explicit constraints are just 
	removed (work this in future)
"""
def processConstraints(structuredTableCommands, sep=','):
	"""
	dbStructure = {
		columnName_1: (attrType_1, maxSize_1, permittedValues_1,
			PK?_1, UNIQUE?_1, DEFVAL_1, NOTNULL?_1, FK_1),
		columnName_2: (attrType_2, maxSize_2, permittedValues_2,
			PK?_2, UNIQUE?_2, DEFVAL_2, NOTNULL?_2, FK_2),
		columnName_3: (attrType_3, maxSize_3, permittedValues_3,
			PK?_3, UNIQUE?_3, DEFVAL_3, NOTNULL?_3, FK_3),
		...,
		columnName_n: (attrType_n, maxSize_n, permittedValues_n,
			PK?_n, UNIQUE?_n, DEFVAL_n, NOTNULL?_n, FK_n)
	}
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

	dbStructure={}
	for key in structuredTableCommands:
		currentList = structuredTableCommands[key]
		for i in range(len(currentList)):
			checkConstraint=reConstraintDetect.search(currentList[i])
			if checkConstraint:
				# Constraint declaration
				
				# Check UNIQUE
				matchUnique=reConstraintUn.search(currentList[i])
				if matchUnique:
						refColumns=processTokens(matchUnique, sep)
						for r in refColumns:
							dbStructure[r]['UNIQUE']=True

				# Check CHECK IN
				matchCheckIn=reConstraintCI.search(currentList[i])
				if matchCheckIn:
					refColumn=matchCheckIn.groups()[0]
					dbStructure[refColumn]['PERMITTEDVALUES']=set(
						(regex.sub('\s+|\'', '', 
						matchCheckIn.groups()[1])).split(sep))

				# Check PRIMARY KEY
				matchPK=reConstraintPK.search(currentList[i])
				if matchPK:
						refColumns=processTokens(matchPK, sep)
						for r in refColumns:
							dbStructure[r]['PK']=True

				# Check FOREIGN KEY
				matchFK=reConstraintFK.search(currentList[i])
				if matchFK:
						refColumns=processTokens(matchFK, sep)
						for r in refColumns:
							dbStructure[r]['FK']=matchFK.group(2)
			else:
				# Attribute/Column declaration
				match=reDeclareAttr.search(currentList[i])
				if match:
					matchData=match.groups()
					attrName=matchData[0]
					attrType=matchData[1]

					try:
						attrMaxSize=int(matchData[2])
					except:
						attrMaxSize=-1

					# Init current column metadata
					dbStructure[attrName]=initColumnMetadata(
						attrType, attrMaxSize)

					# Check if current column is NOT NULL
					notNullMatch=reConstraintNN.search(currentList[i])
					if notNullMatch:
						dbStructure[attrName]['NOTNULL']=True

					# Check if current column has DEFAULT VALUE
					defaultValueMatch=reConstraintDF.search(currentList[i])
					if defaultValueMatch:
						dbStructure[attrName]['DEFVAL']=defaultValueMatch.groups()[0]

	return dbStructure

if __name__ == '__main__':
	if len(sys.argv) < 2:
		print('usage:', sys.argv[0], 
			'< .sql file with CREATE TABLE commands >')
		exit(1)

	# Get the file content	
	data=readData(sys.argv[1])

	# Extract all tables from .sql file 
	# (with CREATE TABLE commands)
	rawTableCommands=reGetTable.findall(data) 

	structuredTableCommands=getCommands(rawTableCommands)

	dbStructure=processConstraints(structuredTableCommands)

	for key in dbStructure:
		print('COLUMN NAME:', key,'\nMETADATA:', dbStructure[key])
