#!/bin/bash

# Variáveis de Ambiente
NUM_INSERTS=20
DATABASE=projeto_bd
TABLE_NAMES=`cat tableNames.txt`
INSERT_OUT=inserts.sql
SCHEMA_PATH=sqlFiles/schemas.sql
GENERATOR_PATH=bllshtMyDatabase/bllshtMyDatabase.py
DISJOINT_PATH=sqlFiles/disjoint.sql
OUTPUT=dbDump.sql

# Limpando o banco de dados
sudo su -- postgres -c "psql -c \"DROP DATABASE $DATABASE;\""
sudo su -- postgres -c "psql -c \"CREATE DATABASE $DATABASE;\""

# Criando a estrutura do banco de dados
psql $DATABASE < $SCHEMA_PATH && \

# Gerando os inserts
python3 $GENERATOR_PATH $SCHEMA_PATH $NUM_INSERTS > $INSERT_OUT && \

# Alimentando o banco de dados com os inserts
psql $DATABASE < $INSERT_OUT && \

# Garante característica de disjoint
psql $DATABASE < $DISJOINT_PATH

# Limpando o arquivo de saída
echo -n > $OUTPUT

# Gerando os inserts corrigidos
for i in $TABLE_NAMES; do	
	pg_dump --table="$i" --data-only --column-inserts $DATABASE >> $OUTPUT
done