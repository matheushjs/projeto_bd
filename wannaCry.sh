#!/bin/bash

# Usage: ./wannaCry.sh BEGIN_NUM_INSERTS END_NUM_INSERTS NUM_LOOPS

# Variáveis de Ambiente

# RANGES
BEGIN_NUM_INSERTS=${1:-1}
END_NUM_INSERTS=${2:-500}
NUM_LOOPS=${3:-100}

# FILENAMES
OUTPUT=errors.txt
CLEAN_OUTPUT=cleanErrors.txt

# PATHS
PROGRAM_PATH=./run.sh

# Limpa o arquivo de output
echo -n > $OUTPUT

# Realiza um teste exaustivo
for i in `seq $BEGIN_NUM_INSERTS $END_NUM_INSERTS`; 
do
	for j in `seq 1 $NUM_LOOPS`;
	do			
		echo -ne "Progress: [$i $j]\r"
		$PROGRAM_PATH $i >> $OUTPUT		
		egrep "DELETE|ROLLBACK|CREATE|DROP|COMMIT|BEGIN|ALTER|INSERT" -v $OUTPUT > $CLEAN_OUTPUT
	done
done

# Imprime os resultados
echo "Cleaned Outputs:"
cat $CLEAN_OUTPUT | sort | uniq -c | sort -k1 -n
echo "Original Results:"
cat $OUTPUT | sort | uniq -c | sort -k1 -n