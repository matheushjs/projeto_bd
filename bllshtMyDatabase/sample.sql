/* TOTAL OF 0 ERRORS WHILE BUILDING METADATA STRUCTURE. */
BEGIN TRANSACTION;
/* TABLE funcionario */
INSERT INTO funcionario ( telefoneCsv, endereco, nome, RG, cpf, equipe, cargo )
	VALUES ( 'Cupiditate harum totam aspernatur consectetur voluptate ea. Accusantium perferendis ea t', 'Alameda Ana Vitória da Luz, 11 Vila Cloris 92797087 Gomes / CE', 'Stephany Correia', 'Eligendi laboriosam', '737.059.777-64', 515978, 'PILOTO' );
INSERT INTO funcionario ( telefoneCsv, endereco, nome, RG, cpf, equipe, cargo )
	VALUES ( 'Necessitatibus porro ipsam autem in hic. Quos in officia ratione su', 'Distrito de Alves, 52 Alto Vera Cruz 55387698 Carvalho Paulista / SE', 'João Gabriel Duarte', 'Nobis reicien', '875.457.499-96', 828615, 'ASSISTENTE' );
INSERT INTO funcionario ( telefoneCsv, endereco, nome, RG, cpf, equipe, cargo )
	VALUES ( 'Officiis itaque esse officiis. At ipsam a.
Optio impedit repellendus nostrum mollitia. Expedita ad tota', 'Chácara de Jesus, 4 Jaqueline 10593094 Moreira / AP', 'Mariana Araújo', 'Perspiciatis ', '852.741.007-10', 255790, 'COPILOTO' );
INSERT INTO funcionario ( telefoneCsv, endereco, nome, RG, cpf, equipe, cargo )
	VALUES ( 'In accusamus voluptates fugit modi. Blanditiis totam velit saepe id perferendis nulla.
Assumenda eum odio id magnam.', 'Área de Nascimento, 93 Baleia 46853188 Aragão / ES', 'Clara Peixoto', 'Nobis accusantium lauda', '024.542.926-51', 337575, 'TECNICO' );
INSERT INTO funcionario ( telefoneCsv, endereco, nome, RG, cpf, equipe, cargo )
	VALUES ( 'Est magnam molestiae atque ipsam sunt deserunt. Maxime nam except', 'Residencial Porto, 959 Dom Joaquim 16493527 Novaes / RO', 'Pedro Henrique Moura', 'Asperiores fugiat oc', '578.965.093-21', 697297, 'TECNICO' );
/* NULL INSERTION FOR ATTRIBUTE equipe AT TABLE funcionario  */
INSERT INTO funcionario ( telefoneCsv, endereco, nome, RG, cpf, equipe, cargo )
	VALUES ( 'Asperiores minima in beatae rerum nulla ipsam alias. Non pariatur fugiat doloribus a ratione perferendis.
', 'Morro Bernardo Novaes, 54 Vila Inestan 22423745 Pinto de Caldeira / MS', 'Vinicius das Neves', 'Quisquam culpa lauda', '490.535.389-81', NULL, 'ASSISTENTE' );

/* TABLE tecnico */
INSERT INTO tecnico ( especialidade, cpf )
	VALUES ( 'Quam quidem recusandae distinctio dolorem aliquam. Quod laborum placeat sint quis. Incidun', '737.059.777-64' );
INSERT INTO tecnico ( especialidade, cpf )
	VALUES ( 'Eveniet repellat ad ullam vel voluptatum ipsum.
Maxime ipsum hic reiciendis reiciendis. Harum ut asperiores ducimu', '024.542.926-51' );
INSERT INTO tecnico ( especialidade, cpf )
	VALUES ( 'Dolorum id eos sapiente consequatur at illum. Magnam provident asperiores fugiat. Rerum eo', '852.741.007-10' );
INSERT INTO tecnico ( especialidade, cpf )
	VALUES ( 'Eligendi commodi fugiat molestias voluptatum consectetur quibusdam. Sunt eveniet', '875.457.499-96' );
INSERT INTO tecnico ( especialidade, cpf )
	VALUES ( 'Pariatur suscipit nisi. Porro ex accusamus dignissimos. At assumenda nulla velit porro deserunt.', '578.965.093-21' );

/* TABLE copiloto */
INSERT INTO copiloto ( cpf, habilitacao )
	VALUES ( '875.457.499-96', 'Quisquam per' );
INSERT INTO copiloto ( cpf, habilitacao )
	VALUES ( '024.542.926-51', 'Laudantium d' );
INSERT INTO copiloto ( cpf, habilitacao )
	VALUES ( '852.741.007-10', 'Blanditiis a' );
INSERT INTO copiloto ( cpf, habilitacao )
	VALUES ( '737.059.777-64', 'Placeat nequ' );
INSERT INTO copiloto ( cpf, habilitacao )
	VALUES ( '578.965.093-21', 'Facere atque' );

/* TABLE piloto */
INSERT INTO piloto ( cpf, habilitacao )
	VALUES ( '578.965.093-21', 'Nam delectus' );
INSERT INTO piloto ( cpf, habilitacao )
	VALUES ( '737.059.777-64', 'Vitae totam ' );
INSERT INTO piloto ( cpf, habilitacao )
	VALUES ( '852.741.007-10', 'Eos suscipit' );
INSERT INTO piloto ( cpf, habilitacao )
	VALUES ( '024.542.926-51', 'Laboriosam m' );
INSERT INTO piloto ( cpf, habilitacao )
	VALUES ( '875.457.499-96', 'Exercitation' );

/* TABLE assistente */
INSERT INTO assistente ( cpf )
	VALUES ( '578.965.093-21' );
INSERT INTO assistente ( cpf )
	VALUES ( '737.059.777-64' );
INSERT INTO assistente ( cpf )
	VALUES ( '852.741.007-10' );
INSERT INTO assistente ( cpf )
	VALUES ( '024.542.926-51' );
INSERT INTO assistente ( cpf )
	VALUES ( '875.457.499-96' );

/* TABLE opCamera */
INSERT INTO opCamera ( inicioCarreira, cpf )
	VALUES ( to_date ('2008-04-15', 'YYYY-MM-DD'), '737.059.777-64' );
INSERT INTO opCamera ( inicioCarreira, cpf )
	VALUES ( to_date ('2010-09-16', 'YYYY-MM-DD'), '852.741.007-10' );
INSERT INTO opCamera ( inicioCarreira, cpf )
	VALUES ( to_date ('2005-04-22', 'YYYY-MM-DD'), '024.542.926-51' );
INSERT INTO opCamera ( inicioCarreira, cpf )
	VALUES ( to_date ('2011-01-02', 'YYYY-MM-DD'), '875.457.499-96' );
INSERT INTO opCamera ( inicioCarreira, cpf )
	VALUES ( to_date ('2000-10-10', 'YYYY-MM-DD'), '578.965.093-21' );

/* TABLE equipamento */
INSERT INTO equipamento ( modelo, descricao, nome, quantidade, tipo, marca )
	VALUES ( 'Accusamus illum quo cupiditate fuga ducimus.', 'Ducimus veritatis inventore nemo quis enim. Porro illo in dignissimos deleniti quisquam nemo. Quasi beatae illo nam non non assumenda. Molestiae enim quia occaecati quas quaerat', 'Eloah da Rocha', 564306, 'SONORIZACAO', 'Repudiandae ullam nostr' );
INSERT INTO equipamento ( modelo, descricao, nome, quantidade, tipo, marca )
	VALUES ( 'Eligendi maxime repudiandae doloremque esse. Consect', 'Repellat odit qui quo. Quae sint maiores eius molestias impedit possimus', 'Antônio Dias', 853902, 'DRONE', 'Doloribus modi n' );
INSERT INTO equipamento ( modelo, descricao, nome, quantidade, tipo, marca )
	VALUES ( 'Aperiam quibusdam dolores nobis voluptates. Quod ', 'Accusantium ab nihil. A ipsam aliquid nobis. Facere cumque voluptatem nostrum voluptatibus sapiente dignissimos provident. Aspernatur mollitia necessitatibus', 'Maria Vitória Sales', 588580, 'SONORIZACAO', 'Veritatis soluta quam ipsa. ' );
INSERT INTO equipamento ( modelo, descricao, nome, quantidade, tipo, marca )
	VALUES ( 'Modi minus distinctio. Minima assumenda quis impedit cons', 'Quod illum totam cupiditate. Illo autem soluta beatae ducimus. Laboriosam beatae deleniti voluptates quidem voluptas eius. Mollitia facilis eum. Libero autem adipisci', 'Vitória Nunes', 834640, 'DRONE', 'Labore repellendus la' );
INSERT INTO equipamento ( modelo, descricao, nome, quantidade, tipo, marca )
	VALUES ( 'Quasi eligendi doloribus cum accu', 'Iste odit delectus sit illum. Dolorem id magnam delectus nostrum ab hic a. Ab impedit vel repellendus laudantium deleniti cum', 'Amanda Ribeiro', 712293, 'ESTRUTURACAO', 'Voluptas voluptate beata' );
/* NULL INSERTION FOR ATTRIBUTE descricao AT TABLE equipamento  */
INSERT INTO equipamento ( modelo, descricao, nome, quantidade, tipo, marca )
	VALUES ( 'Magnam quod at eos nulla doloremque exercitatione', NULL, 'Sra. Ana Beatriz Rodrigues', 450578, 'CAMERA', 'Suscipit quia fuga itaque. Nam ' );
/* NULL INSERTION FOR ATTRIBUTE marca AT TABLE equipamento  */
INSERT INTO equipamento ( modelo, descricao, nome, quantidade, tipo, marca )
	VALUES ( 'Aliquid exercitationem quae delectus', 'Corporis nobis assumenda quo expedita rerum voluptatibus. Culpa sit quae ratione. Ducimus assumenda voluptatibus sequi. Ipsum eveniet itaque sed laborum', 'Thomas Santos', 686628, 'CAMERA', NULL );

/* TABLE estruturacao */
INSERT INTO estruturacao ( id )
	VALUES ( 2 );
INSERT INTO estruturacao ( id )
	VALUES ( 1 );
INSERT INTO estruturacao ( id )
	VALUES ( 4 );
INSERT INTO estruturacao ( id )
	VALUES ( 3 );
INSERT INTO estruturacao ( id )
	VALUES ( 5 );

/* TABLE drone */
INSERT INTO drone ( tempoMaxVoo, alcanceRemoto, id, fonteAlimentacao )
	VALUES ( 502834, 742334, 5, 'Assumenda vel eligendi similique laudantium quam s' );
INSERT INTO drone ( tempoMaxVoo, alcanceRemoto, id, fonteAlimentacao )
	VALUES ( 229351, 813430, 4, 'Tenetur aliquid veritatis. Corporis maxim' );
INSERT INTO drone ( tempoMaxVoo, alcanceRemoto, id, fonteAlimentacao )
	VALUES ( 195121, 206683, 1, 'Repudiandae quam tempora itaque excepturi sunt id eos. Eveniet ' );
INSERT INTO drone ( tempoMaxVoo, alcanceRemoto, id, fonteAlimentacao )
	VALUES ( 754990, 375399, 2, 'Pariatur velit tempore eligendi aperiam. Rem cupidi' );
INSERT INTO drone ( tempoMaxVoo, alcanceRemoto, id, fonteAlimentacao )
	VALUES ( 716988, 857532, 3, 'Nam aspernatur ratione. Voluptate laudantium quidem cupiditate' );
/* NULL INSERTION FOR ATTRIBUTE tempoMaxVoo AT TABLE drone  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE alcanceRemoto AT TABLE drone  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE fonteAlimentacao AT TABLE drone  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE sonorizacao */
INSERT INTO sonorizacao ( id, potencia, posseEise )
	VALUES ( 1, 223071, TRUE );
INSERT INTO sonorizacao ( id, potencia, posseEise )
	VALUES ( 2, 171992, TRUE );
INSERT INTO sonorizacao ( id, potencia, posseEise )
	VALUES ( 4, 541486, FALSE );
INSERT INTO sonorizacao ( id, potencia, posseEise )
	VALUES ( 3, 563610, FALSE );
INSERT INTO sonorizacao ( id, potencia, posseEise )
	VALUES ( 5, 292889, FALSE );
/* NULL INSERTION FOR ATTRIBUTE potencia AT TABLE sonorizacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE camera */
INSERT INTO camera ( resistenteQueda, zoomLongoAlcance, estabilizadorImagem, fonteAlimentacao, conectividade, id, visaoNoturna, certificacaoIP )
	VALUES ( FALSE, TRUE, TRUE, 'Repellendus commodi eos facilis est itaque at id.', 'Optio pariatur quo porro laboriosam rerum magni', 4, TRUE, 'IP77' );
INSERT INTO camera ( resistenteQueda, zoomLongoAlcance, estabilizadorImagem, fonteAlimentacao, conectividade, id, visaoNoturna, certificacaoIP )
	VALUES ( FALSE, TRUE, FALSE, 'Voluptatibus doloribus culpa laborum. Repudiandae ', 'Architecto voluptas dolorem in r', 5, FALSE, 'IP50v' );
INSERT INTO camera ( resistenteQueda, zoomLongoAlcance, estabilizadorImagem, fonteAlimentacao, conectividade, id, visaoNoturna, certificacaoIP )
	VALUES ( FALSE, TRUE, TRUE, 'Temporibus repudiandae corporis accusantium p', 'Itaque ex cum ratione iure quasi facere vitae', 3, TRUE, 'IP42w' );
INSERT INTO camera ( resistenteQueda, zoomLongoAlcance, estabilizadorImagem, fonteAlimentacao, conectividade, id, visaoNoturna, certificacaoIP )
	VALUES ( TRUE, FALSE, TRUE, 'Ducimus vitae iste sequi. Saepe consequuntur sunt ', 'Voluptatum commodi nesciunt velit ', 1, FALSE, 'IP24U' );
INSERT INTO camera ( resistenteQueda, zoomLongoAlcance, estabilizadorImagem, fonteAlimentacao, conectividade, id, visaoNoturna, certificacaoIP )
	VALUES ( FALSE, TRUE, TRUE, 'Nulla quas laboriosam quod fuga. At quos e', 'Fugit distinctio accusantium nostru', 2, FALSE, 'IP58y' );
/* NULL INSERTION FOR ATTRIBUTE resistenteQueda AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE zoomLongoAlcance AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE estabilizadorImagem AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE fonteAlimentacao AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE conectividade AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE visaoNoturna AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE certificacaoIP AT TABLE camera  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE registros */
INSERT INTO registros ( registro, idDrone )
	VALUES ( 'Rem illo ', 2 );
INSERT INTO registros ( registro, idDrone )
	VALUES ( 'Consequat', 4 );
INSERT INTO registros ( registro, idDrone )
	VALUES ( 'Dolor cum', 1 );
INSERT INTO registros ( registro, idDrone )
	VALUES ( 'Quis volu', 5 );
INSERT INTO registros ( registro, idDrone )
	VALUES ( 'Omnis mag', 3 );

/* TABLE cameraAerea */
INSERT INTO cameraAerea ( data, quantidade, drone, camera )
	VALUES ( to_date ('2012-07-24', 'YYYY-MM-DD'), 560474, 4, 1 );
INSERT INTO cameraAerea ( data, quantidade, drone, camera )
	VALUES ( to_date ('2013-03-20', 'YYYY-MM-DD'), 278381, 5, 4 );
INSERT INTO cameraAerea ( data, quantidade, drone, camera )
	VALUES ( to_date ('2001-02-27', 'YYYY-MM-DD'), 679778, 2, 2 );
INSERT INTO cameraAerea ( data, quantidade, drone, camera )
	VALUES ( to_date ('2016-01-12', 'YYYY-MM-DD'), 617207, 1, 3 );
INSERT INTO cameraAerea ( data, quantidade, drone, camera )
	VALUES ( to_date ('2016-05-06', 'YYYY-MM-DD'), 166449, 3, 5 );

/* TABLE musico */
INSERT INTO musico ( nome, cpf )
	VALUES ( 'Dra. Manuela Barros', '013.221.053-37' );
INSERT INTO musico ( nome, cpf )
	VALUES ( 'Vitória Moreira', '470.529.555-68' );
INSERT INTO musico ( nome, cpf )
	VALUES ( 'Stella da Luz', '888.600.398-70' );
INSERT INTO musico ( nome, cpf )
	VALUES ( 'Stella Moura', '188.802.153-13' );
INSERT INTO musico ( nome, cpf )
	VALUES ( 'Calebe Pereira', '066.895.779-61' );

/* TABLE banda */
INSERT INTO banda ( tipo, nome, dataCriacao, estiloMusical )
	VALUES ( 'CONTRATADA', 'Lavínia Sales', to_date ('2015-05-21', 'YYYY-MM-DD'), 'Nostrum itaque praesentium qui pariatur dolorem. ' );
INSERT INTO banda ( tipo, nome, dataCriacao, estiloMusical )
	VALUES ( 'PARTICULAR', 'Yasmin Almeida', to_date ('2013-11-06', 'YYYY-MM-DD'), 'Nostrum fuga nam fuga. Deserunt deserunt optio tempor' );
INSERT INTO banda ( tipo, nome, dataCriacao, estiloMusical )
	VALUES ( 'PARTICULAR', 'Marcela Moraes', to_date ('2005-05-26', 'YYYY-MM-DD'), 'Maxime similique blanditiis dolor' );
INSERT INTO banda ( tipo, nome, dataCriacao, estiloMusical )
	VALUES ( 'PARTICULAR', 'Levi Nascimento', to_date ('2008-05-06', 'YYYY-MM-DD'), 'Similique atque consequuntur blanditiis in.' );
INSERT INTO banda ( tipo, nome, dataCriacao, estiloMusical )
	VALUES ( 'CONTRATADA', 'Raul Caldeira', to_date ('2009-11-15', 'YYYY-MM-DD'), 'Ab blanditiis in libero nisi provide' );
/* NULL INSERTION FOR ATTRIBUTE estiloMusical AT TABLE banda  */
INSERT INTO banda ( tipo, nome, dataCriacao, estiloMusical )
	VALUES ( 'CONTRATADA', 'Sra. Kamilly Cardoso', to_date ('2015-01-09', 'YYYY-MM-DD'), NULL );

/* TABLE compoe */
INSERT INTO compoe ( dataCriacaoBanda, nomeBanda, cpfMusico )
	VALUES ( to_date ('2009-11-15', 'YYYY-MM-DD'), 'Raul Caldeira', '888.600.398-70' );
INSERT INTO compoe ( dataCriacaoBanda, nomeBanda, cpfMusico )
	VALUES ( to_date ('2013-11-06', 'YYYY-MM-DD'), 'Yasmin Almeida', '013.221.053-37' );
INSERT INTO compoe ( dataCriacaoBanda, nomeBanda, cpfMusico )
	VALUES ( to_date ('2008-05-06', 'YYYY-MM-DD'), 'Levi Nascimento', '188.802.153-13' );
INSERT INTO compoe ( dataCriacaoBanda, nomeBanda, cpfMusico )
	VALUES ( to_date ('2015-05-21', 'YYYY-MM-DD'), 'Lavínia Sales', '470.529.555-68' );
INSERT INTO compoe ( dataCriacaoBanda, nomeBanda, cpfMusico )
	VALUES ( to_date ('2005-05-26', 'YYYY-MM-DD'), 'Marcela Moraes', '066.895.779-61' );

/* TABLE festaNoCruzeiro */
INSERT INTO festaNoCruzeiro ( dataFim, IMO, nome, numeroConvidados, dataInicio )
	VALUES ( to_date ('2000-02-19', 'YYYY-MM-DD'), 752526, 'Gustavo Cardoso,', 100002, to_date ('2009-11-28', 'YYYY-MM-DD') );
INSERT INTO festaNoCruzeiro ( dataFim, IMO, nome, numeroConvidados, dataInicio )
	VALUES ( to_date ('2010-04-05', 'YYYY-MM-DD'), 644188, 'Calebe Silveira', 588699, to_date ('2006-02-10', 'YYYY-MM-DD') );
INSERT INTO festaNoCruzeiro ( dataFim, IMO, nome, numeroConvidados, dataInicio )
	VALUES ( to_date ('2008-10-02', 'YYYY-MM-DD'), 551499, 'Ana Vitória Silva', 861217, to_date ('2014-01-27', 'YYYY-MM-DD') );
INSERT INTO festaNoCruzeiro ( dataFim, IMO, nome, numeroConvidados, dataInicio )
	VALUES ( to_date ('2001-08-12', 'YYYY-MM-DD'), 463756, 'Vitor Dias', 244000, to_date ('2014-07-12', 'YYYY-MM-DD') );
INSERT INTO festaNoCruzeiro ( dataFim, IMO, nome, numeroConvidados, dataInicio )
	VALUES ( to_date ('2015-11-28', 'YYYY-MM-DD'), 440958, 'Sophia Cardoso', 387671, to_date ('2013-02-29', 'YYYY-MM-DD') );
/* NULL INSERTION FOR ATTRIBUTE dataFim AT TABLE festaNoCruzeiro  */
INSERT INTO festaNoCruzeiro ( dataFim, IMO, nome, numeroConvidados, dataInicio )
	VALUES ( NULL, 161642, 'João Miguel da Rosa', 238775, to_date ('2004-03-09', 'YYYY-MM-DD') );
/* NULL INSERTION FOR ATTRIBUTE numeroConvidados AT TABLE festaNoCruzeiro  */
INSERT INTO festaNoCruzeiro ( dataFim, IMO, nome, numeroConvidados, dataInicio )
	VALUES ( to_date ('2016-05-06', 'YYYY-MM-DD'), 352909, 'Enzo Pereira', NULL, to_date ('2009-05-20', 'YYYY-MM-DD') );

/* TABLE locaisCruzeiro */
INSERT INTO locaisCruzeiro ( IMO, local, dataFesta )
	VALUES ( 551499, 'Voluptatibus occaecati ab. Officia quaerat odit possimus suscipit.
N', to_date ('2014-01-27', 'YYYY-MM-DD') );
INSERT INTO locaisCruzeiro ( IMO, local, dataFesta )
	VALUES ( 644188, 'Minima doloribus deleniti iusto expedita. Dolore velit recusandae voluptate animi ipsam. Magni reiciendis illo tempore volupt', to_date ('2006-02-10', 'YYYY-MM-DD') );
INSERT INTO locaisCruzeiro ( IMO, local, dataFesta )
	VALUES ( 463756, 'Aspernatur delectus molestiae atque mollitia dolores. Enim nesciun', to_date ('2014-07-12', 'YYYY-MM-DD') );
INSERT INTO locaisCruzeiro ( IMO, local, dataFesta )
	VALUES ( 440958, 'Illo corrupti modi aut. Voluptate delectus a. Quasi odit sit pariatur blanditiis alias.
Possimus sequ', to_date ('2013-02-29', 'YYYY-MM-DD') );
INSERT INTO locaisCruzeiro ( IMO, local, dataFesta )
	VALUES ( 752526, 'Harum sint alias mollitia veniam dignissimos. Fuga beatae dolorem.
Vel repudiandae omnis an', to_date ('2009-11-28', 'YYYY-MM-DD') );
/* NULL INSERTION FOR ATTRIBUTE local AT TABLE locaisCruzeiro  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE show */
INSERT INTO show ( terminoPrevisto, IMO, data, contrato, horaInicio, dataCriacaoBanda, nomeBanda, dataFesta )
	VALUES ( to_timestamp ('2001-05-27 20:16:37', 'YYYY-MM-DD HH24:MI:SS'), 752526, to_date ('2015-03-04', 'YYYY-MM-DD'), 'Debitis provident molestiae sed provident cumque omni', '14:36:24', to_date ('2008-05-06', 'YYYY-MM-DD'), 'Levi Nascimento', to_date ('2009-11-28', 'YYYY-MM-DD') );
INSERT INTO show ( terminoPrevisto, IMO, data, contrato, horaInicio, dataCriacaoBanda, nomeBanda, dataFesta )
	VALUES ( to_timestamp ('2007-03-16 01:44:12', 'YYYY-MM-DD HH24:MI:SS'), 551499, to_date ('2010-06-30', 'YYYY-MM-DD'), 'Repudiandae quidem fuga amet magni laboriosam quasi. Velit reic', '19:47:25', to_date ('2005-05-26', 'YYYY-MM-DD'), 'Marcela Moraes', to_date ('2014-01-27', 'YYYY-MM-DD') );
INSERT INTO show ( terminoPrevisto, IMO, data, contrato, horaInicio, dataCriacaoBanda, nomeBanda, dataFesta )
	VALUES ( to_timestamp ('2006-01-11 17:47:25', 'YYYY-MM-DD HH24:MI:SS'), 644188, to_date ('2006-07-07', 'YYYY-MM-DD'), 'Eveniet totam ab quia mollitia blanditiis at.
Iusto prov', '21:26:06', to_date ('2013-11-06', 'YYYY-MM-DD'), 'Yasmin Almeida', to_date ('2006-02-10', 'YYYY-MM-DD') );
INSERT INTO show ( terminoPrevisto, IMO, data, contrato, horaInicio, dataCriacaoBanda, nomeBanda, dataFesta )
	VALUES ( to_timestamp ('2007-03-02 10:43:23', 'YYYY-MM-DD HH24:MI:SS'), 463756, to_date ('2015-03-21', 'YYYY-MM-DD'), 'Eum itaque nam vero libero exceptu', '04:25:21', to_date ('2009-11-15', 'YYYY-MM-DD'), 'Raul Caldeira', to_date ('2014-07-12', 'YYYY-MM-DD') );
INSERT INTO show ( terminoPrevisto, IMO, data, contrato, horaInicio, dataCriacaoBanda, nomeBanda, dataFesta )
	VALUES ( to_timestamp ('2012-09-04 21:31:26', 'YYYY-MM-DD HH24:MI:SS'), 440958, to_date ('2010-03-19', 'YYYY-MM-DD'), 'Debitis modi nobis commodi porro ab sunt pariatur. Tempore', '22:35:55', to_date ('2015-05-21', 'YYYY-MM-DD'), 'Lavínia Sales', to_date ('2013-02-29', 'YYYY-MM-DD') );
/* NULL INSERTION FOR ATTRIBUTE terminoPrevisto AT TABLE show  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE contrato AT TABLE show  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE showSonorizacao */
INSERT INTO showSonorizacao ( showId, sonorizacaoId )
	VALUES ( 5, 5 );
INSERT INTO showSonorizacao ( showId, sonorizacaoId )
	VALUES ( 4, 2 );
INSERT INTO showSonorizacao ( showId, sonorizacaoId )
	VALUES ( 2, 1 );
INSERT INTO showSonorizacao ( showId, sonorizacaoId )
	VALUES ( 3, 4 );
INSERT INTO showSonorizacao ( showId, sonorizacaoId )
	VALUES ( 1, 3 );

/* TABLE album */
INSERT INTO album ( dataFesta, IMOFesta )
	VALUES ( to_date ('2014-01-27', 'YYYY-MM-DD'), 551499 );
INSERT INTO album ( dataFesta, IMOFesta )
	VALUES ( to_date ('2006-02-10', 'YYYY-MM-DD'), 644188 );
INSERT INTO album ( dataFesta, IMOFesta )
	VALUES ( to_date ('2009-11-28', 'YYYY-MM-DD'), 752526 );
INSERT INTO album ( dataFesta, IMOFesta )
	VALUES ( to_date ('2014-07-12', 'YYYY-MM-DD'), 463756 );
INSERT INTO album ( dataFesta, IMOFesta )
	VALUES ( to_date ('2013-02-29', 'YYYY-MM-DD'), 440958 );

/* TABLE makingof */
INSERT INTO makingof ( dataFesta, IMOFesta )
	VALUES ( to_date ('2006-02-10', 'YYYY-MM-DD'), 644188 );
INSERT INTO makingof ( dataFesta, IMOFesta )
	VALUES ( to_date ('2014-07-12', 'YYYY-MM-DD'), 463756 );
INSERT INTO makingof ( dataFesta, IMOFesta )
	VALUES ( to_date ('2013-02-29', 'YYYY-MM-DD'), 440958 );
INSERT INTO makingof ( dataFesta, IMOFesta )
	VALUES ( to_date ('2009-11-28', 'YYYY-MM-DD'), 752526 );
INSERT INTO makingof ( dataFesta, IMOFesta )
	VALUES ( to_date ('2014-01-27', 'YYYY-MM-DD'), 551499 );

/* TABLE opComCamera */
INSERT INTO opComCamera ( cpfOpCamera, data, camera, tipo )
	VALUES ( '875.457.499-96', to_date ('2006-11-29', 'YYYY-MM-DD'), 80134591, 'FOTOGRAFO' );
INSERT INTO opComCamera ( cpfOpCamera, data, camera, tipo )
	VALUES ( '737.059.777-64', to_date ('2003-04-17', 'YYYY-MM-DD'), 11106093, 'PARQUE' );
INSERT INTO opComCamera ( cpfOpCamera, data, camera, tipo )
	VALUES ( '024.542.926-51', to_date ('2014-07-16', 'YYYY-MM-DD'), 28840614, 'CINEGRAFISTA' );
INSERT INTO opComCamera ( cpfOpCamera, data, camera, tipo )
	VALUES ( '578.965.093-21', to_date ('2007-03-06', 'YYYY-MM-DD'), 63350441, 'PARQUE' );
INSERT INTO opComCamera ( cpfOpCamera, data, camera, tipo )
	VALUES ( '852.741.007-10', to_date ('2006-02-16', 'YYYY-MM-DD'), 59068830, 'PARQUE' );

/* TABLE fotografoCruzeiro */
INSERT INTO fotografoCruzeiro ( cpfOpCamera, data, idAlbum, categoria )
	VALUES ( '737.059.777-64', to_date ('2003-04-17', 'YYYY-MM-DD'), 5, 'TECNICO' );
INSERT INTO fotografoCruzeiro ( cpfOpCamera, data, idAlbum, categoria )
	VALUES ( '875.457.499-96', to_date ('2006-11-29', 'YYYY-MM-DD'), 2, 'TECNICO' );
INSERT INTO fotografoCruzeiro ( cpfOpCamera, data, idAlbum, categoria )
	VALUES ( '852.741.007-10', to_date ('2006-02-16', 'YYYY-MM-DD'), 1, 'JUNIOR' );
INSERT INTO fotografoCruzeiro ( cpfOpCamera, data, idAlbum, categoria )
	VALUES ( '578.965.093-21', to_date ('2007-03-06', 'YYYY-MM-DD'), 3, 'TECNICO' );
INSERT INTO fotografoCruzeiro ( cpfOpCamera, data, idAlbum, categoria )
	VALUES ( '024.542.926-51', to_date ('2014-07-16', 'YYYY-MM-DD'), 4, 'TECNICO' );

/* TABLE cinegrafistaCruzeiro */
INSERT INTO cinegrafistaCruzeiro ( cpfOpCamera, data, idMakingof )
	VALUES ( '852.741.007-10', to_date ('2006-02-16', 'YYYY-MM-DD'), 3 );
INSERT INTO cinegrafistaCruzeiro ( cpfOpCamera, data, idMakingof )
	VALUES ( '875.457.499-96', to_date ('2006-11-29', 'YYYY-MM-DD'), 2 );
INSERT INTO cinegrafistaCruzeiro ( cpfOpCamera, data, idMakingof )
	VALUES ( '737.059.777-64', to_date ('2003-04-17', 'YYYY-MM-DD'), 1 );
INSERT INTO cinegrafistaCruzeiro ( cpfOpCamera, data, idMakingof )
	VALUES ( '578.965.093-21', to_date ('2007-03-06', 'YYYY-MM-DD'), 4 );
INSERT INTO cinegrafistaCruzeiro ( cpfOpCamera, data, idMakingof )
	VALUES ( '024.542.926-51', to_date ('2014-07-16', 'YYYY-MM-DD'), 5 );

/* TABLE parque */
INSERT INTO parque ( endereco, nome, cnpj, mapaFilePath )
	VALUES ( 'Vereda de Duarte, 249 Conjunto Providencia 57047989 Silveira / BA', 'Milena Lopes', '44.884.174/1223-90', 'Error accusantium ab nihil. Suscipit quidem necessitatibus molestiae.' );
INSERT INTO parque ( endereco, nome, cnpj, mapaFilePath )
	VALUES ( 'Lago Enrico Lima, 2 Nossa Senhora De Fátima 21318-201 Souza / AP', 'Murilo Jesus', '12.841.072/3357-98', 'Facilis praesentium veritatis debitis illo. Aliquid laudantium consequuntur corporis maxime architecto eligendi corpori' );
INSERT INTO parque ( endereco, nome, cnpj, mapaFilePath )
	VALUES ( 'Sítio Maitê Barros, 58 Paquetá 12181871 Lopes de Goiás / ES', 'Dr. Henrique Azevedo', '91.925.027/4799-83', 'Ex sint blanditiis vitae. Dignissimos debitis officia minus facilis.
Ad quisquam alias maxime. Ut saepe expedita dicta ne' );
INSERT INTO parque ( endereco, nome, cnpj, mapaFilePath )
	VALUES ( 'Sítio de Silva, 757 Eymard 35957626 Araújo / RJ', 'Natália Santos', '69.641.164/8605-26', 'Officiis numquam ipsam rem maiores optio voluptatem. Quibusdam iure amet alias voluptatibus consequuntur omni' );
INSERT INTO parque ( endereco, nome, cnpj, mapaFilePath )
	VALUES ( 'Viela de Nascimento, 93 Jardim Dos Comerciarios 89269-963 Alves Verde / MA', 'Yuri Ramos', '11.868.420/2833-33', 'Necessitatibus quo error tempore voluptate dignissimos. Recusandae facilis ratione sed officia' );

/* TABLE festaNoParque */
INSERT INTO festaNoParque ( dataFim, cnpjParque, nome, numeroConvidados, dataInicio )
	VALUES ( to_date ('2001-11-05', 'YYYY-MM-DD'), '69.641.164/8605-26', 'Dra. Helena Mendes', 846827, to_date ('2014-04-30', 'YYYY-MM-DD') );
INSERT INTO festaNoParque ( dataFim, cnpjParque, nome, numeroConvidados, dataInicio )
	VALUES ( to_date ('2000-03-05', 'YYYY-MM-DD'), '44.884.174/1223-90', 'Bernardo Cardoso', 324062, to_date ('2004-05-28', 'YYYY-MM-DD') );
INSERT INTO festaNoParque ( dataFim, cnpjParque, nome, numeroConvidados, dataInicio )
	VALUES ( to_date ('2004-09-15', 'YYYY-MM-DD'), '11.868.420/2833-33', 'Sra. Marcela Freitas', 847253, to_date ('2001-10-09', 'YYYY-MM-DD') );
INSERT INTO festaNoParque ( dataFim, cnpjParque, nome, numeroConvidados, dataInicio )
	VALUES ( to_date ('2000-04-26', 'YYYY-MM-DD'), '12.841.072/3357-98', 'Alícia Peixoto', 468832, to_date ('2013-01-05', 'YYYY-MM-DD') );
INSERT INTO festaNoParque ( dataFim, cnpjParque, nome, numeroConvidados, dataInicio )
	VALUES ( to_date ('2006-01-09', 'YYYY-MM-DD'), '91.925.027/4799-83', 'Sr. Enzo Barbosa', 346278, to_date ('2003-11-16', 'YYYY-MM-DD') );
/* NULL INSERTION FOR ATTRIBUTE dataFim AT TABLE festaNoParque  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE atracao */
INSERT INTO atracao ( poligono, cnpjParque, nome, dataFesta, numero )
	VALUES ( '{{679636, 728847, 226361}, {829139, 517943, 423340}, {289300, 491159, 223389}, {272483, 104726, 746044}, {727525, 172822, 237942}, {622439, 150159, 141480}, {274527, 809605, 272864}, {688503, 824341, 436699}, {418347, 427165, 686302}, {260078, 782766, 685928}}', '69.641.164/8605-26', 'Srta. Maitê FariasFernandes', to_date ('2014-04-30', 'YYYY-MM-DD'), 232466 );
INSERT INTO atracao ( poligono, cnpjParque, nome, dataFesta, numero )
	VALUES ( '{{809472, 856728, 326593}, {528572, 754922, 493419}, {455293, 547257, 274100}, {340167, 716277, 166255}, {174471, 406335, 800943}, {715859, 565051, 616017}, {652953, 766065, 509114}, {841915, 656798, 673256}, {861066, 521357, 686293}, {855263, 584885, 719231}}', '11.868.420/2833-33', 'Sr. Kaique Ribeiro', to_date ('2001-10-09', 'YYYY-MM-DD'), 574230 );
INSERT INTO atracao ( poligono, cnpjParque, nome, dataFesta, numero )
	VALUES ( '{{398708, 648536, 344448}, {628442, 448069, 243988}, {824537, 292399, 573661}, {621916, 676398, 434404}, {689403, 265355, 818070}, {741092, 179055, 634097}, {398692, 321947, 769302}, {686368, 513700, 527917}, {171568, 620407, 654781}, {844873, 480616, 316714}}', '12.841.072/3357-98', 'Rafael Vieira', to_date ('2013-01-05', 'YYYY-MM-DD'), 843751 );
INSERT INTO atracao ( poligono, cnpjParque, nome, dataFesta, numero )
	VALUES ( '{{425296, 212801, 879702}, {418290, 235612, 582364}, {114923, 330773, 757671}, {564002, 650358, 704840}, {544666, 224874, 243701}, {299476, 318259, 474076}, {202088, 113520, 316076}, {262123, 370085, 656089}, {840886, 665398, 142777}, {850679, 595589, 870462}}', '91.925.027/4799-83', 'Srta. Ana Lívia Azevedo', to_date ('2003-11-16', 'YYYY-MM-DD'), 810230 );
INSERT INTO atracao ( poligono, cnpjParque, nome, dataFesta, numero )
	VALUES ( '{{192454, 759414, 201132}, {213978, 628258, 572470}, {346917, 470863, 754740}, {136044, 803389, 765642}, {182603, 501644, 115531}, {354754, 642080, 666241}, {131531, 876039, 202092}, {888949, 849353, 129322}, {841614, 510534, 756178}, {664012, 853774, 136202}}', '44.884.174/1223-90', 'Marcelo Nogueira', to_date ('2004-05-28', 'YYYY-MM-DD'), 478034 );

/* TABLE opParque */
INSERT INTO opParque ( dataInicioParque, cpfOpCamera, data, cnpjParque, idCameraSecundaria, cpfAssistente )
	VALUES ( to_date ('2014-04-30', 'YYYY-MM-DD'), '578.965.093-21', to_date ('2007-03-06', 'YYYY-MM-DD'), '69.641.164/8605-26', 4, '875.457.499-96' );
INSERT INTO opParque ( dataInicioParque, cpfOpCamera, data, cnpjParque, idCameraSecundaria, cpfAssistente )
	VALUES ( to_date ('2013-01-05', 'YYYY-MM-DD'), '875.457.499-96', to_date ('2006-11-29', 'YYYY-MM-DD'), '12.841.072/3357-98', 3, '852.741.007-10' );
INSERT INTO opParque ( dataInicioParque, cpfOpCamera, data, cnpjParque, idCameraSecundaria, cpfAssistente )
	VALUES ( to_date ('2003-11-16', 'YYYY-MM-DD'), '024.542.926-51', to_date ('2014-07-16', 'YYYY-MM-DD'), '91.925.027/4799-83', 2, '024.542.926-51' );
INSERT INTO opParque ( dataInicioParque, cpfOpCamera, data, cnpjParque, idCameraSecundaria, cpfAssistente )
	VALUES ( to_date ('2001-10-09', 'YYYY-MM-DD'), '737.059.777-64', to_date ('2003-04-17', 'YYYY-MM-DD'), '11.868.420/2833-33', 5, '578.965.093-21' );
INSERT INTO opParque ( dataInicioParque, cpfOpCamera, data, cnpjParque, idCameraSecundaria, cpfAssistente )
	VALUES ( to_date ('2004-05-28', 'YYYY-MM-DD'), '852.741.007-10', to_date ('2006-02-16', 'YYYY-MM-DD'), '44.884.174/1223-90', 1, '737.059.777-64' );

/* TABLE pontoInstalacao */
INSERT INTO pontoInstalacao ( descricao, conectividade, coordenadas, cnpjParque, fonteAlimentacao, iluminacao, contatoAgua )
	VALUES ( 'Sunt natus amet laborum eum nihil cum consequatur. Sed quam a dignissimos debitis. Placeat omnis fugit. Rerum voluptatem corrupt', 'Dolor saepe totam perferend', '{327475, 863732, 532416}', '44.884.174/1223-90', 'Vero omnis eaque temporibus q', 'ALTA', TRUE );
INSERT INTO pontoInstalacao ( descricao, conectividade, coordenadas, cnpjParque, fonteAlimentacao, iluminacao, contatoAgua )
	VALUES ( 'Architecto similique eos distinctio omnis alias quaerat rem. Numquam minima aliquid culpa soluta. Occaecati possimus fugit.', 'Sed at harum suscipit moll', '{614673, 516078, 363487}', '91.925.027/4799-83', 'Tenetur error incidunt o', 'BAIXA', FALSE );
INSERT INTO pontoInstalacao ( descricao, conectividade, coordenadas, cnpjParque, fonteAlimentacao, iluminacao, contatoAgua )
	VALUES ( 'Iure rem aliquid at harum illum enim. Quos numquam ratione ipsa illum dolorem magni nam.', 'Ratione vitae dolor impedit', '{894633, 768800, 884332}', '69.641.164/8605-26', 'Eos maiores impedit mol', 'ALTA', TRUE );
INSERT INTO pontoInstalacao ( descricao, conectividade, coordenadas, cnpjParque, fonteAlimentacao, iluminacao, contatoAgua )
	VALUES ( 'Minima totam esse perspiciatis fugit ipsam sed. Molestiae eveniet eveniet inventore esse dicta. Fuga modi quae expedita necessit', 'Fuga dolore necessitatibus.', '{696924, 818499, 823204}', '11.868.420/2833-33', 'In animi eum ratione ', 'MEDIA', FALSE );
INSERT INTO pontoInstalacao ( descricao, conectividade, coordenadas, cnpjParque, fonteAlimentacao, iluminacao, contatoAgua )
	VALUES ( 'Minus pariatur quam. Provident dolorum rem reiciendis ullam. Vitae laudantium voluptas ad sit adipisci. Aliquam voluptate offici', 'Dolore dolor fugiat ea. Fac', '{396377, 508926, 824137}', '12.841.072/3357-98', 'Velit qui nam at ', 'BAIXA', TRUE );
/* NULL INSERTION FOR ATTRIBUTE descricao AT TABLE pontoInstalacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE conectividade AT TABLE pontoInstalacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE fonteAlimentacao AT TABLE pontoInstalacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE iluminacao AT TABLE pontoInstalacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */
/* NULL INSERTION FOR ATTRIBUTE contatoAgua AT TABLE pontoInstalacao  */
/* COMMAND DISCARDED TILPROGRAM SUPPORTS COMPOSITE KEYS */

/* TABLE pontoCamera */
INSERT INTO pontoCamera ( quantidade, cnpjParque, idCamera, data, coordenadas )
	VALUES ( 146958, '91.925.027/4799-83', 5, to_date ('2009-05-27', 'YYYY-MM-DD'), '{614673, 516078, 363487}' );
INSERT INTO pontoCamera ( quantidade, cnpjParque, idCamera, data, coordenadas )
	VALUES ( 483986, '69.641.164/8605-26', 1, to_date ('2007-10-26', 'YYYY-MM-DD'), '{894633, 768800, 884332}' );
INSERT INTO pontoCamera ( quantidade, cnpjParque, idCamera, data, coordenadas )
	VALUES ( 245733, '44.884.174/1223-90', 4, to_date ('2007-10-03', 'YYYY-MM-DD'), '{327475, 863732, 532416}' );
INSERT INTO pontoCamera ( quantidade, cnpjParque, idCamera, data, coordenadas )
	VALUES ( 620116, '11.868.420/2833-33', 2, to_date ('2008-08-12', 'YYYY-MM-DD'), '{696924, 818499, 823204}' );
INSERT INTO pontoCamera ( quantidade, cnpjParque, idCamera, data, coordenadas )
	VALUES ( 797607, '12.841.072/3357-98', 3, to_date ('2017-09-12', 'YYYY-MM-DD'), '{396377, 508926, 824137}' );

/* TABLE pontoEstrutura */
INSERT INTO pontoEstrutura ( idEstruturacao, quantidade, cnpjParque, data, coordenadas )
	VALUES ( 2, 396200, '12.841.072/3357-98', to_date ('2014-01-02', 'YYYY-MM-DD'), '{396377, 508926, 824137}' );
INSERT INTO pontoEstrutura ( idEstruturacao, quantidade, cnpjParque, data, coordenadas )
	VALUES ( 3, 428559, '69.641.164/8605-26', to_date ('2007-10-12', 'YYYY-MM-DD'), '{894633, 768800, 884332}' );
INSERT INTO pontoEstrutura ( idEstruturacao, quantidade, cnpjParque, data, coordenadas )
	VALUES ( 5, 685661, '44.884.174/1223-90', to_date ('2017-07-17', 'YYYY-MM-DD'), '{327475, 863732, 532416}' );
INSERT INTO pontoEstrutura ( idEstruturacao, quantidade, cnpjParque, data, coordenadas )
	VALUES ( 4, 258812, '11.868.420/2833-33', to_date ('2015-06-22', 'YYYY-MM-DD'), '{696924, 818499, 823204}' );
INSERT INTO pontoEstrutura ( idEstruturacao, quantidade, cnpjParque, data, coordenadas )
	VALUES ( 1, 860942, '91.925.027/4799-83', to_date ('2010-03-01', 'YYYY-MM-DD'), '{614673, 516078, 363487}' );

/* TABLE pontoSom */
INSERT INTO pontoSom ( numeroGrafo, quantidade, coordenadas, data, cnpjParque, idSonorizacao )
	VALUES ( 560715, 480375, '{894633, 768800, 884332}', to_date ('2004-05-02', 'YYYY-MM-DD'), '69.641.164/8605-26', 5 );
INSERT INTO pontoSom ( numeroGrafo, quantidade, coordenadas, data, cnpjParque, idSonorizacao )
	VALUES ( 358203, 788915, '{396377, 508926, 824137}', to_date ('2012-11-27', 'YYYY-MM-DD'), '12.841.072/3357-98', 2 );
INSERT INTO pontoSom ( numeroGrafo, quantidade, coordenadas, data, cnpjParque, idSonorizacao )
	VALUES ( 602263, 484676, '{894633, 768800, 884332}', to_date ('2001-05-11', 'YYYY-MM-DD'), '69.641.164/8605-26', 2 );
INSERT INTO pontoSom ( numeroGrafo, quantidade, coordenadas, data, cnpjParque, idSonorizacao )
	VALUES ( 333494, 289895, '{894633, 768800, 884332}', to_date ('2005-05-20', 'YYYY-MM-DD'), '69.641.164/8605-26', 3 );
INSERT INTO pontoSom ( numeroGrafo, quantidade, coordenadas, data, cnpjParque, idSonorizacao )
	VALUES ( 647560, 762438, '{696924, 818499, 823204}', to_date ('2003-04-28', 'YYYY-MM-DD'), '11.868.420/2833-33', 5 );
/* NULL INSERTION FOR ATTRIBUTE numeroGrafo AT TABLE pontoSom  */
INSERT INTO pontoSom ( numeroGrafo, quantidade, coordenadas, data, cnpjParque, idSonorizacao )
	VALUES ( NULL, 899235, '{327475, 863732, 532416}', to_date ('2011-10-17', 'YYYY-MM-DD'), '44.884.174/1223-90', 4 );
/* NULL INSERTION FOR ATTRIBUTE data AT TABLE pontoSom  */
INSERT INTO pontoSom ( numeroGrafo, quantidade, coordenadas, data, cnpjParque, idSonorizacao )
	VALUES ( 136770, 493304, '{696924, 818499, 823204}', NULL, '11.868.420/2833-33', 3 );

/* TABLE opera */
INSERT INTO opera ( idDrone, cnpjParque, cpfPiloto, dataFesta )
	VALUES ( 55135651, '12.841.072/3357-98', '024.542.926-51', to_date ('2013-01-05', 'YYYY-MM-DD') );
INSERT INTO opera ( idDrone, cnpjParque, cpfPiloto, dataFesta )
	VALUES ( 71701199, '11.868.420/2833-33', '578.965.093-21', to_date ('2001-10-09', 'YYYY-MM-DD') );
INSERT INTO opera ( idDrone, cnpjParque, cpfPiloto, dataFesta )
	VALUES ( 81329080, '91.925.027/4799-83', '737.059.777-64', to_date ('2003-11-16', 'YYYY-MM-DD') );
INSERT INTO opera ( idDrone, cnpjParque, cpfPiloto, dataFesta )
	VALUES ( 33692883, '69.641.164/8605-26', '875.457.499-96', to_date ('2014-04-30', 'YYYY-MM-DD') );
INSERT INTO opera ( idDrone, cnpjParque, cpfPiloto, dataFesta )
	VALUES ( 52523719, '44.884.174/1223-90', '852.741.007-10', to_date ('2004-05-28', 'YYYY-MM-DD') );

/* TABLE auxilia */
INSERT INTO auxilia ( cpfCopiloto, cnpjParque, cpfPiloto, dataFesta )
	VALUES ( '024.542.926-51', '11.868.420/2833-33', '852.741.007-10', to_date ('2001-10-09', 'YYYY-MM-DD') );
INSERT INTO auxilia ( cpfCopiloto, cnpjParque, cpfPiloto, dataFesta )
	VALUES ( '875.457.499-96', '44.884.174/1223-90', '737.059.777-64', to_date ('2004-05-28', 'YYYY-MM-DD') );
INSERT INTO auxilia ( cpfCopiloto, cnpjParque, cpfPiloto, dataFesta )
	VALUES ( '578.965.093-21', '69.641.164/8605-26', '024.542.926-51', to_date ('2014-04-30', 'YYYY-MM-DD') );
INSERT INTO auxilia ( cpfCopiloto, cnpjParque, cpfPiloto, dataFesta )
	VALUES ( '737.059.777-64', '91.925.027/4799-83', '875.457.499-96', to_date ('2003-11-16', 'YYYY-MM-DD') );
INSERT INTO auxilia ( cpfCopiloto, cnpjParque, cpfPiloto, dataFesta )
	VALUES ( '852.741.007-10', '12.841.072/3357-98', '578.965.093-21', to_date ('2013-01-05', 'YYYY-MM-DD') );

/* TABLE manutencao */
INSERT INTO manutencao ( data, idEquipamento, cpfTecnico )
	VALUES ( to_date ('2005-07-17', 'YYYY-MM-DD'), 5, '578.965.093-21' );
INSERT INTO manutencao ( data, idEquipamento, cpfTecnico )
	VALUES ( to_date ('2006-11-25', 'YYYY-MM-DD'), 3, '875.457.499-96' );
INSERT INTO manutencao ( data, idEquipamento, cpfTecnico )
	VALUES ( to_date ('2002-02-25', 'YYYY-MM-DD'), 1, '024.542.926-51' );
INSERT INTO manutencao ( data, idEquipamento, cpfTecnico )
	VALUES ( to_date ('2004-04-30', 'YYYY-MM-DD'), 2, '852.741.007-10' );
INSERT INTO manutencao ( data, idEquipamento, cpfTecnico )
	VALUES ( to_date ('2007-04-21', 'YYYY-MM-DD'), 4, '737.059.777-64' );

/* TABLE NUMBER TOTAL: 36 */
ROLLBACK;
