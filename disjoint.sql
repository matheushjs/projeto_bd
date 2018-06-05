/* 
	Make constraint modification necessary to 
	the instances deletion (it will be rever-
	sed back at the end of this script).

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
	(SELECT T.cpf FROM tecnicos T, 
		funcionario F WHERE T.cpf = F.cpf AND 
		F.cargo <> 'TECNICO');


/* Turn modified constraints back to original form */
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
