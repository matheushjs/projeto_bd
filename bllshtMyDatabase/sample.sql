/* TOTAL OF 0 ERRORS WHILE BUILDING METADATA STRUCTURE. */
BEGIN TRANSACTION;
/* TABLE funcionario */
INSERT INTO funcionario ( endereco, telefoneCsv, equipe, RG, cargo, cpf, nome )
	VALUES ( 'Recanto Juliana Dias, 92 Nova Cachoeirinha 97351066 Dias / AP', 'Atque doloribus atque aliquam ullam vitae cumque.Voluptas optio quas opt', 486290, 'Deleniti ea nesciunt om', 'COPILOTO', '397.887.342-08', 'Stephany Porto' );
INSERT INTO funcionario ( endereco, telefoneCsv, equipe, RG, cargo, cpf, nome )
	VALUES ( 'Setor Mariana Castro, 64 São Cristóvão 67198-653 Freitas / ES', 'Ratione placeat hic molestiae mollitia corporis. Nulla voluptatem vel ', 400121, 'Natus quae reiciendis. ', 'OPCAMERA', '546.280.699-75', 'Melissa Moura' );
INSERT INTO funcionario ( endereco, telefoneCsv, equipe, RG, cargo, cpf, nome )
	VALUES ( 'Lagoa Mirella Cardoso Santa Cruz 08333818 Silveira do Oeste / ES', 'Sit repellat voluptatem repellendus quasi. Earum nesciunt ipsam qu', 191442, 'Repellat fuga veli', 'OPCAMERA', '349.626.534-75', 'Letícia Freitas' );
INSERT INTO funcionario ( endereco, telefoneCsv, equipe, RG, cargo, cpf, nome )
	VALUES ( 'Viaduto Barbosa, 7 Nova Cachoeirinha 29998-962 Teixeira / SP', 'Ab sequi ullam sunt unde sint. Voluptatem vero id vero.Vero sapiente magnam commodi debitis rerum nisi. Quidem cum sequ', 116074, 'Nisi reiciend', 'PILOTO', '448.874.686-24', 'Srta. Carolina Sales' );
INSERT INTO funcionario ( endereco, telefoneCsv, equipe, RG, cargo, cpf, nome )
	VALUES ( 'Estação João Pedro Barbosa, 49 Vila Da Luz 70894-359 Mendes / AP', 'Earum dolorum accusantium id. Neque quidem itaque pariatur. Quod reiciendis provident blanditiis.Cupiditate impedit m', 481621, 'Neque ex id hic repelle', 'OPCAMERA', '582.810.697-48', 'Sr. Vitor Hugo Aragão' );
/* NULL INSERTION FOR ATTRIBUTE equipe AT TABLE funcionario  */
INSERT INTO funcionario ( endereco, telefoneCsv, equipe, RG, cargo, cpf, nome )
	VALUES ( 'Viela Teixeira, 272 Jardim América 28825612 Ramos de Rocha / RN', 'Nemo molestiae molestias voluptates nihil animi soluta. Maiores excepturi eos illum recusandae maiores. Nihil hic non', NULL, 'Unde nisi hic ', 'COPILOTO', '011.273.799-74', 'Ian Souza' );

/* TABLE tecnico */
INSERT INTO tecnico ( cpf, especialidade )
	VALUES ( '349.626.534-75', 'Nostrum nulla voluptatem rerum molestias pariatur. Nam placeat corporis consectetur repudiandae nulla eius.' );
INSERT INTO tecnico ( cpf, especialidade )
	VALUES ( '546.280.699-75', 'Et delectus repellendus esse cum asperiores. Dignissimos vitae nemo dignissimos odit ipsam.' );
INSERT INTO tecnico ( cpf, especialidade )
	VALUES ( '582.810.697-48', 'Voluptatum dolor hic ratione. Quidem aliquid asperiores facere dolorum reiciendis. Placeat dignissimos iust' );
INSERT INTO tecnico ( cpf, especialidade )
	VALUES ( '448.874.686-24', 'Necessitatibus non ex. Deserunt harum rerum sunt. Cum totam explicab' );
INSERT INTO tecnico ( cpf, especialidade )
	VALUES ( '397.887.342-08', 'Provident cumque aperiam quod quos. Incidunt dolores quibusdam minus' );

/* TABLE copiloto */
INSERT INTO copiloto ( habilitacao, cpf )
	VALUES ( 'Est dolore r', '349.626.534-75' );
INSERT INTO copiloto ( habilitacao, cpf )
	VALUES ( 'Laudantium b', '582.810.697-48' );
INSERT INTO copiloto ( habilitacao, cpf )
	VALUES ( 'Nulla laboru', '448.874.686-24' );
INSERT INTO copiloto ( habilitacao, cpf )
	VALUES ( 'Ad dignissim', '397.887.342-08' );
INSERT INTO copiloto ( habilitacao, cpf )
	VALUES ( 'Officia inve', '546.280.699-75' );

/* TABLE piloto */
INSERT INTO piloto ( habilitacao, cpf )
	VALUES ( 'Rerum vero p', '448.874.686-24' );
INSERT INTO piloto ( habilitacao, cpf )
	VALUES ( 'Incidunt qui', '546.280.699-75' );
INSERT INTO piloto ( habilitacao, cpf )
	VALUES ( 'Et repudiand', '582.810.697-48' );
INSERT INTO piloto ( habilitacao, cpf )
	VALUES ( 'Nisi alias s', '349.626.534-75' );
INSERT INTO piloto ( habilitacao, cpf )
	VALUES ( 'Non quod fug', '397.887.342-08' );

/* TABLE assistente */
INSERT INTO assistente ( cpf )
	VALUES ( '448.874.686-24' );
INSERT INTO assistente ( cpf )
	VALUES ( '582.810.697-48' );
INSERT INTO assistente ( cpf )
	VALUES ( '397.887.342-08' );
INSERT INTO assistente ( cpf )
	VALUES ( '546.280.699-75' );
INSERT INTO assistente ( cpf )
	VALUES ( '349.626.534-75' );

/* TABLE opCamera */
INSERT INTO opCamera ( inicioCarreira, cpf )
	VALUES ( to_date ('2001-11-11', 'YYYY-MM-DD'), '546.280.699-75' );
INSERT INTO opCamera ( inicioCarreira, cpf )
	VALUES ( to_date ('2009-04-05', 'YYYY-MM-DD'), '582.810.697-48' );
INSERT INTO opCamera ( inicioCarreira, cpf )
	VALUES ( to_date ('2003-08-21', 'YYYY-MM-DD'), '349.626.534-75' );
INSERT INTO opCamera ( inicioCarreira, cpf )
	VALUES ( to_date ('2015-11-29', 'YYYY-MM-DD'), '448.874.686-24' );
INSERT INTO opCamera ( inicioCarreira, cpf )
	VALUES ( to_date ('2006-10-12', 'YYYY-MM-DD'), '397.887.342-08' );

/* TABLE equipamento */
INSERT INTO equipamento ( quantidade, descricao, tipo, modelo, marca, nome )
	VALUES ( 232219, 'Provident atque id repellat dolore aliquam. Consequatur error sequi sapiente amet aperiam quo', 'DRONE', 'Voluptatibus voluptate dicta. Dignissimos architecto aliquid ', 'Fuga ea reprehender', 'Melissa Freitas' );
INSERT INTO equipamento ( quantidade, descricao, tipo, modelo, marca, nome )
	VALUES ( 706610, 'Qui excepturi beatae eveniet quos quod. Sit quas ipsum ipsum quasi temporibus fugiat. Nesciunt dolorum expedita tempora nihil esse', 'ESTRUTURACAO', 'Cumque odit a at quasi deleniti.Earum a aut. At tempora de', 'Occaecati porro et', 'Isadora Jesus' );
INSERT INTO equipamento ( quantidade, descricao, tipo, modelo, marca, nome )
	VALUES ( 129497, 'Molestiae a tempore dicta ad quidem modi. Odio tempore vitae enim nesciunt. Eligendi labore expedita labore nemo corrupti hic corporis', 'SONORIZACAO', 'Libero qui quaerat commodi quibusdam. Aut r', 'Doloremque nostrum pe', 'João Gabriel Carvalho' );
INSERT INTO equipamento ( quantidade, descricao, tipo, modelo, marca, nome )
	VALUES ( 266272, 'Hic reprehenderit ratione soluta ducimus minus. Nihil vel culpa dolores illum autem sequi. Provident modi eveniet architecto voluptas. Quas voluptas numquam esse', 'ESTRUTURACAO', 'Illum ea magnam sit cupiditate ipsam unde. Accusantium ex hic', 'Numquam dolorem reiciendis nec', 'Danilo da Mota' );
INSERT INTO equipamento ( quantidade, descricao, tipo, modelo, marca, nome )
	VALUES ( 589471, 'Cum dolorum maiores necessitatibus doloribus consequuntur. Nemo similique harum ducimus facere tempore', 'ESTRUTURACAO', 'Neque optio expedita quod perspiciatis possimus delec', 'Quibusdam reprehen', 'Esther Alves' );
/* NULL INSERTION FOR ATTRIBUTE descricao AT TABLE equipamento  */
INSERT INTO equipamento ( quantidade, descricao, tipo, modelo, marca, nome )
	VALUES ( 770754, NULL, 'CAMERA', 'Placeat iusto repellendus in. Natus distinctio magna', 'Debitis et placeat maxime ea c', 'Thiago Barbosa' );
/* NULL INSERTION FOR ATTRIBUTE marca AT TABLE equipamento  */
INSERT INTO equipamento ( quantidade, descricao, tipo, modelo, marca, nome )
	VALUES ( 897330, 'Accusantium tempora ducimus ratione. Aspernatur omnis veniam voluptas impedit ducimus. Sit sit aliquam ipsa facere aliquam maiores. Architecto expedita voluptates temporibus earum libero', 'DRONE', 'Recusandae minus voluptatem. Perferendis ea molestiae na', NULL, 'Pietra da Cruz' );

/* TABLE estruturacao */
INSERT INTO estruturacao ( id )
	VALUES ( 2 );
INSERT INTO estruturacao ( id )
	VALUES ( 5 );
INSERT INTO estruturacao ( id )
	VALUES ( 4 );
INSERT INTO estruturacao ( id )
	VALUES ( 3 );
INSERT INTO estruturacao ( id )
	VALUES ( 1 );

/* TABLE drone */
INSERT INTO drone ( id, fonteAlimentacao, tempoMaxVoo, alcanceRemoto )
	VALUES ( 5, 'Aliquid eligendi cum distinctio. Repudiandae eos ', 174068, 264902 );
INSERT INTO drone ( id, fonteAlimentacao, tempoMaxVoo, alcanceRemoto )
	VALUES ( 2, 'Voluptas reprehenderit ab voluptas. Ne', 770787, 324102 );
INSERT INTO drone ( id, fonteAlimentacao, tempoMaxVoo, alcanceRemoto )
	VALUES ( 1, 'Ratione nesciunt omnis voluptate. Cumque officiis temp', 829605, 549542 );
INSERT INTO drone ( id, fonteAlimentacao, tempoMaxVoo, alcanceRemoto )
	VALUES ( 3, 'Odit aliquid laudantium placeat. N', 213866, 278326 );
INSERT INTO drone ( id, fonteAlimentacao, tempoMaxVoo, alcanceRemoto )
	VALUES ( 4, 'Laborum eum excepturi rem veniam dolores. Quaerat null', 259740, 222528 );
/* NULL INSERTION FOR ATTRIBUTE fonteAlimentacao AT TABLE drone  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE tempoMaxVoo AT TABLE drone  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE alcanceRemoto AT TABLE drone  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE sonorizacao */
INSERT INTO sonorizacao ( id, potencia, posseEise )
	VALUES ( 4, 135475, FALSE );
INSERT INTO sonorizacao ( id, potencia, posseEise )
	VALUES ( 2, 187252, TRUE );
INSERT INTO sonorizacao ( id, potencia, posseEise )
	VALUES ( 5, 548074, TRUE );
INSERT INTO sonorizacao ( id, potencia, posseEise )
	VALUES ( 1, 816655, TRUE );
INSERT INTO sonorizacao ( id, potencia, posseEise )
	VALUES ( 3, 128539, TRUE );
/* NULL INSERTION FOR ATTRIBUTE potencia AT TABLE sonorizacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE camera */
INSERT INTO camera ( zoomLongoAlcance, conectividade, resistenteQueda, id, fonteAlimentacao, certificacaoIP, visaoNoturna, estabilizadorImagem )
	VALUES ( TRUE, 'Nesciunt dicta cumque nemo expedita dolores consequ', FALSE, 1, 'Laborum facere quaerat recusandae laboriosa', 'IP21', FALSE, TRUE );
INSERT INTO camera ( zoomLongoAlcance, conectividade, resistenteQueda, id, fonteAlimentacao, certificacaoIP, visaoNoturna, estabilizadorImagem )
	VALUES ( FALSE, 'Dolore debitis hic veniam iusto. Nobis optio expedita ma', TRUE, 5, 'Sapiente est atque autem accusamus. Odio quis modi doloru', 'IP587', FALSE, TRUE );
INSERT INTO camera ( zoomLongoAlcance, conectividade, resistenteQueda, id, fonteAlimentacao, certificacaoIP, visaoNoturna, estabilizadorImagem )
	VALUES ( TRUE, 'A eos nihil quam voluptate ipsam consequuntur a. Ape', FALSE, 2, 'Minus esse pariatur repudiandae. Sequi praesentium consec', 'IP75', TRUE, FALSE );
INSERT INTO camera ( zoomLongoAlcance, conectividade, resistenteQueda, id, fonteAlimentacao, certificacaoIP, visaoNoturna, estabilizadorImagem )
	VALUES ( FALSE, 'Ipsam vero similique repudiandae amet. In', TRUE, 3, 'Sapiente unde est quas molestiae. Voluptate harum vitae alia', 'IP41', TRUE, FALSE );
INSERT INTO camera ( zoomLongoAlcance, conectividade, resistenteQueda, id, fonteAlimentacao, certificacaoIP, visaoNoturna, estabilizadorImagem )
	VALUES ( TRUE, 'Quam fugiat officiis nesciunt necessitat', FALSE, 4, 'Neque laborum numquam quaerat error rem. Ips', 'IP222', TRUE, TRUE );
/* NULL INSERTION FOR ATTRIBUTE zoomLongoAlcance AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE conectividade AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE resistenteQueda AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE fonteAlimentacao AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE certificacaoIP AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE visaoNoturna AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE estabilizadorImagem AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE registros */
INSERT INTO registros ( registro, idDrone )
	VALUES ( 'Odit illu', 2 );
INSERT INTO registros ( registro, idDrone )
	VALUES ( 'Sequi ita', 4 );
INSERT INTO registros ( registro, idDrone )
	VALUES ( 'Explicabo', 1 );
INSERT INTO registros ( registro, idDrone )
	VALUES ( 'Provident', 3 );
INSERT INTO registros ( registro, idDrone )
	VALUES ( 'Laboriosa', 5 );

/* TABLE cameraAerea */
INSERT INTO cameraAerea ( data, drone, quantidade, camera )
	VALUES ( to_date ('2008-10-03', 'YYYY-MM-DD'), 4, 774811, 4 );
INSERT INTO cameraAerea ( data, drone, quantidade, camera )
	VALUES ( to_date ('2005-09-26', 'YYYY-MM-DD'), 1, 628947, 1 );
INSERT INTO cameraAerea ( data, drone, quantidade, camera )
	VALUES ( to_date ('2016-03-02', 'YYYY-MM-DD'), 2, 540295, 3 );
INSERT INTO cameraAerea ( data, drone, quantidade, camera )
	VALUES ( to_date ('2005-08-15', 'YYYY-MM-DD'), 5, 713209, 5 );
INSERT INTO cameraAerea ( data, drone, quantidade, camera )
	VALUES ( to_date ('2008-04-30', 'YYYY-MM-DD'), 3, 102218, 2 );

/* TABLE musico */
INSERT INTO musico ( cpf, nome )
	VALUES ( '576.926.950-92', 'Lívia das Neves' );
INSERT INTO musico ( cpf, nome )
	VALUES ( '677.964.827-59', 'Nina Castro' );
INSERT INTO musico ( cpf, nome )
	VALUES ( '936.923.747-00', 'Otávio Lima' );
INSERT INTO musico ( cpf, nome )
	VALUES ( '882.302.318-00', 'Rafael Alves' );
INSERT INTO musico ( cpf, nome )
	VALUES ( '634.582.946-74', 'Sarah Alves' );

/* TABLE banda */
INSERT INTO banda ( dataCriacao, tipo, estiloMusical, nome )
	VALUES ( to_date ('2009-04-18', 'YYYY-MM-DD'), 'PARTICULAR', 'Placeat saepe quaerat. Cum suscipit consect', 'Srta. Elisa Almeida' );
INSERT INTO banda ( dataCriacao, tipo, estiloMusical, nome )
	VALUES ( to_date ('2009-02-06', 'YYYY-MM-DD'), 'PARTICULAR', 'Voluptates odio consequatur error ipsa r', 'Srta. Mirella Barros' );
INSERT INTO banda ( dataCriacao, tipo, estiloMusical, nome )
	VALUES ( to_date ('2012-07-11', 'YYYY-MM-DD'), 'PARTICULAR', 'Itaque quo et minus deserunt non. Laboriosam quae vo', 'Sr. Benjamin Nascimento' );
INSERT INTO banda ( dataCriacao, tipo, estiloMusical, nome )
	VALUES ( to_date ('2011-10-11', 'YYYY-MM-DD'), 'PARTICULAR', 'Deserunt et explicabo aliquid. Ullam r', 'Sophia Novaes' );
INSERT INTO banda ( dataCriacao, tipo, estiloMusical, nome )
	VALUES ( to_date ('2002-11-24', 'YYYY-MM-DD'), 'CONTRATADA', 'Consequatur architecto repudiandae voluptat', 'Sr. Danilo Fogaça' );
/* NULL INSERTION FOR ATTRIBUTE estiloMusical AT TABLE banda  */
INSERT INTO banda ( dataCriacao, tipo, estiloMusical, nome )
	VALUES ( to_date ('2009-02-12', 'YYYY-MM-DD'), 'PARTICULAR', NULL, 'Luiz Gustavo Costa' );

/* TABLE compoe */
INSERT INTO compoe ( dataCriacaoBanda, cpfMusico, nomeBanda )
	VALUES ( to_date ('2009-02-06', 'YYYY-MM-DD'), '936.923.747-00', 'Srta. Mirella Barros' );
INSERT INTO compoe ( dataCriacaoBanda, cpfMusico, nomeBanda )
	VALUES ( to_date ('2011-10-11', 'YYYY-MM-DD'), '677.964.827-59', 'Sophia Novaes' );
INSERT INTO compoe ( dataCriacaoBanda, cpfMusico, nomeBanda )
	VALUES ( to_date ('2009-04-18', 'YYYY-MM-DD'), '576.926.950-92', 'Srta. Elisa Almeida' );
INSERT INTO compoe ( dataCriacaoBanda, cpfMusico, nomeBanda )
	VALUES ( to_date ('2012-07-11', 'YYYY-MM-DD'), '882.302.318-00', 'Sr. Benjamin Nascimento' );
INSERT INTO compoe ( dataCriacaoBanda, cpfMusico, nomeBanda )
	VALUES ( to_date ('2002-11-24', 'YYYY-MM-DD'), '634.582.946-74', 'Sr. Danilo Fogaça' );

/* TABLE festaNoCruzeiro */
INSERT INTO festaNoCruzeiro ( numeroConvidados, dataFim, IMO, dataInicio, nome )
	VALUES ( 569390, to_date ('2007-11-05', 'YYYY-MM-DD'), 150671, to_date ('2002-02-11', 'YYYY-MM-DD'), 'Maria Clara Azevedo' );
INSERT INTO festaNoCruzeiro ( numeroConvidados, dataFim, IMO, dataInicio, nome )
	VALUES ( 750191, to_date ('2015-11-24', 'YYYY-MM-DD'), 209828, to_date ('2009-05-18', 'YYYY-MM-DD'), 'Breno Mendes' );
INSERT INTO festaNoCruzeiro ( numeroConvidados, dataFim, IMO, dataInicio, nome )
	VALUES ( 861016, to_date ('2001-07-10', 'YYYY-MM-DD'), 657321, to_date ('2005-05-09', 'YYYY-MM-DD'), 'Breno Duarte' );
INSERT INTO festaNoCruzeiro ( numeroConvidados, dataFim, IMO, dataInicio, nome )
	VALUES ( 187431, to_date ('2001-05-20', 'YYYY-MM-DD'), 873155, to_date ('2007-11-01', 'YYYY-MM-DD'), 'Dr. Diego Barros' );
INSERT INTO festaNoCruzeiro ( numeroConvidados, dataFim, IMO, dataInicio, nome )
	VALUES ( 178600, to_date ('2015-02-18', 'YYYY-MM-DD'), 452735, to_date ('2010-08-11', 'YYYY-MM-DD'), 'Ana das Neves' );
/* NULL INSERTION FOR ATTRIBUTE numeroConvidados AT TABLE festaNoCruzeiro  */
INSERT INTO festaNoCruzeiro ( numeroConvidados, dataFim, IMO, dataInicio, nome )
	VALUES ( NULL, to_date ('2006-02-03', 'YYYY-MM-DD'), 631954, to_date ('2015-11-09', 'YYYY-MM-DD'), 'Bianca Barbosa' );
/* NULL INSERTION FOR ATTRIBUTE dataFim AT TABLE festaNoCruzeiro  */
INSERT INTO festaNoCruzeiro ( numeroConvidados, dataFim, IMO, dataInicio, nome )
	VALUES ( 747269, NULL, 623647, to_date ('2012-07-22', 'YYYY-MM-DD'), 'Pietro da Luz' );

/* TABLE locaisCruzeiro */
INSERT INTO locaisCruzeiro ( dataFesta, local, IMO )
	VALUES ( to_date ('2007-11-01', 'YYYY-MM-DD'), 'Molestias libero perferendis cumque quaerat. Assumenda consequuntur doloremque mol', 873155 );
INSERT INTO locaisCruzeiro ( dataFesta, local, IMO )
	VALUES ( to_date ('2002-02-11', 'YYYY-MM-DD'), 'Qui cumque officiis. Alias nam voluptatem fuga consectetur dolores libero. Reiciendis quae voluptates solut', 150671 );
INSERT INTO locaisCruzeiro ( dataFesta, local, IMO )
	VALUES ( to_date ('2009-05-18', 'YYYY-MM-DD'), 'Sapiente corporis expedita. Doloremque facere ullam beatae voluptatem temporibus temporibus voluptatum.Vero ne', 209828 );
INSERT INTO locaisCruzeiro ( dataFesta, local, IMO )
	VALUES ( to_date ('2005-05-09', 'YYYY-MM-DD'), 'Ab quas occaecati minima magni voluptatibus facere. Quibusdam aliquam consequuntur alias.Quasi corporis iusto mag', 657321 );
INSERT INTO locaisCruzeiro ( dataFesta, local, IMO )
	VALUES ( to_date ('2010-08-11', 'YYYY-MM-DD'), 'Rerum quia aut voluptatum dolor sequi.Dolorem maiores ut dolorum. Minima eius sint hic ipsum asperiores magni enim.', 452735 );
/* NULL INSERTION FOR ATTRIBUTE local AT TABLE locaisCruzeiro  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE show */
INSERT INTO show ( data, horaInicio, dataCriacaoBanda, terminoPrevisto, dataFesta, nomeBanda, contrato, IMO )
	VALUES ( to_date ('2005-05-13', 'YYYY-MM-DD'), '03:23:52', to_date ('2009-04-18', 'YYYY-MM-DD'), to_timestamp ('2012-07-28 04:10:20', 'YYYY-MM-DD HH24:MI:SS'), to_date ('2007-11-01', 'YYYY-MM-DD'), 'Srta. Elisa Almeida', 'Aperiam voluptatibus rem laborum provident qui saepe.Nemo d', 873155 );
INSERT INTO show ( data, horaInicio, dataCriacaoBanda, terminoPrevisto, dataFesta, nomeBanda, contrato, IMO )
	VALUES ( to_date ('2004-03-12', 'YYYY-MM-DD'), '21:22:23', to_date ('2012-07-11', 'YYYY-MM-DD'), to_timestamp ('2014-06-01 17:06:15', 'YYYY-MM-DD HH24:MI:SS'), to_date ('2009-05-18', 'YYYY-MM-DD'), 'Sr. Benjamin Nascimento', 'Dicta perferendis iure. Totam maiores ', 209828 );
INSERT INTO show ( data, horaInicio, dataCriacaoBanda, terminoPrevisto, dataFesta, nomeBanda, contrato, IMO )
	VALUES ( to_date ('2005-04-10', 'YYYY-MM-DD'), '19:50:06', to_date ('2009-02-06', 'YYYY-MM-DD'), to_timestamp ('2016-04-29 15:26:09', 'YYYY-MM-DD HH24:MI:SS'), to_date ('2005-05-09', 'YYYY-MM-DD'), 'Srta. Mirella Barros', 'Vel magni quam quo. Ab dignissimos non d', 657321 );
INSERT INTO show ( data, horaInicio, dataCriacaoBanda, terminoPrevisto, dataFesta, nomeBanda, contrato, IMO )
	VALUES ( to_date ('2015-07-22', 'YYYY-MM-DD'), '09:29:57', to_date ('2011-10-11', 'YYYY-MM-DD'), to_timestamp ('2017-05-18 08:07:10', 'YYYY-MM-DD HH24:MI:SS'), to_date ('2002-02-11', 'YYYY-MM-DD'), 'Sophia Novaes', 'Id neque quas maxime ab quia. Numqu', 150671 );
INSERT INTO show ( data, horaInicio, dataCriacaoBanda, terminoPrevisto, dataFesta, nomeBanda, contrato, IMO )
	VALUES ( to_date ('2011-05-20', 'YYYY-MM-DD'), '09:24:19', to_date ('2002-11-24', 'YYYY-MM-DD'), to_timestamp ('2010-11-02 20:29:27', 'YYYY-MM-DD HH24:MI:SS'), to_date ('2010-08-11', 'YYYY-MM-DD'), 'Sr. Danilo Fogaça', 'Cumque consectetur quasi deleniti.Te', 452735 );
/* NULL INSERTION FOR ATTRIBUTE terminoPrevisto AT TABLE show  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE contrato AT TABLE show  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE showSonorizacao */
INSERT INTO showSonorizacao ( showId, sonorizacaoId )
	VALUES ( 2, 3 );
INSERT INTO showSonorizacao ( showId, sonorizacaoId )
	VALUES ( 4, 4 );
INSERT INTO showSonorizacao ( showId, sonorizacaoId )
	VALUES ( 5, 1 );
INSERT INTO showSonorizacao ( showId, sonorizacaoId )
	VALUES ( 1, 5 );
INSERT INTO showSonorizacao ( showId, sonorizacaoId )
	VALUES ( 3, 2 );

/* TABLE album */
INSERT INTO album ( dataFesta, IMOFesta )
	VALUES ( to_date ('2009-05-18', 'YYYY-MM-DD'), 209828 );
INSERT INTO album ( dataFesta, IMOFesta )
	VALUES ( to_date ('2005-05-09', 'YYYY-MM-DD'), 657321 );
INSERT INTO album ( dataFesta, IMOFesta )
	VALUES ( to_date ('2007-11-01', 'YYYY-MM-DD'), 873155 );
INSERT INTO album ( dataFesta, IMOFesta )
	VALUES ( to_date ('2010-08-11', 'YYYY-MM-DD'), 452735 );
INSERT INTO album ( dataFesta, IMOFesta )
	VALUES ( to_date ('2002-02-11', 'YYYY-MM-DD'), 150671 );

/* TABLE makingof */
INSERT INTO makingof ( dataFesta, IMOFesta )
	VALUES ( to_date ('2007-11-01', 'YYYY-MM-DD'), 873155 );
INSERT INTO makingof ( dataFesta, IMOFesta )
	VALUES ( to_date ('2009-05-18', 'YYYY-MM-DD'), 209828 );
INSERT INTO makingof ( dataFesta, IMOFesta )
	VALUES ( to_date ('2010-08-11', 'YYYY-MM-DD'), 452735 );
INSERT INTO makingof ( dataFesta, IMOFesta )
	VALUES ( to_date ('2005-05-09', 'YYYY-MM-DD'), 657321 );
INSERT INTO makingof ( dataFesta, IMOFesta )
	VALUES ( to_date ('2002-02-11', 'YYYY-MM-DD'), 150671 );

/* TABLE opComCamera */
INSERT INTO opComCamera ( data, cpfOpCamera, camera, tipo )
	VALUES ( to_date ('2001-01-24', 'YYYY-MM-DD'), '448.874.686-24', 62808917, 'PARQUE' );
INSERT INTO opComCamera ( data, cpfOpCamera, camera, tipo )
	VALUES ( to_date ('2007-02-15', 'YYYY-MM-DD'), '582.810.697-48', 49108121, 'FOTOGRAFO' );
INSERT INTO opComCamera ( data, cpfOpCamera, camera, tipo )
	VALUES ( to_date ('2001-11-18', 'YYYY-MM-DD'), '397.887.342-08', 39865258, 'FOTOGRAFO' );
INSERT INTO opComCamera ( data, cpfOpCamera, camera, tipo )
	VALUES ( to_date ('2004-02-09', 'YYYY-MM-DD'), '349.626.534-75', 40051604, 'PARQUE' );
INSERT INTO opComCamera ( data, cpfOpCamera, camera, tipo )
	VALUES ( to_date ('2012-01-10', 'YYYY-MM-DD'), '546.280.699-75', 40690360, 'CINEGRAFISTA' );

/* TABLE fotografoCruzeiro */
INSERT INTO fotografoCruzeiro ( data, categoria, cpfOpCamera, idAlbum )
	VALUES ( to_date ('2012-01-10', 'YYYY-MM-DD'), 'JUNIOR', '546.280.699-75', 2 );
INSERT INTO fotografoCruzeiro ( data, categoria, cpfOpCamera, idAlbum )
	VALUES ( to_date ('2001-11-18', 'YYYY-MM-DD'), 'ESPECIALISTA', '397.887.342-08', 1 );
INSERT INTO fotografoCruzeiro ( data, categoria, cpfOpCamera, idAlbum )
	VALUES ( to_date ('2004-02-09', 'YYYY-MM-DD'), 'JUNIOR', '349.626.534-75', 5 );
INSERT INTO fotografoCruzeiro ( data, categoria, cpfOpCamera, idAlbum )
	VALUES ( to_date ('2001-01-24', 'YYYY-MM-DD'), 'ESPECIALISTA', '448.874.686-24', 3 );
INSERT INTO fotografoCruzeiro ( data, categoria, cpfOpCamera, idAlbum )
	VALUES ( to_date ('2007-02-15', 'YYYY-MM-DD'), 'ESPECIALISTA', '582.810.697-48', 4 );

/* TABLE cinegrafistaCruzeiro */
INSERT INTO cinegrafistaCruzeiro ( data, cpfOpCamera, idMakingof )
	VALUES ( to_date ('2001-01-24', 'YYYY-MM-DD'), '448.874.686-24', 4 );
INSERT INTO cinegrafistaCruzeiro ( data, cpfOpCamera, idMakingof )
	VALUES ( to_date ('2012-01-10', 'YYYY-MM-DD'), '546.280.699-75', 1 );
INSERT INTO cinegrafistaCruzeiro ( data, cpfOpCamera, idMakingof )
	VALUES ( to_date ('2007-02-15', 'YYYY-MM-DD'), '582.810.697-48', 5 );
INSERT INTO cinegrafistaCruzeiro ( data, cpfOpCamera, idMakingof )
	VALUES ( to_date ('2004-02-09', 'YYYY-MM-DD'), '349.626.534-75', 3 );
INSERT INTO cinegrafistaCruzeiro ( data, cpfOpCamera, idMakingof )
	VALUES ( to_date ('2001-11-18', 'YYYY-MM-DD'), '397.887.342-08', 2 );

/* TABLE parque */
INSERT INTO parque ( endereco, cnpj, mapaFilePath, nome )
	VALUES ( 'Residencial Yasmin da Luz, 51 Vila Ipiranga 48341-004 Moreira / ES', '46.849.671/2458-94', 'Vel dicta eaque inventore. Quidem quaerat placeat nisi illum eligendi laboriosam. Voluptatum quaerat fugit.', 'Agatha Vieira' );
INSERT INTO parque ( endereco, cnpj, mapaFilePath, nome )
	VALUES ( 'Campo Laura Martins, 91 Vila Ipiranga 94803798 Silveira / AL', '55.798.212/7980-01', 'Ex sapiente dicta facere placeat odit. Animi officiis nihil doloremque. Dolor nam consequatur vitae minima.Nulla natus fuga qu', 'Miguel Ramos' );
INSERT INTO parque ( endereco, cnpj, mapaFilePath, nome )
	VALUES ( 'Via Cardoso,, 65 Providencia 86805073 Rezende / PE', '64.778.711/4028-81', 'Quasi dignissimos laborum voluptatum. Nobis accusantium iure explicabo eligendi. Architecto possimus recusandae dolorem mo', 'Lara Melo' );
INSERT INTO parque ( endereco, cnpj, mapaFilePath, nome )
	VALUES ( 'Avenida de Gomes, 7 Álvaro Camargos 58703671 Moura de Gonçalves / CE', '49.507.621/8064-29', 'Omnis perferendis illo deleniti rem maiores neque iusto. Tempore saepe error velit ad modi commodi. Et li', 'Henrique Barros' );
INSERT INTO parque ( endereco, cnpj, mapaFilePath, nome )
	VALUES ( 'Residencial Stella Alves, 33 Capitão Eduardo 78213278 Silva Alegre / MS', '84.681.391/5780-60', 'Quisquam amet sed aut. Deleniti neque voluptatem.Quam distinctio voluptatem nihil. Quae perferendis aspernatur harum s', 'Brenda Teixeira' );

/* TABLE festaNoParque */
INSERT INTO festaNoParque ( numeroConvidados, dataFim, nome, dataInicio, cnpjParque )
	VALUES ( 126792, to_date ('2012-09-14', 'YYYY-MM-DD'), 'João Gabriel Correia', to_date ('2014-04-26', 'YYYY-MM-DD'), '55.798.212/7980-01' );
INSERT INTO festaNoParque ( numeroConvidados, dataFim, nome, dataInicio, cnpjParque )
	VALUES ( 187215, to_date ('2005-09-18', 'YYYY-MM-DD'), 'Alana Pereira', to_date ('2005-03-11', 'YYYY-MM-DD'), '64.778.711/4028-81' );
INSERT INTO festaNoParque ( numeroConvidados, dataFim, nome, dataInicio, cnpjParque )
	VALUES ( 165021, to_date ('2002-03-27', 'YYYY-MM-DD'), 'Lorenzo Moraes', to_date ('2015-01-28', 'YYYY-MM-DD'), '46.849.671/2458-94' );
INSERT INTO festaNoParque ( numeroConvidados, dataFim, nome, dataInicio, cnpjParque )
	VALUES ( 664446, to_date ('2006-09-22', 'YYYY-MM-DD'), 'Carolina Almeida', to_date ('2015-09-14', 'YYYY-MM-DD'), '84.681.391/5780-60' );
INSERT INTO festaNoParque ( numeroConvidados, dataFim, nome, dataInicio, cnpjParque )
	VALUES ( 329254, to_date ('2007-04-29', 'YYYY-MM-DD'), 'Erick Silveira', to_date ('2005-03-25', 'YYYY-MM-DD'), '49.507.621/8064-29' );
/* NULL INSERTION FOR ATTRIBUTE dataFim AT TABLE festaNoParque  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE atracao */
INSERT INTO atracao ( numero, dataFesta, nome, poligono, cnpjParque )
	VALUES ( 525594, to_date ('2005-03-11', 'YYYY-MM-DD'), 'Dra. Maria Nogueira', '{{390345, 663731, 236353}, {624472, 353372, 802762}, {730384, 720566, 348762}, {421002, 785813, 324075}, {806149, 502500, 500411}, {654172, 462963, 294551}, {303809, 161703, 640803}, {555287, 814241, 104455}, {783439, 259462, 484176}, {505789, 663622, 850702}}', '64.778.711/4028-81' );
INSERT INTO atracao ( numero, dataFesta, nome, poligono, cnpjParque )
	VALUES ( 681144, to_date ('2015-09-14', 'YYYY-MM-DD'), 'Eloah Silveira', '{{862062, 821956, 469767}, {510919, 716862, 567660}, {773232, 793397, 291191}, {406412, 508479, 408247}, {435175, 296918, 855568}, {851400, 425227, 848499}, {774906, 118048, 743402}, {578525, 466105, 873604}, {809947, 287378, 528392}, {251691, 605193, 303650}}', '84.681.391/5780-60' );
INSERT INTO atracao ( numero, dataFesta, nome, poligono, cnpjParque )
	VALUES ( 387014, to_date ('2014-04-26', 'YYYY-MM-DD'), 'Yago Moraes', '{{796542, 529529, 160291}, {857498, 384369, 319682}, {361999, 708382, 756042}, {412198, 320599, 616471}, {231227, 661422, 160381}, {464405, 389507, 373275}, {196339, 185666, 140079}, {756002, 214391, 269696}, {711342, 677562, 309656}, {574783, 827549, 346373}}', '55.798.212/7980-01' );
INSERT INTO atracao ( numero, dataFesta, nome, poligono, cnpjParque )
	VALUES ( 868146, to_date ('2015-01-28', 'YYYY-MM-DD'), 'Maria Fernanda Lima', '{{218952, 807026, 101413}, {531238, 751410, 141656}, {457129, 677689, 827869}, {247311, 646467, 451252}, {310914, 132544, 678316}, {813314, 318197, 685784}, {210795, 789687, 392457}, {764941, 332564, 753977}, {686948, 514049, 828804}, {787610, 474047, 103004}}', '46.849.671/2458-94' );
INSERT INTO atracao ( numero, dataFesta, nome, poligono, cnpjParque )
	VALUES ( 753974, to_date ('2005-03-25', 'YYYY-MM-DD'), 'Gabriel Gonçalves', '{{335419, 424281, 278560}, {435586, 422751, 573602}, {835031, 549601, 849353}, {559685, 295393, 437661}, {390262, 860375, 591637}, {414542, 799670, 567634}, {643140, 490581, 782824}, {793382, 881133, 342118}, {560264, 608609, 394494}, {583043, 557690, 853044}}', '49.507.621/8064-29' );

/* TABLE opParque */
INSERT INTO opParque ( data, dataInicioParque, cnpjParque, idCameraSecundaria, cpfOpCamera, cpfAssistente )
	VALUES ( to_date ('2012-01-10', 'YYYY-MM-DD'), to_date ('2014-04-26', 'YYYY-MM-DD'), '55.798.212/7980-01', 3, '546.280.699-75', '546.280.699-75' );
INSERT INTO opParque ( data, dataInicioParque, cnpjParque, idCameraSecundaria, cpfOpCamera, cpfAssistente )
	VALUES ( to_date ('2004-02-09', 'YYYY-MM-DD'), to_date ('2015-09-14', 'YYYY-MM-DD'), '84.681.391/5780-60', 5, '349.626.534-75', '582.810.697-48' );
INSERT INTO opParque ( data, dataInicioParque, cnpjParque, idCameraSecundaria, cpfOpCamera, cpfAssistente )
	VALUES ( to_date ('2001-11-18', 'YYYY-MM-DD'), to_date ('2015-01-28', 'YYYY-MM-DD'), '46.849.671/2458-94', 2, '397.887.342-08', '397.887.342-08' );
INSERT INTO opParque ( data, dataInicioParque, cnpjParque, idCameraSecundaria, cpfOpCamera, cpfAssistente )
	VALUES ( to_date ('2007-02-15', 'YYYY-MM-DD'), to_date ('2005-03-11', 'YYYY-MM-DD'), '64.778.711/4028-81', 4, '582.810.697-48', '349.626.534-75' );
INSERT INTO opParque ( data, dataInicioParque, cnpjParque, idCameraSecundaria, cpfOpCamera, cpfAssistente )
	VALUES ( to_date ('2001-01-24', 'YYYY-MM-DD'), to_date ('2005-03-25', 'YYYY-MM-DD'), '49.507.621/8064-29', 1, '448.874.686-24', '448.874.686-24' );

/* TABLE pontoInstalacao */
INSERT INTO pontoInstalacao ( descricao, iluminacao, fonteAlimentacao, contatoAgua, conectividade, cnpjParque, coordenadas )
	VALUES ( 'Natus amet autem dolor quos. Deserunt pariatur eius pariatur distinctio enim id. Recusandae quaerat sequi voluptatum.', 'ALTA', 'Reprehenderit iusto unde t', FALSE, 'Ea laboriosam voluptate', '55.798.212/7980-01', '{746980, 379198, 608816}' );
INSERT INTO pontoInstalacao ( descricao, iluminacao, fonteAlimentacao, contatoAgua, conectividade, cnpjParque, coordenadas )
	VALUES ( 'Voluptatem ipsum aspernatur saepe neque quisquam. Praesentium dolorum quis temporibus doloremque. Laborum itaque fuga dolor.', 'ALTA', 'Sapiente dolore corrupti la', TRUE, 'Labore enim qui necessitat', '84.681.391/5780-60', '{343522, 269094, 706608}' );
INSERT INTO pontoInstalacao ( descricao, iluminacao, fonteAlimentacao, contatoAgua, conectividade, cnpjParque, coordenadas )
	VALUES ( 'Aut harum molestias. Dicta occaecati reiciendis. Eveniet alias eos repudiandae. Recusandae cumque maxime dolore cumque. Voluptat', 'ALTA', 'Vel repellat iste eos. Saepe ', TRUE, 'Ut quo numquam accusant', '64.778.711/4028-81', '{451400, 384980, 852394}' );
INSERT INTO pontoInstalacao ( descricao, iluminacao, fonteAlimentacao, contatoAgua, conectividade, cnpjParque, coordenadas )
	VALUES ( 'Accusantium ducimus quidem rem deserunt. Excepturi voluptatem eum mollitia.', 'MEDIA', 'Repellat distinct', FALSE, 'Corrupti voluptatum alia', '46.849.671/2458-94', '{595838, 449110, 444960}' );
INSERT INTO pontoInstalacao ( descricao, iluminacao, fonteAlimentacao, contatoAgua, conectividade, cnpjParque, coordenadas )
	VALUES ( 'Culpa et molestias sed. Facere sunt voluptatem cumque ipsum tenetur. Nihil eligendi accusamus error consectetur veniam tenetur. ', 'BAIXA', 'Eveniet voluptatum veritati', TRUE, 'Explicabo praesentium ut ev', '49.507.621/8064-29', '{214576, 877343, 809558}' );
/* NULL INSERTION FOR ATTRIBUTE descricao AT TABLE pontoInstalacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE iluminacao AT TABLE pontoInstalacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE fonteAlimentacao AT TABLE pontoInstalacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE contatoAgua AT TABLE pontoInstalacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE conectividade AT TABLE pontoInstalacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE pontoCamera */
INSERT INTO pontoCamera ( data, coordenadas, idCamera, quantidade, cnpjParque )
	VALUES ( to_date ('2007-05-22', 'YYYY-MM-DD'), '{595838, 449110, 444960}', 4, 860823, '46.849.671/2458-94' );
INSERT INTO pontoCamera ( data, coordenadas, idCamera, quantidade, cnpjParque )
	VALUES ( to_date ('2013-04-15', 'YYYY-MM-DD'), '{746980, 379198, 608816}', 1, 629003, '55.798.212/7980-01' );
INSERT INTO pontoCamera ( data, coordenadas, idCamera, quantidade, cnpjParque )
	VALUES ( to_date ('2010-06-25', 'YYYY-MM-DD'), '{343522, 269094, 706608}', 2, 782526, '84.681.391/5780-60' );
INSERT INTO pontoCamera ( data, coordenadas, idCamera, quantidade, cnpjParque )
	VALUES ( to_date ('2008-03-01', 'YYYY-MM-DD'), '{451400, 384980, 852394}', 5, 437267, '64.778.711/4028-81' );
INSERT INTO pontoCamera ( data, coordenadas, idCamera, quantidade, cnpjParque )
	VALUES ( to_date ('2002-03-06', 'YYYY-MM-DD'), '{214576, 877343, 809558}', 3, 281976, '49.507.621/8064-29' );

/* TABLE pontoEstrutura */
INSERT INTO pontoEstrutura ( data, coordenadas, quantidade, idEstruturacao, cnpjParque )
	VALUES ( to_date ('2017-08-27', 'YYYY-MM-DD'), '{451400, 384980, 852394}', 680593, 5, '64.778.711/4028-81' );
INSERT INTO pontoEstrutura ( data, coordenadas, quantidade, idEstruturacao, cnpjParque )
	VALUES ( to_date ('2016-03-08', 'YYYY-MM-DD'), '{214576, 877343, 809558}', 368556, 4, '49.507.621/8064-29' );
INSERT INTO pontoEstrutura ( data, coordenadas, quantidade, idEstruturacao, cnpjParque )
	VALUES ( to_date ('2002-08-21', 'YYYY-MM-DD'), '{746980, 379198, 608816}', 496350, 1, '55.798.212/7980-01' );
INSERT INTO pontoEstrutura ( data, coordenadas, quantidade, idEstruturacao, cnpjParque )
	VALUES ( to_date ('2006-03-04', 'YYYY-MM-DD'), '{343522, 269094, 706608}', 228638, 3, '84.681.391/5780-60' );
INSERT INTO pontoEstrutura ( data, coordenadas, quantidade, idEstruturacao, cnpjParque )
	VALUES ( to_date ('2007-07-15', 'YYYY-MM-DD'), '{595838, 449110, 444960}', 884948, 2, '46.849.671/2458-94' );

/* TABLE pontoSom */
INSERT INTO pontoSom ( data, quantidade, idSonorizacao, cnpjParque, coordenadas, numeroGrafo )
	VALUES ( to_date ('2008-10-20', 'YYYY-MM-DD'), 675102, 1, '64.778.711/4028-81', '{451400, 384980, 852394}', 232918 );
INSERT INTO pontoSom ( data, quantidade, idSonorizacao, cnpjParque, coordenadas, numeroGrafo )
	VALUES ( to_date ('2007-03-29', 'YYYY-MM-DD'), 431976, 5, '55.798.212/7980-01', '{746980, 379198, 608816}', 147661 );
INSERT INTO pontoSom ( data, quantidade, idSonorizacao, cnpjParque, coordenadas, numeroGrafo )
	VALUES ( to_date ('2003-11-10', 'YYYY-MM-DD'), 683883, 4, '64.778.711/4028-81', '{451400, 384980, 852394}', 419529 );
INSERT INTO pontoSom ( data, quantidade, idSonorizacao, cnpjParque, coordenadas, numeroGrafo )
	VALUES ( to_date ('2017-04-12', 'YYYY-MM-DD'), 675762, 2, '49.507.621/8064-29', '{214576, 877343, 809558}', 175798 );
INSERT INTO pontoSom ( data, quantidade, idSonorizacao, cnpjParque, coordenadas, numeroGrafo )
	VALUES ( to_date ('2009-01-24', 'YYYY-MM-DD'), 434316, 3, '46.849.671/2458-94', '{595838, 449110, 444960}', 141876 );
/* NULL INSERTION FOR ATTRIBUTE data AT TABLE pontoSom  */
INSERT INTO pontoSom ( data, quantidade, idSonorizacao, cnpjParque, coordenadas, numeroGrafo )
	VALUES ( NULL, 332688, 3, '64.778.711/4028-81', '{451400, 384980, 852394}', 576856 );
/* NULL INSERTION FOR ATTRIBUTE numeroGrafo AT TABLE pontoSom  */
INSERT INTO pontoSom ( data, quantidade, idSonorizacao, cnpjParque, coordenadas, numeroGrafo )
	VALUES ( to_date ('2014-05-07', 'YYYY-MM-DD'), 287453, 2, '55.798.212/7980-01', '{746980, 379198, 608816}', NULL );

/* TABLE opera */
INSERT INTO opera ( dataFesta, idDrone, cpfPiloto, cnpjParque )
	VALUES ( to_date ('2005-03-11', 'YYYY-MM-DD'), 67400860, '349.626.534-75', '64.778.711/4028-81' );
INSERT INTO opera ( dataFesta, idDrone, cpfPiloto, cnpjParque )
	VALUES ( to_date ('2015-09-14', 'YYYY-MM-DD'), 85359378, '582.810.697-48', '84.681.391/5780-60' );
INSERT INTO opera ( dataFesta, idDrone, cpfPiloto, cnpjParque )
	VALUES ( to_date ('2014-04-26', 'YYYY-MM-DD'), 23247951, '397.887.342-08', '55.798.212/7980-01' );
INSERT INTO opera ( dataFesta, idDrone, cpfPiloto, cnpjParque )
	VALUES ( to_date ('2015-01-28', 'YYYY-MM-DD'), 22696808, '546.280.699-75', '46.849.671/2458-94' );
INSERT INTO opera ( dataFesta, idDrone, cpfPiloto, cnpjParque )
	VALUES ( to_date ('2005-03-25', 'YYYY-MM-DD'), 63401359, '448.874.686-24', '49.507.621/8064-29' );

/* TABLE auxilia */
INSERT INTO auxilia ( cpfCopiloto, dataFesta, cpfPiloto, cnpjParque )
	VALUES ( '349.626.534-75', to_date ('2015-09-14', 'YYYY-MM-DD'), '349.626.534-75', '84.681.391/5780-60' );
INSERT INTO auxilia ( cpfCopiloto, dataFesta, cpfPiloto, cnpjParque )
	VALUES ( '448.874.686-24', to_date ('2015-01-28', 'YYYY-MM-DD'), '546.280.699-75', '46.849.671/2458-94' );
INSERT INTO auxilia ( cpfCopiloto, dataFesta, cpfPiloto, cnpjParque )
	VALUES ( '546.280.699-75', to_date ('2005-03-25', 'YYYY-MM-DD'), '582.810.697-48', '49.507.621/8064-29' );
INSERT INTO auxilia ( cpfCopiloto, dataFesta, cpfPiloto, cnpjParque )
	VALUES ( '397.887.342-08', to_date ('2005-03-11', 'YYYY-MM-DD'), '448.874.686-24', '64.778.711/4028-81' );
INSERT INTO auxilia ( cpfCopiloto, dataFesta, cpfPiloto, cnpjParque )
	VALUES ( '582.810.697-48', to_date ('2014-04-26', 'YYYY-MM-DD'), '397.887.342-08', '55.798.212/7980-01' );

/* TABLE manutencao */
INSERT INTO manutencao ( data, cpfTecnico, idEquipamento )
	VALUES ( to_date ('2008-06-17', 'YYYY-MM-DD'), '582.810.697-48', 3 );
INSERT INTO manutencao ( data, cpfTecnico, idEquipamento )
	VALUES ( to_date ('2012-06-04', 'YYYY-MM-DD'), '397.887.342-08', 1 );
INSERT INTO manutencao ( data, cpfTecnico, idEquipamento )
	VALUES ( to_date ('2014-06-09', 'YYYY-MM-DD'), '349.626.534-75', 5 );
INSERT INTO manutencao ( data, cpfTecnico, idEquipamento )
	VALUES ( to_date ('2011-08-20', 'YYYY-MM-DD'), '448.874.686-24', 2 );
INSERT INTO manutencao ( data, cpfTecnico, idEquipamento )
	VALUES ( to_date ('2013-01-09', 'YYYY-MM-DD'), '546.280.699-75', 4 );

/* TABLE NUMBER TOTAL: 36 */
ROLLBACK;
