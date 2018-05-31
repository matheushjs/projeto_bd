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
	In this version, the explicit constraints are just 
	removed (work this in future)
"""
def processConstraints(structuredTableCommands):
	"""
	dbStructure = [
		(columnName_1, attrType_1, maxSize_1, permitedValues_1,
			PRIMARYKEY?_1, UNIQUE?_1, DEFVAL_1, NOTNULL?_1, FK?_1)
		(columnName_2, attrType_2, maxSize_2, permitedValues_2,
			PRIMARYKEY?_2, UNIQUE?_2, DEFVAL_2, NOTNULL?_2, FK?_2)
		(columnName_3, attrType_3, maxSize_3, permitedValues_3,
			PRIMARYKEY?_3, UNIQUE?_3, DEFVAL_3, NOTNULL?_3, FK?_3)
		...
		(columnName_n, attrType_n, maxSize_n, permitedValues_n,
			PRIMARYKEY?_n, UNIQUE?_n, DEFVAL_n, NOTNULL?_n, FK?_n)
	]
	"""
	dbStructure=[]

	reConstraintFK=regex.compile(
		r'CONSTRAINT.+FOREIGN\s+KEY\s*\(([^\s]+)\)'+
		'\s*REFERENCES\s*([^\s]+)', regex.IGNORECASE)
	reConstraintPK=regex.compile(
		r'CONSTRAINT.+PRIMARY\s+KEY\s*\(([^\s]+)\)', regex.IGNORECASE)
	reConstraintUn=regex.compile(
		r'CONSTRAINT.+UNIQUE\s*\(([^)]+)\)', regex.IGNORECASE)
	reConstraintCI=regex.compile(
		r'CONSTRAINT.+CHECK.+IN\s*\(([^)]+)\)', regex.IGNORECASE)
	reConstraintNN=regex.compile(
		r'([^\s]+).*NOT\s*NULL\s*', regex.IGNORECASE)
	reConstraintDF=regex.compile(
		r'\s*DEFAULT\s*([^\s]+)\s*', regex.IGNORECASE)

	for key in structuredTableCommands:
		currentList = structuredTableCommands[key]
		for i in range(len(currentList)):
			match=reConstraintFK.search(currentList[i])
			if match:
				print(match.groups(0))


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

	processConstraints(structuredTableCommands)
