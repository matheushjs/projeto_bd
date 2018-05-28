BEGIN TRANSACTION;

/* TABELA 1 */
CREATE TABLE funcionario(
	cpf CHAR(14),
	nome VARCHAR(128) NOT NULL,
	RG VARCHAR(24) NOT NULL,
	endereco VARCHAR(128) NOT NULL,
	cargo VARCHAR(10) NOT NULL,
	equipe INTEGER,
	telefoneCsv VARCHAR(128) NOT NULL,
	CONSTRAINT pk_funcionario
		PRIMARY KEY (cpf),
	CONSTRAINT ck1_funcionario
		CHECK ( cpf ~ '[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}' ),
	CONSTRAINT ck2_funcionario 
		CHECK ( upper(cargo) IN ('PILOTO', 'COPILOTO', 'ASSISTENTE', 'TECNICO', 'OPCAMERA') )
);


/* TABELA 2 */
CREATE TABLE tecnico(
	cpf CHAR(14),
	especialidade VARCHAR(128) NOT NULL,
	CONSTRAINT pk_tecnico
		PRIMARY KEY (cpf),
	CONSTRAINT fk_tecnico
		FOREIGN KEY (cpf)
		REFERENCES funcionario
		ON DELETE CASCADE
);

/* TABELA 3 */
CREATE TABLE copiloto(
	cpf CHAR(14),
	habilitacao CHAR(12) NOT NULL, /* Exemplo: PP-224511425 (anac) */
	CONSTRAINT pk_copiloto
		PRIMARY KEY(cpf),
	CONSTRAINT un_copiloto
		UNIQUE (habilitacao),
	CONSTRAINT fk_copiloto
		FOREIGN KEY (cpf)
		REFERENCES funcionario
		ON DELETE CASCADE
);

/* TABELA 4 */
CREATE TABLE piloto(
	cpf CHAR(14),
	habilitacao CHAR(12) NOT NULL, /* Exemplo: PP-224511425 (anac) */
	CONSTRAINT pk_piloto
		PRIMARY KEY(cpf),
	CONSTRAINT un_piloto
		UNIQUE (habilitacao),
	CONSTRAINT fk_piloto
		FOREIGN KEY (cpf)
		REFERENCES funcionario
		ON DELETE CASCADE
);

/* TABELA 5 */
CREATE TABLE assistente(
	cpf CHAR(14),
	CONSTRAINT pk_assistente
		PRIMARY KEY(cpf),
	CONSTRAINT fk_assistente
		FOREIGN KEY (cpf)
		REFERENCES funcionario
);

/* TABELA 6 */
CREATE TABLE opcamera (
	cpf CHAR(14),
	inicioCarreira DATE NOT NULL,
	CONSTRAINT pk_opcamera
		PRIMARY KEY (cpf),
	CONSTRAINT fk_opcamera
		FOREIGN KEY (cpf)
		REFERENCES funcionario
);




/* For debugging currently */
ROLLBACK;
