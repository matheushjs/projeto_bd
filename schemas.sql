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
		CHECK ( cpf ~ '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}$' ),
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


/* TABELA 7 */
CREATE TABLE equipamento (
	id BIGSERIAL,
	modelo VARCHAR(64) NOT NULL,
	nome VARCHAR(128) NOT NULL,
	quantidade INTEGER NOT NULL,
	marca VARCHAR(32),
	descricao VARCHAR,
	tipo CHAR(12) NOT NULL,
	CONSTRAINT pk_equipamento
		PRIMARY KEY(id),
	CONSTRAINT un_equipamento
		UNIQUE (modelo, nome),
	CONSTRAINT ck_equipamento
		CHECK ( upper(tipo) IN ('DRONE', 'CAMERA', 'ESTRUTURACAO', 'SONORIZACAO') )
);

/* TABELA 8 */
CREATE TABLE estruturacao (
	id BIGINT,
	CONSTRAINT pk_estruturacao
		PRIMARY KEY (id),
	CONSTRAINT fk_estruturacao
		FOREIGN KEY (id)
		REFERENCES equipamento
);

/* TABELA 9 */
CREATE TABLE drone (
	id BIGINT,
	fonteAlimentacao VARCHAR(64),
	tempoMaxVoo INTEGER, /* em minutos */
	alcanceRemoto INTEGER, /* em metros */
	CONSTRAINT pk_drone
		PRIMARY KEY (id),
	CONSTRAINT fk_drone
		FOREIGN KEY (id)
		REFERENCES equipamento
);

/* TABELA 10 */
CREATE TABLE sonorizacao (
	id BIGINT,
	potencia INTEGER, /* em watts */
	posseEise BOOLEAN NOT NULL,
	CONSTRAINT pk_sonorizacao
		PRIMARY KEY (id),
	CONSTRAINT fk_sonorizacao
		FOREIGN KEY (id)
		REFERENCES equipamento
);

/* TABELA 11 */
CREATE TABLE camera (
	id BIGINT,
	fonteAlimentacao VARCHAR(64),
	certificacaoIP VARCHAR(6), /* Pode ser: IP29K, IP291K, IP29 */
	resistenteQueda BOOLEAN DEFAULT FALSE,
	visaoNoturna BOOLEAN DEFAULT FALSE,
	zoomLongoAlcance BOOLEAN DEFAULT FALSE,
	estabilizadorImagem BOOLEAN DEFAULT FALSE,
	conectividade VARCHAR(64),
	CONSTRAINT pk_camera
		PRIMARY KEY (id),
	CONSTRAINT fk_camera
		FOREIGN KEY (id)
		REFERENCES equipamento,
	CONSTRAINT ck_camera
		/* Deve ter 2 ou 3 dígitos em sequencia e talvez terminar com uma letra */
		CHECK ( certificacaoIP ~ '^IP[0-9]{2,3}[a-zA-Z]{0,1}$' )
);

/* TABELA 12 */
CREATE TABLE registros (
	id BIGINT,
	registro CHAR(9), /* São 9 dígitos pela SISANT */ 
	CONSTRAINT pk_registros
		PRIMARY KEY (id),
	CONSTRAINT fk_registros
		FOREIGN KEY (id)
		REFERENCES drone
);

/* TABELA 13 */
CREATE TABLE cameraAerea (
	camera BIGINT,
	drone BIGINT,
	data DATE,
	quantidade INTEGER NOT NULL,
	CONSTRAINT pk_cameraAerea
		PRIMARY KEY (camera, drone, data),
	CONSTRAINT fk1_cameraAerea
		FOREIGN KEY (camera)
		REFERENCES camera,
	CONSTRAINT fk2_cameraAerea
		FOREIGN KEY (drone)
		REFERENCES drone
);

/* TABELA 14 */
CREATE TABLE musico (
	cpf CHAR(14),
	nome VARCHAR(128) NOT NULL,
	CONSTRAINT pk_musico
		PRIMARY KEY (cpf),
	CONSTRAINT ck1_musico
		CHECK ( cpf ~ '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}$' )
);

/* TABELA 15 */
CREATE TABLE banda (
	nome VARCHAR(64),
	dataCriacao DATE,
	estiloMusical VARCHAR(64),
	tipo CHAR(10),
	CONSTRAINT pk_banda
		PRIMARY KEY (nome, dataCriacao),
	CONSTRAINT ck_banda
		CHECK ( tipo IN ('PARTICULAR', 'CONTRATADA') )
);

/* TABELA 16 */
CREATE TABLE compoe (
	cpfMusico CHAR (14),
	nomeBanda VARCHAR(64),
	dataCriacaoBanda DATE,
	CONSTRAINT pk_compoe
		PRIMARY KEY (cpfMusico, nomeBanda, dataCriacaoBanda),
	CONSTRAINT fk1_compoe
		FOREIGN KEY (cpfMusico)
		REFERENCES musico,
	CONSTRAINT fk2_compoe
		FOREIGN KEY (nomeBanda, dataCriacaoBanda)
		REFERENCES banda
);



/* For debugging currently */
ROLLBACK;
