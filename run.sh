#!/bin/bash

N=20
DATABASE=projeto_bd
INSERT_OUT=inserts.sql
SCHEMA_PATH=sqlFiles/schemas.sql
GENERATOR_PATH=bllshtMyDatabase/bllshtMyDatabase.py
DISJOINT_PATH=sqlFiles/disjoint.sql
OUTPUT=dbDump.sql

# CREATE DATABASE $DATABASE;

# Limpando o banco de dados
psql $DATABASE -c "DROP SCHEMA public CASCADE;" && \
psql $DATABASE -c "GRANT ALL ON SCHEMA PUBLIC TO DEV;"

# Criando a estrutura do banco de dados
psql $DATABASE < $SCHEMA_PATH && \

# Gerando os inserts
python3 $GENERATOR_PATH $SCHEMA_PATH $N > $INSERT_OUT && \

# Alimentando o banco de dados com os inserts
psql $DATABASE < $INSERT_OUT && \

# Garante característica de disjoint
psql $DATABASE < $DISJOINT_PATH

# Gerando os inserts corrigidos
for i in `cat tableNames.txt`; do
	pg_dump --table="$i" --data-only --column-inserts $DATABASE >> $OUTPUT
done