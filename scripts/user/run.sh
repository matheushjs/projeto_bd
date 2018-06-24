#!/bin/bash

# Usage: ./run.sh

# Variáveis de Ambiente
USER=`whoami`
DATABASE=$USER
INSERT_OUT=sqlFiles/inserts.sql
SCHEMA_PATH=sqlFiles/schemas.sql
ROLE_CHECK=`sudo su -- postgres -c "psql -c \"\du\""`
DATABASE_CHECK=`sudo su -- postgres -c "psql -c \"\l\""`
WHICHPYTHON=python3

# Checa se o usuário tem os privilégios necessários
if echo "$ROLE_CHECK" | grep -q "$USER"; then
	echo "Usuário \"$USER\" OK. Criando o database $DATABASE..."
else
	echo "Definindo permissões para o usuário \"$USER\"..."
	sudo su -- postgres -c "psql -c \"CREATE ROLE $USER;\"" && \
	sudo su -- postgres -c "psql -c \"ALTER ROLE $USER SUPERUSER;\"" && \
	sudo su -- postgres -c "psql -c \"ALTER ROLE $USER LOGIN;\"" && \
	echo "Criando o database $DATABASE..."
fi

# Checa se o database já existe na base de dados
if echo "$DATABASE_CHECK" | grep -q "$DATABASE"; then	
	sudo su -- postgres -c "psql -c \"DROP DATABASE $DATABASE;\""
fi

# Criando o database do zero
sudo su -- postgres -c "psql -c \"CREATE DATABASE $DATABASE;\"" && \

# Criando a estrutura do banco de dados
echo "Criando a estrutura de $DATABASE..."
psql $DATABASE < $SCHEMA_PATH && \

# Alimentando o banco de dados com os inserts
echo "Alimentando $DATABASE com os inserts gerados..."
psql $DATABASE < $INSERT_OUT