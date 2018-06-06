#!/bin/bash

# Usage: ./wannaCry.sh BEGIN_NUM_INSERTS END_NUM_INSERTS NUM_LOOPS

BEGIN_NUM_INSERTS=${1:-1}
END_NUM_INSERTS=${2:-500}
NUM_LOOPS=${3:-100}
OUTPUT_FILENAME=errors.txt
CLEAN_OUTPUT=cleanErrors.txt

echo -n > $OUTPUT_FILENAME

# Realiza um teste exaustivo
for i in `seq $BEGIN_NUM_INSERTS $END_NUM_INSERTS`; 
do
	for j in `seq 1 $NUM_LOOPS`;
	do		
		echo "Progress: $i $j"
		./run.sh $i >> $OUTPUT_FILENAME
		egrep "DELETE|ROLLBACK|CREATE|DROP|COMMIT|BEGIN|ALTER|INSERT" -v $OUTPUT_FILENAME > $CLEAN_OUTPUT
	done
done

echo "Cleaned Outputs:"
cat $CLEAN_OUTPUT
echo "Original Results:"
cat $OUTPUT_FILENAME | sort | uniq -c | sort -k1 -n