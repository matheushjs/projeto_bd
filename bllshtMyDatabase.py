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
	This is a pseudo-regular expression implementation
	that finds a full POSTGRESQL command, which may uses ','
	as a stop symbol but, unfortunally, it is used within a
	command too, making hard to detect using pure regex.
"""
def getCommandmyRegex(text, stop=','):
	insideParenthesis=0
	result=['']

	for c in text:
		if c == '(':
			insideParenthesis += 1
		if c == ')':
			insideParenthesis -= 1
		if c == stop and insideParenthesis == 0:
			result.append('')				
		elif c != '\n':
			result[-1] += c

	return result

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
In this version, the constraints are just removed (work this in future)
"""
def processConstraints(tableCommands):
	re.compile(r'\s*CONSTRAINT.*\n')

if __name__ == '__main__':
	if len(sys.argv) < 2:
		print('usage:', sys.argv[0], 
			'< .sql file with CREATE TABLE commands >')
		exit(1)

	# Get the file content	
	data=readData(sys.argv[1])

	# Extract all tables from .sql file 
	# (with CREATE TABLE commands)
	tableCommands=reGetTable.findall(data) 

	for p in tableCommands:
		print('Table name:', p[0],'\nWith commands:')
		commands=getCommandmyRegex(p[1])
		for c in commands:
			print('.', c)
		print('\n')
		
