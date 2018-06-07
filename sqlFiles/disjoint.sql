/* 
	This script ensures disjoint at funcionario table.	
*/

/*
	First,

	Modify some constraints related to 
	the instances that will be deleted 
	(it will be reverted back at the end 
	of this script).
*/

ALTER TABLE auxilia DROP CONSTRAINT fk2_auxilia;
ALTER TABLE auxilia ADD CONSTRAINT fk2_auxilia
                FOREIGN KEY (cpfPiloto)
                REFERENCES piloto
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE auxilia DROP CONSTRAINT fk3_auxilia;
ALTER TABLE auxilia ADD CONSTRAINT fk3_auxilia
                FOREIGN KEY (cpfCopiloto)
                REFERENCES copiloto
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE opera DROP CONSTRAINT fk2_opera;
ALTER TABLE opera ADD CONSTRAINT fk2_opera
                FOREIGN KEY (cpfPiloto)
                REFERENCES piloto
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE opParque DROP CONSTRAINT fk4_opParque;
ALTER TABLE opParque ADD CONSTRAINT fk4_opParque
                FOREIGN KEY (cpfAssistente)
                REFERENCES assistente
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE opParque DROP CONSTRAINT fk1_opParque;
ALTER TABLE opParque ADD CONSTRAINT fk1_opParque
                FOREIGN KEY (cpfAssistente)
                REFERENCES assistente
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE opComCamera DROP CONSTRAINT fk_opComCamera;
ALTER TABLE opComCamera ADD CONSTRAINT fk_opComCamera
		FOREIGN KEY (cpfOpCamera)
		REFERENCES opCamera
		ON DELETE CASCADE; /* RESTRICT -> CASCADE */ 

ALTER TABLE fotografoCruzeiro DROP CONSTRAINT fk1_fotografoCruzeiro;
ALTER TABLE fotografoCruzeiro ADD CONSTRAINT fk1_fotografoCruzeiro
		FOREIGN KEY (cpfOpCamera, data)
		REFERENCES opComCamera
		ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE cinegrafistaCruzeiro DROP CONSTRAINT fk1_cinegrafistaCruzeiro;
ALTER TABLE cinegrafistaCruzeiro ADD CONSTRAINT fk1_cinegrafistaCruzeiro
		FOREIGN KEY (cpfOpCamera, data)
		REFERENCES opComCamera
		ON DELETE CASCADE; /* RESTRICT -> CASCADE */ 

ALTER TABLE opParque DROP CONSTRAINT fk1_opParque;
ALTER TABLE opParque ADD CONSTRAINT fk1_opParque
                FOREIGN KEY (cpfOpCamera, data)
                REFERENCES opComCamera
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */


ALTER TABLE manutencao DROP CONSTRAINT fk1_manutencao;
ALTER TABLE manutencao ADD CONSTRAINT fk1_manutencao
                FOREIGN KEY (cpfTecnico)
                REFERENCES tecnico
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE showsonorizacao DROP CONSTRAINT fk2_showsonorizacao;
ALTER TABLE showsonorizacao ADD CONSTRAINT fk2_showsonorizacao
                FOREIGN KEY (sonorizacaoid)
                REFERENCES sonorizacao
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE pontosom DROP CONSTRAINT fk1_pontosom;
ALTER TABLE pontosom ADD CONSTRAINT fk1_pontosom
                FOREIGN KEY (idsonorizacao)
                REFERENCES sonorizacao
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE cameraaerea DROP CONSTRAINT fk2_cameraaerea;
ALTER TABLE cameraaerea ADD CONSTRAINT fk2_cameraaerea
                FOREIGN KEY (drone)
                REFERENCES drone
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE registros DROP CONSTRAINT fk_registros;
ALTER TABLE registros ADD CONSTRAINT fk_registros
                FOREIGN KEY (iddrone)
                REFERENCES drone
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE pontoestrutura DROP CONSTRAINT fk1_pontoestrutura;
ALTER TABLE pontoestrutura ADD CONSTRAINT fk1_pontoestrutura
                FOREIGN KEY (idestruturacao)
                REFERENCES estruturacao
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE pontocamera DROP CONSTRAINT fk1_pontocamera;
ALTER TABLE pontocamera ADD CONSTRAINT fk1_pontocamera
                FOREIGN KEY (idcamera)
                REFERENCES camera
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE opparque DROP CONSTRAINT fk2_opparque;
ALTER TABLE opparque ADD CONSTRAINT fk2_opparque
                FOREIGN KEY (idcamerasecundaria)
                REFERENCES camera
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

ALTER TABLE cameraaerea DROP CONSTRAINT fk1_cameraaerea;
ALTER TABLE cameraaerea ADD CONSTRAINT fk1_cameraaerea
                FOREIGN KEY (camera)
                REFERENCES camera
                ON DELETE CASCADE; /* RESTRICT -> CASCADE */

/*
	Now, 

	Effectively delete instances
*/

/* Mantém somente os copilotos na tabela de Copilotos */
DELETE FROM copiloto WHERE cpf IN 
	(SELECT C.cpf FROM copiloto C, 
		funcionario F WHERE C.cpf = F.cpf AND 
		F.cargo <> 'COPILOTO');

/* Mantém somente os pilotos na tabela de pilotos */
DELETE FROM piloto WHERE cpf IN 
	(SELECT P.cpf FROM piloto P, 
		funcionario F WHERE P.cpf = F.cpf AND 
		F.cargo <> 'PILOTO');

/* Mantém somente os assistentes na tabela de assistentes */
DELETE FROM assistente WHERE cpf IN 
	(SELECT A.cpf FROM assistente A, 
		funcionario F WHERE A.cpf = F.cpf AND 
		F.cargo <> 'ASSISTENTE');

/* Mantém somente os op. de camera na tabela de opCamera */
DELETE FROM opCamera WHERE cpf IN 
	(SELECT O.cpf FROM opCamera O, 
		funcionario F WHERE O.cpf = F.cpf AND 
		F.cargo <> 'OPCAMERA');

/* Mantém somente os tecnicos na tabela de tecnicos */
DELETE FROM tecnico WHERE cpf IN 
	(SELECT T.cpf FROM tecnico T, 
		funcionario F WHERE T.cpf = F.cpf AND 
		F.cargo <> 'TECNICO');


/* Mantém somente SONORIZACAO na tabela de sonorizacao */
DELETE FROM sonorizacao WHERE id IN 
	(SELECT S.id FROM sonorizacao S, 
		equipamento E WHERE E.id = S.id AND 
		E.tipo <> 'SONORIZACAO');

/* Mantém somente DRONE na tabela de drone */
DELETE FROM drone WHERE id IN 
	(SELECT D.id FROM drone D, 
		equipamento E WHERE E.id = D.id AND 
		E.tipo <> 'DRONE');

/* Mantém somente ESTRUTURACAO na tabela de estruturacao */
DELETE FROM estruturacao WHERE id IN 
	(SELECT S.id FROM estruturacao S, 
		equipamento E WHERE E.id = S.id AND 
		E.tipo <> 'ESTRUTURACAO');

/* Mantém somente CAMERA na tabela de camera */
DELETE FROM camera WHERE id IN 
	(SELECT C.id FROM camera C, 
		equipamento E WHERE E.id = C.id AND 
		E.tipo <> 'CAMERA');

/* 
	Finally, 
	
	Turn back modified constraints back to
	its original form 
*/
ALTER TABLE pontocamera DROP CONSTRAINT fk1_pontocamera;
ALTER TABLE pontocamera ADD CONSTRAINT fk1_pontocamera
                FOREIGN KEY (idcamera)
                REFERENCES camera
                ON DELETE RESTRICT; 

ALTER TABLE opparque DROP CONSTRAINT fk2_opparque;
ALTER TABLE opparque ADD CONSTRAINT fk2_opparque
                FOREIGN KEY (idcamerasecundaria)
                REFERENCES camera
                ON DELETE RESTRICT; 

ALTER TABLE cameraaerea DROP CONSTRAINT fk1_cameraaerea;
ALTER TABLE cameraaerea ADD CONSTRAINT fk1_cameraaerea
                FOREIGN KEY (camera)
                REFERENCES camera
                ON DELETE RESTRICT; 

ALTER TABLE pontoestrutura DROP CONSTRAINT fk1_pontoestrutura;
ALTER TABLE pontoestrutura ADD CONSTRAINT fk1_pontoestrutura
                FOREIGN KEY (idestruturacao)
                REFERENCES estruturacao
                ON DELETE RESTRICT; 

ALTER TABLE cameraaerea DROP CONSTRAINT fk2_cameraaerea;
ALTER TABLE cameraaerea ADD CONSTRAINT fk2_cameraaerea
                FOREIGN KEY (drone)
                REFERENCES drone
                ON DELETE RESTRICT; 

ALTER TABLE registros DROP CONSTRAINT fk_registros;
ALTER TABLE registros ADD CONSTRAINT fk_registros
                FOREIGN KEY (iddrone)
                REFERENCES drone
                ON DELETE RESTRICT; 

ALTER TABLE pontosom DROP CONSTRAINT fk1_pontosom;
ALTER TABLE pontosom ADD CONSTRAINT fk1_pontosom
                FOREIGN KEY (idsonorizacao)
                REFERENCES sonorizacao
                ON DELETE RESTRICT;

ALTER TABLE showsonorizacao DROP CONSTRAINT fk2_showsonorizacao;
ALTER TABLE showsonorizacao ADD CONSTRAINT fk2_showsonorizacao
                FOREIGN KEY (sonorizacaoid)
                REFERENCES sonorizacao
                ON DELETE RESTRICT;

ALTER TABLE auxilia DROP CONSTRAINT fk2_auxilia;
ALTER TABLE auxilia ADD CONSTRAINT fk2_auxilia
                FOREIGN KEY (cpfPiloto)
                REFERENCES piloto
                ON DELETE RESTRICT;

ALTER TABLE auxilia DROP CONSTRAINT fk3_auxilia;
ALTER TABLE auxilia ADD CONSTRAINT fk3_auxilia
                FOREIGN KEY (cpfCopiloto)
                REFERENCES copiloto
                ON DELETE RESTRICT;

ALTER TABLE opera DROP CONSTRAINT fk2_opera;
ALTER TABLE opera ADD CONSTRAINT fk2_opera
                FOREIGN KEY (cpfPiloto)
                REFERENCES piloto
                ON DELETE RESTRICT;

ALTER TABLE opParque DROP CONSTRAINT fk4_opParque;
ALTER TABLE opParque ADD CONSTRAINT fk4_opParque
                FOREIGN KEY (cpfAssistente)
                REFERENCES assistente
                ON DELETE RESTRICT;

ALTER TABLE opComCamera DROP CONSTRAINT fk_opComCamera;
ALTER TABLE opComCamera ADD CONSTRAINT fk_opComCamera
		FOREIGN KEY (cpfOpCamera)
		REFERENCES opCamera
		ON DELETE RESTRICT; 

ALTER TABLE fotografoCruzeiro DROP CONSTRAINT fk1_fotografoCruzeiro;
ALTER TABLE fotografoCruzeiro ADD CONSTRAINT fk1_fotografoCruzeiro
		FOREIGN KEY (cpfOpCamera, data)
		REFERENCES opComCamera
		ON DELETE RESTRICT;

ALTER TABLE cinegrafistaCruzeiro DROP CONSTRAINT fk1_cinegrafistaCruzeiro;
ALTER TABLE cinegrafistaCruzeiro ADD CONSTRAINT fk1_cinegrafistaCruzeiro
		FOREIGN KEY (cpfOpCamera, data)
		REFERENCES opComCamera
		ON DELETE RESTRICT;

ALTER TABLE opParque DROP CONSTRAINT fk1_opParque;
ALTER TABLE opParque ADD CONSTRAINT fk1_opParque
                FOREIGN KEY (cpfOpCamera, data)
                REFERENCES opComCamera
                ON DELETE RESTRICT;

ALTER TABLE manutencao DROP CONSTRAINT fk1_manutencao;
ALTER TABLE manutencao ADD CONSTRAINT fk1_manutencao
                FOREIGN KEY (cpfTecnico)
                REFERENCES tecnico
                ON DELETE RESTRICT;
