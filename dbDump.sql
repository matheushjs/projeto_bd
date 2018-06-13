--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('251.708.451-45', 'Dr. Nathan Pires', '76154089384', 'Núcleo Castro Trevo 48945345 Ribeiro / RO', 'OPCAMERA', NULL, '+55 (021) 2661 4147');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('349.809.222-18', 'Sra. Rebeca Azevedo', '02759864111', 'Esplanada da Mata, 25 Alto Vera Cruz 42222955 Ferreira / PR', 'ASSISTENTE', NULL, '+55 31 9452-5749');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('506.954.182-40', 'Dr. Vitor Gabriel Costela', '65429178373', 'Colônia Rodrigues, 59 Vila Formosa 82072687 Lopes Verde / PA', 'ASSISTENTE', NULL, '41 8867 6749');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('929.039.108-52', 'Sra. Alícia Lima', '49187230631', 'Recanto de Dias, 19 São Sebastião 47890-740 da Rocha / PB', 'TECNICO', NULL, '(031) 8564-9829');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('000.565.495-35', 'Luiz Henrique Souza', '30654289719', 'Travessa Alves, 31 Vila Independencia 3ª Seção 22465-232 Nunes / ES', 'ASSISTENTE', NULL, '+55 81 3873-5624');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('109.399.323-16', 'Davi Lucca Aragão', '45201768326', 'Esplanada de Rezende, 23 Vila Piratininga 14955-658 da Paz / BA', 'ASSISTENTE', NULL, '81 0053 4980');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('786.323.648-95', 'Juliana Melo', '70294635874', 'Lagoa da Cruz, 367 Castanheira 10296238 Pinto da Praia / PI', 'TECNICO', NULL, '(081) 3535 2633');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('396.898.046-74', 'Murilo Azevedo', '62057891411', 'Conjunto da Rosa Palmares 20092010 da Luz / RS', 'COPILOTO', NULL, '(041) 8899 4417');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('453.041.955-44', 'Mariane Caldeira', '58217903441', 'Praça de Viana, 77 Santa Rita 19167-269 Oliveira da Prata / AM', 'COPILOTO', NULL, '(031) 4417-0746');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('068.426.267-59', 'Elisa Rezende', '08673192595', 'Sítio Vitor Gabriel Silva Juliana 83577-744 Nogueira / TO', 'COPILOTO', NULL, '+55 21 8616-1903');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('484.017.848-19', 'Isadora Novaes', '75460912334', 'Viaduto de Cardoso,, 5 Beija Flor 02576666 Campos Alegre / PB', 'OPCAMERA', NULL, '+55 (021) 8128-7643');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('302.565.852-32', 'Gabriel Caldeira', '18436059719', 'Vereda Sales, 327 Novo Glória 02110234 da Cunha / DF', 'PILOTO', NULL, '(061) 7541 3001');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('831.607.903-33', 'Srta. Maysa Costela', '90842675167', 'Rodovia Rezende, 12 Santa Isabel 30119-156 Castro / BA', 'OPCAMERA', NULL, '(011) 0251-6145');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('604.092.522-69', 'Leandro Silva', '16285093768', 'Alameda Guilherme Pereira, 571 Esplanada 59942556 Rodrigues / AC', 'OPCAMERA', NULL, '41 0768 3550');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('320.803.493-66', 'Erick Oliveira', '27348691013', 'Residencial Peixoto, 58 Vila Nossa Senhora Do Rosário 45638601 Porto / MT', 'ASSISTENTE', NULL, '+55 (011) 0881 4183');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('139.925.159-95', 'Emanuelly Monteiro', '48675023162', 'Aeroporto de Nascimento, 738 São Jorge 3ª Seção 79246459 da Conceição / PI', 'COPILOTO', NULL, '+55 (081) 1233 9937');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('995.922.248-08', 'Mirella Ramos', '26130875959', 'Viaduto de Souza, 2 Paraíso 22818-537 Melo de Nunes / SP', 'OPCAMERA', NULL, '+55 21 2805-5102');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('521.931.067-90', 'Sr. Theo Lopes', '64210987549', 'Quadra de Costa, 10 Horto Florestal 82528-794 Castro / PA', 'PILOTO', NULL, '+55 71 5430-5235');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('806.355.458-48', 'Ana Clara Monteiro', '10257489649', 'Área Pereira, 89 Universitário 15320339 Cardoso, / GO', 'TECNICO', NULL, '(081) 9348 5102');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('657.523.633-56', 'Bruno Lopes', '07693145214', 'Jardim de Vieira, 7 São Tomaz 81481824 Gomes da Prata / SE', 'COPILOTO', NULL, '61 4552-5670');
INSERT INTO public.funcionario (cpf, nome, rg, endereco, cargo, equipe, telefonecsv) VALUES ('326.647.516-51', 'Caio Barbosa', '95702618467', 'Passarela Lavínia Castro, 27 Caiçara - Adelaide 93242986 Cavalcanti / MT', 'PILOTO', NULL, '71 8023 0834');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: tecnico; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.tecnico (cpf, especialidade) VALUES ('786.323.648-95', 'Odit ducimus velit natus neque. At reprehenderit asperiores mollitia ea repellendus architecto.Perspiciatis la');
INSERT INTO public.tecnico (cpf, especialidade) VALUES ('806.355.458-48', 'Quae possimus deleniti rerum dicta autem. Debitis sit excepturi. Adipisci enim sunt aperiam repellendus');
INSERT INTO public.tecnico (cpf, especialidade) VALUES ('929.039.108-52', 'Vero fugiat cum officiis facilis illo debitis. Iure occaecati adipisci consectetur. Necessitatibus s');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: copiloto; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.copiloto (cpf, habilitacao) VALUES ('396.898.046-74', 'Tenetur vel ');
INSERT INTO public.copiloto (cpf, habilitacao) VALUES ('139.925.159-95', 'Quisquam und');
INSERT INTO public.copiloto (cpf, habilitacao) VALUES ('068.426.267-59', 'Perspiciatis');
INSERT INTO public.copiloto (cpf, habilitacao) VALUES ('657.523.633-56', 'Nam cupidita');
INSERT INTO public.copiloto (cpf, habilitacao) VALUES ('453.041.955-44', 'Saepe aliqua');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: piloto; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.piloto (cpf, habilitacao) VALUES ('521.931.067-90', 'Laboriosam a');
INSERT INTO public.piloto (cpf, habilitacao) VALUES ('326.647.516-51', 'Totam totam ');
INSERT INTO public.piloto (cpf, habilitacao) VALUES ('302.565.852-32', 'Exercitation');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: assistente; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.assistente (cpf) VALUES ('109.399.323-16');
INSERT INTO public.assistente (cpf) VALUES ('000.565.495-35');
INSERT INTO public.assistente (cpf) VALUES ('506.954.182-40');
INSERT INTO public.assistente (cpf) VALUES ('349.809.222-18');
INSERT INTO public.assistente (cpf) VALUES ('320.803.493-66');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: opcamera; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.opcamera (cpf, iniciocarreira) VALUES ('995.922.248-08', '2009-07-12');
INSERT INTO public.opcamera (cpf, iniciocarreira) VALUES ('484.017.848-19', '2014-01-14');
INSERT INTO public.opcamera (cpf, iniciocarreira) VALUES ('604.092.522-69', '2001-01-26');
INSERT INTO public.opcamera (cpf, iniciocarreira) VALUES ('831.607.903-33', '2005-04-13');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: equipamento; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (1, 'Cupiditate omnis dolorum unde expedita. Est ducimus libero ', 'Gustavo Lopes', 718617, 'Nemo itaque optio perferendis', NULL, 'ESTRUTURACAO');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (2, 'Doloribus tempora fuga reprehenderit tempore. Suscipit nequ', 'Natália Costela', 727405, NULL, 'Aliquid fugiat tenetur id odio quod perferendis. Molestias voluptatum maxime nisi. Eius numquam enim quo numquam exercitationem. Quos repudiandae ipsum. Labore ab esse itaque accusantium soluta', 'SONORIZACAO ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (3, 'Odit sapiente expedita. Saepe saepe molestias eum dolor', 'Thiago Barbosa', 620955, 'Facere soluta aperiam ear', 'Mollitia a labore aut optio. Exercitationem reprehenderit earum vitae iure assumenda nobis ipsam. Necessitatibus explicabo accusantium praesentium', 'CAMERA      ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (4, 'Voluptatibus accusantium temporibus accusantium at odi', 'Enzo Gabriel Correia', 214305, 'Corporis rerum et ', 'Eligendi consequatur vitae eveniet atque sunt ipsum recusandae. Esse velit dignissimos. Assumenda iste eveniet perferendis placeat tempora. Atque itaque ullam at. Similique laudantium eos nihil', 'ESTRUTURACAO');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (5, 'Unde error at modi. Voluptates iusto ', 'João Vitor Ramos', 845277, 'Ad alias quisquam pe', 'Ut in doloribus perspiciatis amet maiores. Cupiditate totam praesentium adipisci nemo iure. Non cupiditate doloremque veniam. Quo unde amet qui et maiores', 'CAMERA      ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (6, 'Ullam labore sint dolore ullam. Error fugiat officiis', 'Kevin Lima', 184133, 'Mollitia accusantium dolore', 'Voluptatem tempore recusandae eum temporibus. Minus consequatur beatae in repudiandae quo corrupti. Quos vero dolores dolores in et', 'DRONE       ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (7, 'Ipsa sequi deserunt excepturi quis quis quisq', 'Letícia Melo', 178321, 'Repellat nulla fuga asperior', 'Eligendi maxime aperiam dolores dolor reprehenderit incidunt eligendi. Consectetur fugit explicabo adipisci. Magnam temporibus fuga. Explicabo fugiat quia vitae ipsam. Nisi rem quod fuga facere odit', 'ESTRUTURACAO');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (8, 'Corporis nihil reiciendis perspiciatis quod. Quae odit facer', 'Thomas Gomes', 626984, 'Inventore quae fugi', 'Reprehenderit aperiam magni quam est impedit perspiciatis. Aperiam perspiciatis perferendis optio assumenda ut cumque. Consequuntur non pariatur debitis ratione sint doloribus', 'DRONE       ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (9, 'Ipsa ipsam nihil nesciunt. Sequi asperiores ipsam neque ea', 'Fernando Rodrigues', 695361, 'Expedita quidem placeat exe', 'Ad omnis nam rerum. Perspiciatis nisi odio veniam reiciendis laborum dignissimos laudantium. Illum incidunt reiciendis est. Ratione iusto autem expedita', 'SONORIZACAO ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (10, 'Unde id ratione libero dolorem. ', 'Srta. Catarina Monteiro', 301371, 'Reiciendis quos quam cupiditat', 'Deserunt blanditiis voluptatibus minima quam. Accusantium cum blanditiis doloribus numquam modi. Nulla neque rem iure maxime corporis', 'DRONE       ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (11, 'Magnam saepe sint optio necessitatibus odit sint. Dele', 'Maysa Ribeiro', 437253, 'Perferendis incidunt a', 'Culpa voluptates temporibus consequuntur deserunt. Sunt quam quidem. Commodi excepturi a unde vitae expedita ipsum. Accusantium dicta quos repellat', 'SONORIZACAO ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (12, 'In veniam necessitatibus quasi. Perferendis occaecati facilis c', 'Letícia Moura', 475908, 'Rerum aliquid reiciendis do', 'Eos ratione itaque id consectetur. Corporis ex culpa culpa dolores. Nobis doloremque exercitationem. Tempora pariatur voluptatum provident porro dolorum hic. Id tempore inventore quia quas', 'SONORIZACAO ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (13, 'Fugit necessitatibus id doloribus ea aspe', 'Ana Beatriz Dias', 357178, 'Quasi ipsa eaque ex quisqua', 'Reprehenderit animi eos adipisci. Animi alias sunt tempora earum iure nam. In repellat sed maiores voluptatibus dignissimos harum', 'ESTRUTURACAO');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (14, 'Ipsa aperiam fugit. Maxime eos ab deleniti sapiente.', 'Davi Lucas da Conceição', 414441, 'Praesentium vitae praesen', 'Consequuntur eos impedit excepturi debitis maxime magni. Eius assumenda repellat ipsum eos tempora tempore', 'DRONE       ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (15, 'Illo corrupti accusamus amet tempora la', 'João Gabriel Azevedo', 375858, 'Autem optio minima facilis. ', 'Consequuntur consequatur perspiciatis dolorem veritatis. Soluta cumque nihil exercitationem. Veniam possimus ipsum consectetur quisquam. Consequuntur molestiae deserunt sunt quos dolorum fugiat', 'ESTRUTURACAO');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (16, 'Aliquam autem non iure sint quia.', 'Erick Pereira', 413866, 'Eaque omnis nam no', 'Provident quos nesciunt voluptas voluptas quia. Sunt inventore alias. Magni totam in sequi', 'DRONE       ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (17, 'Vel saepe aspernatur non suscipit.Rerum minim', 'Sofia da Luz', 378505, 'Pariatur dolores accusamus facer', 'Numquam odio pariatur. Libero et quasi. Corporis exercitationem deserunt tenetur. Aliquid sunt est doloribus. Magnam illo atque. Ipsam mollitia iusto laborum optio maiores suscipit', 'SONORIZACAO ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (18, 'Odio quisquam vel repellendus eos omnis. Por', 'Sra. Maria Sophia Nascimento', 121877, 'Esse soluta omnis perspiciatis ', 'Pariatur aliquid adipisci ullam animi. Praesentium odit eos deleniti minus ipsa. Quidem tenetur perspiciatis ipsum facere', 'CAMERA      ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (19, 'Perferendis fugiat quibusdam ut sed natus fugiat. ', 'Dr. Felipe da Costa', 236009, 'Laboriosam consequatur q', 'Quo corrupti vitae dignissimos saepe fugiat reprehenderit eligendi. Eaque aliquam occaecati vero et rem alias nihil', 'CAMERA      ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (20, 'Nulla consequuntur corporis quam voluptatum. Expedita nobis ', 'Mariane Novaes', 292667, 'Dolorum porro enim ip', 'Expedita similique debitis voluptatibus facilis placeat mollitia. Eum blanditiis alias eius', 'SONORIZACAO ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (21, 'Amet doloribus nostrum cum temporibus deleniti of', 'Sarah Monteiro', 386998, 'Dignissimos nam acc', 'Dolor exercitationem fuga amet. Error fugiat repellendus enim reiciendis doloremque', 'DRONE       ');
INSERT INTO public.equipamento (id, modelo, nome, quantidade, marca, descricao, tipo) VALUES (22, 'Id dignissimos iste iusto distinctio voluptates repell', 'Brenda Santos', 745003, 'Rem facilis numquam vero. Omnis', 'Distinctio quod enim molestias quis magnam libero. Ut in aliquam cupiditate tenetur corporis', 'CAMERA      ');


--
-- Name: equipamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('public.equipamento_id_seq', 22, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: estruturacao; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.estruturacao (id) VALUES (4);
INSERT INTO public.estruturacao (id) VALUES (1);
INSERT INTO public.estruturacao (id) VALUES (7);
INSERT INTO public.estruturacao (id) VALUES (15);
INSERT INTO public.estruturacao (id) VALUES (13);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: drone; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.drone (id, fontealimentacao, tempomaxvoo, alcanceremoto) VALUES (6, 'Molestiae modi provident ducimus.Incidunt repreh', 569347, 708723);
INSERT INTO public.drone (id, fontealimentacao, tempomaxvoo, alcanceremoto) VALUES (10, 'A corrupti omnis itaque accusantium. Aperiam quae qui. Nam ', 110953, 100300);
INSERT INTO public.drone (id, fontealimentacao, tempomaxvoo, alcanceremoto) VALUES (14, 'Itaque possimus occaecati neque reiciendis eligend', 667920, 853371);
INSERT INTO public.drone (id, fontealimentacao, tempomaxvoo, alcanceremoto) VALUES (8, 'Eius illum assumenda fugit cupidit', 399668, 437853);
INSERT INTO public.drone (id, fontealimentacao, tempomaxvoo, alcanceremoto) VALUES (16, 'Doloremque velit expedita dolor incidunt possimus sunt ve', 837443, 314512);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: sonorizacao; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.sonorizacao (id, potencia, posseeise) VALUES (12, 845179, false);
INSERT INTO public.sonorizacao (id, potencia, posseeise) VALUES (9, 226162, false);
INSERT INTO public.sonorizacao (id, potencia, posseeise) VALUES (20, 347517, true);
INSERT INTO public.sonorizacao (id, potencia, posseeise) VALUES (17, 638588, true);
INSERT INTO public.sonorizacao (id, potencia, posseeise) VALUES (11, 310311, false);
INSERT INTO public.sonorizacao (id, potencia, posseeise) VALUES (2, 253115, false);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: camera; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.camera (id, fontealimentacao, certificacaoip, resistentequeda, visaonoturna, zoomlongoalcance, estabilizadorimagem, conectividade) VALUES (19, 'Dolorum magnam delectus aut maxime eni', 'IP63', false, true, false, false, 'Cumque dolor beatae nostrum dicta officiis. Es');
INSERT INTO public.camera (id, fontealimentacao, certificacaoip, resistentequeda, visaonoturna, zoomlongoalcance, estabilizadorimagem, conectividade) VALUES (18, 'Odio minus velit expedita optio pariatur culpa. Consequat', 'IP67b', false, false, true, true, 'Esse iste consectetur aliquam ius');
INSERT INTO public.camera (id, fontealimentacao, certificacaoip, resistentequeda, visaonoturna, zoomlongoalcance, estabilizadorimagem, conectividade) VALUES (5, 'Sint natus est. Laborum ducimus itaque officia nemo rep', 'IP836', true, false, true, true, 'Placeat magnam eligendi quo neces');
INSERT INTO public.camera (id, fontealimentacao, certificacaoip, resistentequeda, visaonoturna, zoomlongoalcance, estabilizadorimagem, conectividade) VALUES (3, 'Tempore voluptas eius labore iste blandi', 'IP72', false, false, true, true, 'Assumenda aspernatur perferendis mollitia');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: registros; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.registros (iddrone, registro) VALUES (8, 'Tempore o');
INSERT INTO public.registros (iddrone, registro) VALUES (8, 'Repellend');
INSERT INTO public.registros (iddrone, registro) VALUES (6, 'Nemo sed ');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: cameraaerea; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: musico; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.musico (cpf, nome) VALUES ('065.551.457-12', 'Ana Sophia Ribeiro');
INSERT INTO public.musico (cpf, nome) VALUES ('452.408.069-56', 'Francisco da Cunha');
INSERT INTO public.musico (cpf, nome) VALUES ('005.221.904-41', 'Danilo Moreira');
INSERT INTO public.musico (cpf, nome) VALUES ('982.913.392-47', 'Melissa Sales');
INSERT INTO public.musico (cpf, nome) VALUES ('538.070.777-05', 'Isis Correia');
INSERT INTO public.musico (cpf, nome) VALUES ('125.994.422-91', 'João Gabriel Gomes');
INSERT INTO public.musico (cpf, nome) VALUES ('840.041.488-52', 'Maria Julia Almeida');
INSERT INTO public.musico (cpf, nome) VALUES ('394.042.282-21', 'Manuela Pires');
INSERT INTO public.musico (cpf, nome) VALUES ('292.272.542-18', 'Dr. Pedro Lucas Freitas');
INSERT INTO public.musico (cpf, nome) VALUES ('105.357.744-66', 'Maria Eduarda Mendes');
INSERT INTO public.musico (cpf, nome) VALUES ('635.127.726-14', 'Dr. Pedro Lucas Campos');
INSERT INTO public.musico (cpf, nome) VALUES ('084.359.631-61', 'Ana Lívia Barbosa');
INSERT INTO public.musico (cpf, nome) VALUES ('690.403.496-43', 'Samuel da Cruz');
INSERT INTO public.musico (cpf, nome) VALUES ('202.719.905-02', 'Larissa da Mata');
INSERT INTO public.musico (cpf, nome) VALUES ('535.881.369-64', 'Lucas Gabriel Cavalcanti');
INSERT INTO public.musico (cpf, nome) VALUES ('857.999.014-87', 'Kevin Novaes');
INSERT INTO public.musico (cpf, nome) VALUES ('428.461.333-57', 'Camila Moreira');
INSERT INTO public.musico (cpf, nome) VALUES ('539.584.402-23', 'Agatha Nogueira');
INSERT INTO public.musico (cpf, nome) VALUES ('385.451.714-41', 'Emanuella Gonçalves');
INSERT INTO public.musico (cpf, nome) VALUES ('698.473.191-01', 'Natália Cardoso,');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: banda; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Larissa Sales', '2004-02-27', NULL, 'CONTRATADA');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Luiz Gustavo Moreira', '2002-09-29', 'Veniam quasi maiores labore quae molestias. Dolor la', 'PARTICULAR');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Calebe da Paz', '2011-12-10', 'Aperiam illum possimus maiores. Odio officia aperiam o', 'CONTRATADA');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Bryan Silva', '2016-05-02', 'Officiis aut velit ratione. Fuga asper', 'CONTRATADA');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Clara da Luz', '2009-01-06', 'Praesentium ab nostrum amet repellat doloremque. Dign', 'PARTICULAR');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Joaquim Moraes', '2000-02-03', 'Enim iste perspiciatis. Sed temporibu', 'CONTRATADA');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Eduardo Aragão', '2014-03-25', 'Quidem optio nihil inventore sequi aut. Tenetur in sap', 'PARTICULAR');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Ana Carolina Castro', '2001-12-29', 'Occaecati nihil corporis exercitationem. Fugit accus', 'PARTICULAR');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Cecília Costela', '2015-01-23', 'Suscipit fugit distinctio. Harum laudantium quid', 'PARTICULAR');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Emanuel Novaes', '2018-11-11', 'Laudantium minus saepe porro facilis officiis ullam sapiente', 'CONTRATADA');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Gabrielly Novaes', '2005-02-05', 'Repellendus culpa facere corrupti occaecati. H', 'CONTRATADA');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Ian Rodrigues', '2013-12-29', 'Repellendus voluptas culpa ullam. Qui fugiat recusa', 'CONTRATADA');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Alice Monteiro', '2011-07-25', 'Perspiciatis unde sint vitae culpa. Tempora incidunt rep', 'PARTICULAR');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Kaique Duarte', '2011-12-11', 'Tenetur laboriosam illo. Ad odit architecto quas alias impedit ', 'CONTRATADA');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Maria Moura', '2000-11-12', 'Ipsam quis at sint ipsum. Ullam e', 'PARTICULAR');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Sr. Enrico da Costa', '2010-02-09', 'Provident dicta totam aliquam ut. Repudia', 'PARTICULAR');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Sarah da Luz', '2004-01-11', 'Blanditiis amet quam eos. Velit facere autem corrupti iste ', 'CONTRATADA');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Sophie Moura', '2003-12-13', 'Et praesentium doloremque id accusantium explicabo m', 'CONTRATADA');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Alana Gomes', '2016-05-26', 'Atque neque repudiandae molestias exe', 'PARTICULAR');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Ian Pinto', '2010-05-16', 'Aspernatur maxime quia nostrum doloremque explicabo volup', 'PARTICULAR');
INSERT INTO public.banda (nome, datacriacao, estilomusical, tipo) VALUES ('Dra. Evelyn Jesus', '2004-12-30', 'Est ipsa quas atque veritatis commodi. Consectetur a', 'CONTRATADA');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: compoe; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('635.127.726-14', 'Calebe da Paz', '2011-12-10');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('539.584.402-23', 'Joaquim Moraes', '2000-02-03');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('538.070.777-05', 'Bryan Silva', '2016-05-02');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('202.719.905-02', 'Ian Pinto', '2010-05-16');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('065.551.457-12', 'Sophie Moura', '2003-12-13');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('982.913.392-47', 'Alana Gomes', '2016-05-26');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('005.221.904-41', 'Kaique Duarte', '2011-12-11');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('202.719.905-02', 'Luiz Gustavo Moreira', '2002-09-29');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('538.070.777-05', 'Dra. Evelyn Jesus', '2004-12-30');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('428.461.333-57', 'Gabrielly Novaes', '2005-02-05');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('084.359.631-61', 'Gabrielly Novaes', '2005-02-05');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('698.473.191-01', 'Eduardo Aragão', '2014-03-25');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('125.994.422-91', 'Eduardo Aragão', '2014-03-25');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('840.041.488-52', 'Ian Rodrigues', '2013-12-29');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('105.357.744-66', 'Calebe da Paz', '2011-12-10');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('385.451.714-41', 'Sr. Enrico da Costa', '2010-02-09');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('452.408.069-56', 'Clara da Luz', '2009-01-06');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('394.042.282-21', 'Kaique Duarte', '2011-12-11');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('539.584.402-23', 'Emanuel Novaes', '2018-11-11');
INSERT INTO public.compoe (cpfmusico, nomebanda, datacriacaobanda) VALUES ('857.999.014-87', 'Bryan Silva', '2016-05-02');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: festanocruzeiro; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (582396, '2005-04-05', '2004-12-11', NULL, 'Natália Pires');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (648716, '2002-02-02', NULL, 316691, 'Sra. Emanuelly Pinto');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (816612, '2006-08-07', '2017-02-20', 358732, 'Raul Lima');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (799501, '2001-04-09', '2008-04-17', 544121, 'Ian Barros');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (449652, '2000-03-14', '2018-01-20', 794651, 'Carlos Eduardo Cavalcanti');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (347938, '2001-02-05', '2012-08-17', 677895, 'João Pedro Viana');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (734320, '2004-09-17', '2000-01-17', 631187, 'Srta. Caroline Porto');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (257756, '2011-02-10', '2014-06-21', 362284, 'João Vitor Barros');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (853180, '2012-07-08', '2000-04-26', 726947, 'Dra. Ana Clara Barbosa');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (337915, '2010-04-29', '2017-11-05', 468062, 'Diogo Martins');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (497612, '2017-02-03', '2013-04-05', 567037, 'Enzo Gabriel Gonçalves');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (185305, '2009-07-02', '2016-03-08', 315575, 'Lucas Gabriel Cavalcanti');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (753537, '2004-08-28', '2000-06-02', 679144, 'Dra. Nicole Santos');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (477575, '2014-02-03', '2009-01-15', 331574, 'Felipe Oliveira');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (180787, '2002-09-29', '2002-01-05', 203082, 'Augusto Silveira');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (772824, '2018-05-10', '2016-03-14', 299576, 'Sr. Nathan Rocha');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (683602, '2004-04-17', '2011-09-26', 861964, 'Bruno Dias');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (888507, '2013-06-24', '2001-09-01', 515940, 'Laura Pinto');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (202638, '2016-09-03', '2015-12-19', 707100, 'Emanuelly da Conceição');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (689067, '2012-10-23', '2005-10-20', 720923, 'Srta. Camila Costa');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (492274, '2002-08-08', '2012-12-10', 246738, 'Marcelo Alves');
INSERT INTO public.festanocruzeiro (imo, datainicio, datafim, numeroconvidados, nome) VALUES (233394, '2013-05-26', '2008-10-30', 369709, 'Breno Vieira');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: locaiscruzeiro; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (347938, '2001-02-05', 'Ad dolore deserunt optio veritatis. Corporis eius labore aliquam.Debitis ad culpa quidem asperiores sapi');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (734320, '2004-09-17', 'Sint officiis blanditiis nobis architecto ex optio. Exercitationem dolor eos asperiores eum est non iure. Aliquid quia min');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (772824, '2018-05-10', 'Dicta ea animi commodi similique non impedit dolores.Eligendi quidem omn');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (816612, '2006-08-07', 'Adipisci aspernatur dolores ducimus ipsam maxime omnis. Corporis voluptate facere molestiae.');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (497612, '2017-02-03', 'Officiis quo ullam labore. Veritatis sint expedita necessitatibus magnam placeat deleniti. Consequatur labore quod aut');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (799501, '2001-04-09', 'Dicta explicabo officiis. Doloremque sed quos placeat. Delectus aspernatur repellendus dolorem deleniti inventore.Hic co');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (888507, '2013-06-24', 'Minus aperiam facere deserunt odio delectus temporibus maxime. Possimus eligendi aperiam nulla expedita.Exercitationem numquam ');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (477575, '2014-02-03', 'Quibusdam aperiam repudiandae neque non quia. Soluta corporis ipsu');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (683602, '2004-04-17', 'Qui minima sit. Ipsa magnam nulla facilis.Laudantium repellendus exercita');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (689067, '2012-10-23', 'Unde repellat accusamus corrupti. Aut magnam voluptate voluptatum.');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (202638, '2016-09-03', 'Iste aut at id. Quas eius consequuntur unde.Corporis laborum earum dolore perspiciatis');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (257756, '2011-02-10', 'Repudiandae magni minima occaecati quas nesciunt. Assumenda eum placeat.Fuga error placeat inventore.');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (492274, '2002-08-08', 'Blanditiis at ipsam minima soluta quis. Rem et soluta nemo sapiente earum nobis quo.');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (233394, '2013-05-26', 'Dolorem ipsum quae nobis placeat maxime placeat. Non eos qui necessita');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (753537, '2004-08-28', 'Enim quisquam soluta. Ratione totam dolore sint asperiores tempora. Laboriosam placeat magnam.Deleniti maxime consequuntur al');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (185305, '2009-07-02', 'Et sint vitae consectetur incidunt impedit voluptates. Molestias');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (337915, '2010-04-29', 'Similique dignissimos repellat fugit. Quae vitae non totam veniam exce');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (180787, '2002-09-29', 'Officiis inventore in aut sed adipisci porro cumque. Eum saepe expedita a aspernatur.');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (853180, '2012-07-08', 'Nam eveniet vitae dignissimos. Suscipit placeat possimus dicta. Recusandae adipi');
INSERT INTO public.locaiscruzeiro (imo, datafesta, local) VALUES (449652, '2000-03-14', 'Corrupti beatae facere assumenda. Sapiente quia temporibus ad consectetur veniam. Vero sit natus adipis');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: show; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (1, 185305, '2009-07-02', 'Emanuel Novaes', '2018-11-11', '2010-03-26', '02:37:14', '2018-02-14 14:48:00', NULL);
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (2, 753537, '2004-08-28', 'Emanuel Novaes', '2018-11-11', '2018-10-26', '16:16:11', NULL, 'Libero modi quam.Voluptatem aliquid');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (3, 734320, '2004-09-17', 'Kaique Duarte', '2011-12-11', '2004-10-03', '02:57:20', '2001-03-20 00:05:00', 'Praesentium ipsam error fugit. Modi animi veritatis');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (4, 497612, '2017-02-03', 'Sarah da Luz', '2004-01-11', '2000-12-14', '15:35:51', '2005-09-24 11:40:48', 'Esse molestiae assumenda nostrum. N');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (5, 683602, '2004-04-17', 'Kaique Duarte', '2011-12-11', '2002-05-28', '00:36:45', '2012-02-06 08:07:07', 'Inventore at architecto magni eos m');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (6, 202638, '2016-09-03', 'Gabrielly Novaes', '2005-02-05', '2000-03-25', '19:00:19', '2001-11-20 23:05:58', 'Possimus labore animi amet eius officia ex.Er');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (7, 816612, '2006-08-07', 'Joaquim Moraes', '2000-02-03', '2011-07-22', '08:48:04', '2012-05-10 06:25:46', 'Modi aliquam eum. Autem blanditiis');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (8, 753537, '2004-08-28', 'Ana Carolina Castro', '2001-12-29', '2001-04-25', '17:37:00', '2016-08-10 13:15:41', 'Est laboriosam quasi voluptatem. Ex possimus delectus minima. An');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (9, 753537, '2004-08-28', 'Ian Pinto', '2010-05-16', '2005-06-29', '13:23:34', '2001-10-13 20:33:01', 'Eum ipsam molestiae sequi id rem duc');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (10, 347938, '2001-02-05', 'Clara da Luz', '2009-01-06', '2013-12-14', '07:13:32', '2007-04-21 13:47:12', 'Inventore ab itaque delectus dolor maiores s');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (11, 888507, '2013-06-24', 'Joaquim Moraes', '2000-02-03', '2006-10-21', '15:56:57', '2002-08-14 05:58:04', 'Quaerat fugit illum. Sunt illum provident assumenda. Unde ipsu');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (12, 853180, '2012-07-08', 'Dra. Evelyn Jesus', '2004-12-30', '2002-11-08', '12:47:31', '2011-06-04 23:27:26', 'Itaque officiis quisquam non. Ducimus autem susc');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (13, 772824, '2018-05-10', 'Alana Gomes', '2016-05-26', '2001-06-04', '04:37:50', '2016-06-01 10:32:04', 'Iusto distinctio eaque officiis ab accusantium et mollitia');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (14, 799501, '2001-04-09', 'Joaquim Moraes', '2000-02-03', '2010-12-24', '16:37:10', '2009-08-05 12:24:47', 'Commodi et alias veniam incidunt eum cum adipisci. Sunt maiore');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (15, 449652, '2000-03-14', 'Gabrielly Novaes', '2005-02-05', '2010-04-30', '05:25:26', '2000-10-20 06:26:00', 'Ea nihil illo. Nulla natus provident accus');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (16, 853180, '2012-07-08', 'Bryan Silva', '2016-05-02', '2012-08-17', '02:14:20', '2010-02-12 23:02:00', 'Vel rem recusandae harum tempori');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (17, 853180, '2012-07-08', 'Luiz Gustavo Moreira', '2002-09-29', '2007-12-19', '22:02:16', '2016-05-12 11:09:42', 'Atque tempore esse ipsum natus dol');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (18, 233394, '2013-05-26', 'Ana Carolina Castro', '2001-12-29', '2002-06-16', '04:06:52', '2012-12-18 13:39:41', 'Consequuntur nemo commodi magnam sed sunt dolorem. Delectus nem');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (19, 185305, '2009-07-02', 'Maria Moura', '2000-11-12', '2007-11-13', '11:22:34', '2017-11-17 15:28:32', 'Ipsam cupiditate occaecati laborum dignissimos eos ');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (20, 799501, '2001-04-09', 'Sophie Moura', '2003-12-13', '2000-07-17', '07:18:54', '2012-10-14 02:17:17', 'Quis tempora suscipit accusantium. Necessitatibus odi');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (21, 337915, '2010-04-29', 'Sophie Moura', '2003-12-13', '2004-08-08', '11:28:21', '2004-12-17 09:35:12', 'Culpa distinctio consectetur voluptatem reprehe');
INSERT INTO public.show (id, imo, datafesta, nomebanda, datacriacaobanda, data, horainicio, terminoprevisto, contrato) VALUES (22, 180787, '2002-09-29', 'Cecília Costela', '2015-01-23', '2012-06-11', '20:17:01', '2007-05-16 11:57:18', 'Totam consequuntur at excepturi quas qui. Eaque hi');


--
-- Name: show_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('public.show_id_seq', 22, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: showsonorizacao; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.showsonorizacao (showid, sonorizacaoid) VALUES (16, 9);
INSERT INTO public.showsonorizacao (showid, sonorizacaoid) VALUES (18, 9);
INSERT INTO public.showsonorizacao (showid, sonorizacaoid) VALUES (3, 17);
INSERT INTO public.showsonorizacao (showid, sonorizacaoid) VALUES (20, 12);
INSERT INTO public.showsonorizacao (showid, sonorizacaoid) VALUES (3, 11);
INSERT INTO public.showsonorizacao (showid, sonorizacaoid) VALUES (19, 9);
INSERT INTO public.showsonorizacao (showid, sonorizacaoid) VALUES (6, 20);
INSERT INTO public.showsonorizacao (showid, sonorizacaoid) VALUES (15, 2);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.album (id, imofesta, datafesta) VALUES (1, 853180, '2012-07-08');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (2, 888507, '2013-06-24');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (3, 816612, '2006-08-07');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (4, 337915, '2010-04-29');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (5, 180787, '2002-09-29');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (6, 477575, '2014-02-03');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (7, 497612, '2017-02-03');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (8, 689067, '2012-10-23');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (9, 347938, '2001-02-05');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (10, 753537, '2004-08-28');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (11, 734320, '2004-09-17');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (12, 202638, '2016-09-03');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (13, 683602, '2004-04-17');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (14, 799501, '2001-04-09');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (15, 449652, '2000-03-14');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (16, 185305, '2009-07-02');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (17, 257756, '2011-02-10');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (18, 492274, '2002-08-08');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (19, 772824, '2018-05-10');
INSERT INTO public.album (id, imofesta, datafesta) VALUES (20, 233394, '2013-05-26');


--
-- Name: album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('public.album_id_seq', 20, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: makingof; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (1, 477575, '2014-02-03');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (2, 753537, '2004-08-28');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (3, 799501, '2001-04-09');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (4, 202638, '2016-09-03');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (5, 816612, '2006-08-07');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (6, 347938, '2001-02-05');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (7, 734320, '2004-09-17');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (8, 449652, '2000-03-14');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (9, 233394, '2013-05-26');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (10, 257756, '2011-02-10');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (11, 853180, '2012-07-08');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (12, 888507, '2013-06-24');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (13, 492274, '2002-08-08');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (14, 337915, '2010-04-29');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (15, 772824, '2018-05-10');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (16, 689067, '2012-10-23');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (17, 185305, '2009-07-02');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (18, 497612, '2017-02-03');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (19, 683602, '2004-04-17');
INSERT INTO public.makingof (id, imofesta, datafesta) VALUES (20, 180787, '2002-09-29');


--
-- Name: makingof_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('public.makingof_id_seq', 20, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: opcomcamera; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.opcomcamera (cpfopcamera, data, camera, tipo) VALUES ('484.017.848-19', '2008-05-25', 73523497, 'CINEGRAFISTA');
INSERT INTO public.opcomcamera (cpfopcamera, data, camera, tipo) VALUES ('484.017.848-19', '2000-10-30', 73485477, 'PARQUE      ');
INSERT INTO public.opcomcamera (cpfopcamera, data, camera, tipo) VALUES ('484.017.848-19', '2005-10-16', 29771115, 'FOTOGRAFO   ');
INSERT INTO public.opcomcamera (cpfopcamera, data, camera, tipo) VALUES ('604.092.522-69', '2016-01-07', 85022441, 'CINEGRAFISTA');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: fotografocruzeiro; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.fotografocruzeiro (cpfopcamera, data, categoria, idalbum) VALUES ('604.092.522-69', '2016-01-07', 'JUNIOR      ', 4);
INSERT INTO public.fotografocruzeiro (cpfopcamera, data, categoria, idalbum) VALUES ('484.017.848-19', '2000-10-30', 'TECNICO     ', 18);
INSERT INTO public.fotografocruzeiro (cpfopcamera, data, categoria, idalbum) VALUES ('484.017.848-19', '2005-10-16', 'ESPECIALISTA', 2);
INSERT INTO public.fotografocruzeiro (cpfopcamera, data, categoria, idalbum) VALUES ('484.017.848-19', '2008-05-25', 'ESPECIALISTA', 2);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: cinegrafistacruzeiro; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.cinegrafistacruzeiro (cpfopcamera, data, idmakingof) VALUES ('484.017.848-19', '2005-10-16', 13);
INSERT INTO public.cinegrafistacruzeiro (cpfopcamera, data, idmakingof) VALUES ('484.017.848-19', '2008-05-25', 2);
INSERT INTO public.cinegrafistacruzeiro (cpfopcamera, data, idmakingof) VALUES ('484.017.848-19', '2000-10-30', 9);
INSERT INTO public.cinegrafistacruzeiro (cpfopcamera, data, idmakingof) VALUES ('604.092.522-69', '2016-01-07', 6);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: parque; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('19.537.194/6073-32', 'Dr. Calebe Freitas', 'Et error sequi ut adipisci minima enim. Sint libero labore reprehenderit nisi sequi magni. Esse veniam voluptatem', 'Esplanada Sofia da Rosa, 7 Campo Alegre 48939-422 Nunes / PI');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('36.512.592/4557-19', 'Bernardo Moreira', 'Reiciendis vero perferendis ipsa vero temporibus quibusdam. Pariatur repellat aliquam magnam.', 'Área de Moreira Flamengo 30049062 da Cunha / MS');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('13.044.258/2547-78', 'Dra. Rebeca da Cunha', 'Corporis voluptatem totam debitis perspiciatis. Quas velit atque. Est consectetur illum delen', 'Conjunto de Jesus, 513 Fernão Dias 01547-640 Costela do Oeste / MT');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('46.180.373/6303-35', 'Dra. Daniela Rocha', 'Voluptatum iusto deleniti. Nesciunt atque quia fuga recusandae. Blanditiis ab incidunt tempore omnis sint atq', 'Colônia Yuri Cavalcanti, 938 Embaúbas 17101-651 Freitas do Campo / RR');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('26.245.489/8965-60', 'Davi Luiz Cunha', 'Suscipit ipsum tempora minima voluptatem.Repudiandae sed dignissimos commodi. Fugit veniam animi hic. Repudiandae fuga', 'Parque Melo, 20 Morro Dos Macacos 79805181 da Cunha / PB');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('27.442.506/1305-69', 'Maysa Costa', 'Magnam reprehenderit suscipit odio cum explicabo accusantium. Dolore eligendi nam suscipit odio temp', 'Lago Clarice Vieira, 5 Vila Nossa Senhora Do Rosário 60745466 da Rosa de Melo / RR');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('09.804.751/8374-70', 'Dr. Vicente Aragão', 'Non blanditiis veritatis dolore tempore. Perferendis natus id sit pariatur. Hic neque reiciendis ad.Dicta a', 'Aeroporto de Nascimento, 71 Vila Da Luz 07182960 Peixoto da Mata / PA');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('04.987.095/0205-18', 'Sr. Cauã Dias', 'Nisi alias est dolor explicabo rem ipsam repellendus. Voluptatibus alias a esse iste fugit. Dolore', 'Loteamento da Conceição Conjunto Providencia 88745989 Moura / RN');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('55.048.235/1989-16', 'Heloísa Rezende', 'Omnis alias temporibus deleniti id harum. Provident fugit quis autem iste quod. Sit illum facere vitae unde corpor', 'Setor Rocha Penha 46042-667 Ramos / MA');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('08.829.763/6010-51', 'Lívia Cunha', 'Consequatur eaque exercitationem excepturi beatae pariatur facilis. Quia facilis hic omnis iste pariatur nisi. Ducimus ', 'Trecho Maria Luiza Alves, 33 Distrito Industrial Do Jatoba 82183-809 Novaes / RS');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('72.142.236/6055-05', 'Mariane da Cruz', 'Expedita corrupti incidunt totam porro. Architecto quas incidunt sint id possimus eaque molestias.Itaque dolorem ex r', 'Feira Isabelly Mendes, 15 Cruzeiro 81390-509 Mendes / SC');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('43.364.781/7512-72', 'Nathan da Mota', 'Repellendus tempora rerum veritatis non. Inventore eveniet tenetur eveniet ', 'Morro Alice Nogueira Conjunto Jatoba 10662803 Oliveira / PR');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('29.929.424/0952-65', 'Dr. Davi Lucca Cardoso', 'Amet minus delectus temporibus minus pariatur. Voluptas eius earum magnam aut.Dignissimos provident ratione ips', 'Quadra da Mata, 19 Vila Madre Gertrudes 3ª Seção 23689-036 Gonçalves / PA');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('84.408.814/5076-11', 'Joaquim da Mota', 'Illum vero facilis voluptates perferendis distinctio.Quidem possimus autem magnam. Aliquid quisquam labore. Nob', 'Lagoa de da Luz Paulo Vi 56524238 Mendes de Barros / RN');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('65.913.395/5128-27', 'João Vitor Caldeira', 'Magni repudiandae eius maxime quasi. Consequatur alias suscipit magnam r', 'Morro Correia Boa Viagem 77072852 da Paz do Sul / MS');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('84.306.766/4947-35', 'Benjamin Barros', 'Deleniti quasi voluptas non minus tempora occaecati. Delectus optio mollitia omnis ex. Blanditiis ear', 'Praça de Viana, 722 Horto Florestal 14659192 da Cruz / SE');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('88.383.183/3077-99', 'Srta. Emanuelly Nascimento', 'Expedita voluptas suscipit nam voluptatum aperiam saepe. Est inventore hi', 'Viaduto Pereira, 66 Nossa Senhora De Fátima 73578340 Costa de Sales / TO');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('57.776.139/6999-63', 'Júlia Silveira', 'Vitae deserunt molestiae. Inventore perspiciatis earum hic aut aspernatur debitis.Reiciendis saepe a', 'Viaduto de Nunes, 17 Serra 39988-257 da Conceição do Amparo / SC');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('32.560.068/5903-34', 'Raquel da Mata', 'Dignissimos et veniam laudantium unde possimus.Ipsum ut doloremque a rem earum.Quae nisi eveniet. Expe', 'Trevo Pinto, 61 Boa União 2ª Seção 77612970 Rezende / RJ');
INSERT INTO public.parque (cnpj, nome, mapafilepath, endereco) VALUES ('48.652.387/6524-84', 'Raul Azevedo', 'Quis expedita eligendi molestiae saepe aperiam dignissimos. Architecto laborum na', 'Campo Mendes Aeroporto 27142077 Aragão / AL');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: festanoparque; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('48.652.387/6524-84', '2009-06-14', NULL, 284387, 'Milena da Conceição');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('65.913.395/5128-27', '2009-10-20', '2017-02-18', 258781, 'Julia Mendes');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('13.044.258/2547-78', '2013-08-18', '2018-10-14', 134601, 'Rodrigo Martins');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('46.180.373/6303-35', '2011-08-08', '2001-01-28', 304884, 'Marcela Nunes');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('55.048.235/1989-16', '2003-09-06', '2010-08-08', 510322, 'Joaquim da Rocha');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('13.044.258/2547-78', '2016-02-18', '2006-12-17', 330762, 'Sarah Novaes');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('04.987.095/0205-18', '2013-02-21', '2007-05-20', 482729, 'Mariana Nogueira');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('65.913.395/5128-27', '2011-03-19', '2015-05-14', 124687, 'Ana Aragão');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('13.044.258/2547-78', '2004-10-26', '2004-03-19', 255155, 'Giovanna Castro');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('32.560.068/5903-34', '2018-08-24', '2003-04-29', 301150, 'Felipe Pereira');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('43.364.781/7512-72', '2017-11-20', '2016-08-22', 471273, 'Sr. Luiz Miguel Sales');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('29.929.424/0952-65', '2007-08-26', '2009-05-12', 452146, 'Ryan Peixoto');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('26.245.489/8965-60', '2014-02-20', '2004-12-30', 623464, 'Yuri Carvalho');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('29.929.424/0952-65', '2012-05-28', '2007-09-13', 325524, 'Ana Laura Sales');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('88.383.183/3077-99', '2000-05-07', '2002-03-29', 886939, 'Lucas Gabriel Correia');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('04.987.095/0205-18', '2012-05-26', '2009-10-19', 884828, 'Dr. Luigi Silva');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('13.044.258/2547-78', '2014-09-23', '2002-06-30', 649729, 'Leandro Duarte');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('72.142.236/6055-05', '2016-01-20', '2014-07-24', 158676, 'Ana das Neves');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('46.180.373/6303-35', '2018-05-28', '2012-05-26', 481948, 'Maria Fernanda da Costa');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('84.306.766/4947-35', '2007-11-17', '2016-11-02', 568212, 'Camila da Conceição');
INSERT INTO public.festanoparque (cnpjparque, datainicio, datafim, numeroconvidados, nome) VALUES ('65.913.395/5128-27', '2009-08-14', '2006-04-25', 607109, 'João Vitor da Rocha');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: atracao; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('88.383.183/3077-99', '2000-05-07', 635887, 'Rebeca Alves', '{{752747,725387,884185},{710968,705041,133524},{237438,253637,119626},{498177,374322,719663},{800591,260736,690526},{632032,424671,636766},{149889,189458,405285},{776238,156991,657807},{152025,421078,214627},{486770,746684,430874}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('13.044.258/2547-78', '2013-08-18', 165779, 'Maria Fernanda Jesus', '{{327433,348076,571663},{825323,286816,745039},{814854,284153,869534},{631867,852051,295468},{837792,336590,598803},{867444,169729,129648},{156347,564211,301663},{129047,348356,118616},{164714,892433,800925},{185125,509062,433075}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('88.383.183/3077-99', '2000-05-07', 879385, 'Levi Nogueira', '{{269308,434405,337297},{265606,374389,316581},{556770,182283,173950},{316193,545008,717396},{147929,677914,145016},{787889,567343,721589},{189910,784691,497298},{639535,660402,510590},{633234,801209,728942},{687727,828915,528535}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('13.044.258/2547-78', '2016-02-18', 597146, 'Luiz Henrique Novaes', '{{355541,777344,793032},{460509,658340,666567},{861410,221001,403785},{146409,802847,886633},{374031,615265,670642},{328906,465456,580501},{396116,843176,525302},{755611,128063,450221},{324291,394820,469350},{279389,656001,854220}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('88.383.183/3077-99', '2000-05-07', 476455, 'Bruno Silva', '{{577546,528143,750479},{736942,858859,446288},{322179,282893,584868},{572976,846544,308533},{658108,891779,560698},{173131,563740,789009},{577014,532049,335931},{636394,835154,139037},{603139,866251,231376},{281040,820876,163309}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('26.245.489/8965-60', '2014-02-20', 779182, 'Sr. João Guilherme Fogaça', '{{797215,631791,484193},{310400,183107,490320},{852452,664605,499715},{872315,517689,299912},{727039,294319,293742},{143320,256876,372895},{703138,162720,104362},{843357,277225,878037},{216152,193360,713180},{194896,789431,391613}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('72.142.236/6055-05', '2016-01-20', 293863, 'Sra. Stephany Mendes', '{{174361,661723,397033},{669373,134194,269480},{102265,474400,230679},{757113,597521,646475},{642367,521745,305308},{173694,282383,142572},{826144,512226,892117},{403991,336418,138628},{678556,831507,179657},{644535,428079,464294}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('13.044.258/2547-78', '2004-10-26', 705601, 'Milena Carvalho', '{{404265,347280,581672},{199220,499693,327870},{553183,434522,513370},{195052,181356,709428},{516811,141543,896864},{323112,216508,752403},{531985,726074,250229},{799420,883851,796955},{227269,108760,659933},{738986,185232,776845}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('13.044.258/2547-78', '2014-09-23', 634467, 'Anthony da Conceição', '{{734657,710375,687492},{169466,221918,444095},{473518,482366,527936},{401264,844009,490310},{593104,342813,872285},{580785,547780,877920},{150669,690510,506561},{385289,332188,440063},{482705,647941,377936},{324724,810482,299599}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('65.913.395/5128-27', '2009-10-20', 799340, 'Srta. Gabrielly Almeida', '{{580404,620248,867273},{239271,697151,619039},{647708,325192,402863},{453356,325030,650527},{622645,105707,397695},{488391,442609,807133},{183816,680115,535993},{661052,258752,894729},{185727,143966,534938},{780742,134700,483287}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('32.560.068/5903-34', '2018-08-24', 425740, 'Cecília Barbosa', '{{757299,465527,661826},{191736,146824,882695},{714056,530920,238730},{187247,386342,348837},{113804,227861,771340},{861284,580030,603202},{380560,748161,824026},{622241,438854,833708},{581002,238182,311179},{261212,602763,823818}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('13.044.258/2547-78', '2016-02-18', 437257, 'Juan Viana', '{{216042,550020,420503},{518391,198887,726750},{700980,204478,833726},{892930,116475,401361},{169152,870939,566513},{326721,638400,463149},{158102,460669,614948},{507328,576357,494386},{224512,173921,883985},{869828,485286,621305}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('88.383.183/3077-99', '2000-05-07', 807875, 'Ana Lívia Cardoso,', '{{186874,586892,710737},{792966,453844,129346},{194580,873914,813885},{538668,789729,249202},{880754,615418,463575},{678666,336148,417444},{770659,105164,644593},{240247,513032,725471},{832648,312051,239678},{696033,530768,188377}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('65.913.395/5128-27', '2009-08-14', 600120, 'Alice Jesus', '{{178235,359164,537059},{701255,277016,186004},{819869,403924,666273},{736331,272538,687669},{506213,768647,651744},{351432,111260,540632},{752161,372769,242064},{208650,802670,737589},{375841,720077,107382},{703250,620818,655575}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('84.306.766/4947-35', '2007-11-17', 357090, 'Milena da Costa', '{{596438,218664,883903},{618980,109794,561635},{431499,750900,148340},{324643,558884,870786},{749764,587800,243872},{360657,461280,387604},{412711,179246,399729},{748121,801346,486824},{147641,818670,198240},{508463,234607,133057}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('13.044.258/2547-78', '2013-08-18', 581471, 'Lavínia Cardoso,', '{{243362,621410,607182},{427760,355054,185588},{661473,446173,773285},{877573,226483,181847},{634946,708679,402385},{423091,294419,830961},{736205,232215,498781},{528147,199300,467639},{568585,874842,618325},{271063,392808,482319}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('26.245.489/8965-60', '2014-02-20', 315835, 'João Miguel Cavalcanti', '{{320539,711350,149446},{401008,898586,608207},{551508,745190,250395},{131601,215955,898777},{596102,716151,382522},{835396,190011,576361},{196107,871189,685229},{496790,687116,197369},{642266,640540,128585},{189989,364126,257816}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('32.560.068/5903-34', '2018-08-24', 404765, 'Sofia Silva', '{{464798,222811,524893},{846399,862916,738965},{652110,446784,844130},{122438,614263,483526},{637401,371814,869226},{673774,558491,858193},{157704,120785,200918},{360700,516972,424620},{111113,643912,464418},{862104,122845,772551}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('13.044.258/2547-78', '2014-09-23', 260128, 'Maria Fernanda Santos', '{{412019,835472,288873},{173810,598931,438146},{627102,723129,130593},{870449,471014,229729},{801102,338873,882357},{746622,427945,665204},{868027,555186,717694},{712018,811755,685900},{556868,549737,352853},{854595,303208,336547}}');
INSERT INTO public.atracao (cnpjparque, datafesta, numero, nome, poligono) VALUES ('29.929.424/0952-65', '2012-05-28', 288456, 'Alice Duarte', '{{409790,869463,596214},{351554,696310,161905},{157729,474286,618185},{178647,690830,629800},{775007,190825,830263},{568443,655136,744965},{151942,452684,679353},{510555,874347,747410},{249647,540542,592898},{518401,694486,464494}}');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: opparque; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: pontoinstalacao; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('04.987.095/0205-18', '{481035,709228,216934}', 'Vel quod assumenda laborum corporis. Doloremque magni maxime mollitia mollitia ex. Molestiae alias perspiciatis impedit. Volupta', 'Necessitatibus arch', 'ALTA ', false, NULL);
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('88.383.183/3077-99', '{683231,206381,264493}', 'Doloribus cupiditate at repudiandae deserunt. Quis cum officia facilis repellendus enim. Fuga a non necessitatibus nihil reicien', 'Dolores earum velit. Lab', 'MEDIA', NULL, 'Similique dolorem nam ea t');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('88.383.183/3077-99', '{693516,754407,171926}', 'A libero reiciendis sequi deleniti itaque nihil. Accusantium tenetur eaque hic veniam. Cum optio earum voluptas saepe consequunt', 'Inventore animi fuga. V', NULL, true, 'Tenetur maiores ');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('32.560.068/5903-34', '{807087,441735,362197}', 'Placeat inventore voluptatibus labore porro assumenda quos ut. Nostrum molestias aperiam nihil expedita rerum maxime. Explicabo ', NULL, 'BAIXA', true, 'Quas a ipsa illum quidem qua');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('36.512.592/4557-19', '{790650,273174,833295}', NULL, 'Labore quod autem exerc', 'MEDIA', true, 'Culpa iure nisi q');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('84.408.814/5076-11', '{384722,478891,775565}', 'Veniam expedita delectus harum eaque voluptas nesciunt. Suscipit quo officia nobis sunt similique necessitatibus labore. Esse ra', 'Ad illum quos optio est e', 'BAIXA', false, 'Modi molestiae nostrum ab ');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('29.929.424/0952-65', '{510223,852174,688075}', 'Numquam excepturi consequatur accusamus. Reiciendis error laboriosam ex. Rerum exercitationem aperiam voluptatum tempore iusto n', 'Dolor accusamus molestias e', 'ALTA ', true, 'Deserunt laudantium quae ist');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('84.408.814/5076-11', '{414061,173874,624633}', 'Alias reiciendis nam dolorem dignissimos maxime. Modi suscipit reprehenderit saepe aliquam inventore vero. Debitis delectus sit ', 'Soluta quisquam at adipisci prae', 'ALTA ', false, 'Atque cupiditate fugiat i');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('72.142.236/6055-05', '{168461,421814,665068}', 'Repellendus quos quaerat vitae perferendis voluptas omnis quasi. Deleniti accusantium vero aliquid. Delectus nobis deleniti reic', 'Occaecati est qu', 'BAIXA', false, 'Quas doloribus esse es');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('32.560.068/5903-34', '{897286,591672,577980}', 'Deserunt praesentium labore repudiandae maxime repellat fugit doloremque. Laborum placeat ut maiores.', 'At quisquam adipisc', 'ALTA ', true, 'Et quidem maxime dele');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('09.804.751/8374-70', '{534395,507393,140999}', 'Necessitatibus ex mollitia maxime aspernatur tempora tempore earum. Tenetur numquam voluptatibus asperiores fugit placeat eum cu', 'Neque accusantium corpor', 'ALTA ', true, 'Sit veniam sint magni. Illum');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('04.987.095/0205-18', '{747666,544534,393650}', 'Maxime aspernatur ducimus delectus ad expedita ex. Suscipit occaecati blanditiis debitis. Quo saepe libero cupiditate alias quod', 'Explicabo ducimus ', 'ALTA ', false, 'Quae amet magni nisi porro dol');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('29.929.424/0952-65', '{262063,742949,893018}', 'Repudiandae dicta a numquam pariatur. Adipisci cum numquam autem perspiciatis. Voluptatibus soluta commodi.', 'Placeat nisi illum consec', 'ALTA ', false, 'Repellendus autem ab. Nulla est');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('19.537.194/6073-32', '{872294,301122,602828}', 'Itaque quae maxime illo iste. Vitae labore nesciunt reprehenderit. Accusamus distinctio quis laborum iusto.', 'Modi repellendus nulla ab est', 'ALTA ', true, 'Eum totam facere eos soluta nequ');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('13.044.258/2547-78', '{548478,621184,735312}', 'Quam quisquam totam vero. Quo aut corporis deleniti doloremque. Nulla neque officiis tenetur asperiores.', 'Error esse id optio eum r', 'ALTA ', true, 'Placeat amet placeat accusa');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('27.442.506/1305-69', '{517368,468475,702675}', 'Autem recusandae amet sed blanditiis pariatur laboriosam. Deleniti accusantium soluta unde dolores.', 'Voluptatum modi ', 'BAIXA', false, 'Illum ipsum culpa accusamus.');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('08.829.763/6010-51', '{467633,400349,527818}', 'Explicabo dignissimos voluptatem in reiciendis. Possimus alias quos. Quos magnam blanditiis molestiae illum. Natus aliquid a asp', 'Similique culpa aperia', 'MEDIA', true, 'Minima explicabo quas cul');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('36.512.592/4557-19', '{832281,271909,811384}', 'Maxime quis earum. Aut modi repellendus occaecati assumenda. Asperiores enim minus laborum sed. Blanditiis deleniti quia impedit', 'Ad qui minus magni. Exercita', 'MEDIA', true, 'Temporibus nesciun');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('08.829.763/6010-51', '{434706,868743,244579}', 'Numquam quasi laboriosam eligendi. Impedit expedita ea sit sapiente. Rerum est esse odit animi.', 'Eveniet totam nobis ratione ', 'BAIXA', false, 'Labore quaerat solut');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('57.776.139/6999-63', '{140997,824773,863528}', 'Maxime totam facilis voluptates nobis illo. Inventore ipsa voluptate ducimus eveniet in.', 'Omnis pariatur p', 'BAIXA', true, 'Numquam autem beatae');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('04.987.095/0205-18', '{864689,702401,560794}', 'Ex molestias enim soluta laboriosam. Asperiores tempore animi asperiores omnis expedita dicta. Facere quibusdam dolor quos numqu', 'Nihil et dolores unde fug', 'ALTA ', true, 'Esse consectetur pariatur ');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('09.804.751/8374-70', '{579614,524712,149005}', 'Aliquid soluta quaerat modi adipisci. Quod corporis libero. Laborum pariatur fugit dolorem odit explicabo quasi sint. Velit prae', 'Consectetur officiis ', 'BAIXA', false, 'Fugiat ex pariatur rem minu');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('48.652.387/6524-84', '{175449,101674,208720}', 'Recusandae harum est rem veniam et optio quam. Molestiae consequuntur error deserunt aperiam quibusdam deleniti. Odio necessitat', 'Voluptatibus dignissim', 'MEDIA', false, 'Repellat sunt iusto. Qui ');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('36.512.592/4557-19', '{875663,858121,741928}', 'Expedita iste rem quaerat distinctio ratione provident. Molestias sed a praesentium quo. Atque blanditiis nulla similique quis d', 'Nulla reprehenderit velit in ', 'MEDIA', true, 'Culpa illo quam asperna');
INSERT INTO public.pontoinstalacao (cnpjparque, coordenadas, descricao, conectividade, iluminacao, contatoagua, fontealimentacao) VALUES ('08.829.763/6010-51', '{184132,448371,563564}', 'Eligendi ut ipsum. Maxime autem quam ipsa eos distinctio quas. Quia illum sequi veritatis asperiores. Amet officiis iusto iusto.', 'Eaque fugiat ratione delenit', 'MEDIA', true, 'Quos fuga ex odio ipsum f');


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: pontocamera; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.pontocamera (idcamera, cnpjparque, coordenadas, data, quantidade) VALUES (5, '08.829.763/6010-51', '{467633,400349,527818}', '2001-11-04', 311575);
INSERT INTO public.pontocamera (idcamera, cnpjparque, coordenadas, data, quantidade) VALUES (19, '08.829.763/6010-51', '{184132,448371,563564}', '2014-06-18', 803597);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: pontoestrutura; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.pontoestrutura (idestruturacao, cnpjparque, coordenadas, data, quantidade) VALUES (4, '72.142.236/6055-05', '{168461,421814,665068}', '2006-04-25', 891135);
INSERT INTO public.pontoestrutura (idestruturacao, cnpjparque, coordenadas, data, quantidade) VALUES (7, '08.829.763/6010-51', '{467633,400349,527818}', '2004-09-08', 506692);
INSERT INTO public.pontoestrutura (idestruturacao, cnpjparque, coordenadas, data, quantidade) VALUES (4, '32.560.068/5903-34', '{897286,591672,577980}', '2012-04-21', 287138);
INSERT INTO public.pontoestrutura (idestruturacao, cnpjparque, coordenadas, data, quantidade) VALUES (4, '84.408.814/5076-11', '{414061,173874,624633}', '2000-05-09', 430179);
INSERT INTO public.pontoestrutura (idestruturacao, cnpjparque, coordenadas, data, quantidade) VALUES (15, '04.987.095/0205-18', '{747666,544534,393650}', '2000-11-21', 278389);
INSERT INTO public.pontoestrutura (idestruturacao, cnpjparque, coordenadas, data, quantidade) VALUES (7, '32.560.068/5903-34', '{897286,591672,577980}', '2015-08-07', 702826);
INSERT INTO public.pontoestrutura (idestruturacao, cnpjparque, coordenadas, data, quantidade) VALUES (1, '36.512.592/4557-19', '{832281,271909,811384}', '2000-04-03', 289134);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: pontosom; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.pontosom (idsonorizacao, cnpjparque, coordenadas, data, quantidade, numerografo) VALUES (9, '29.929.424/0952-65', '{262063,742949,893018}', '2004-09-17', 572645, NULL);
INSERT INTO public.pontosom (idsonorizacao, cnpjparque, coordenadas, data, quantidade, numerografo) VALUES (11, '36.512.592/4557-19', '{832281,271909,811384}', '2014-02-22', 382627, 252156);
INSERT INTO public.pontosom (idsonorizacao, cnpjparque, coordenadas, data, quantidade, numerografo) VALUES (11, '09.804.751/8374-70', '{534395,507393,140999}', '2005-10-25', 799776, 743954);
INSERT INTO public.pontosom (idsonorizacao, cnpjparque, coordenadas, data, quantidade, numerografo) VALUES (9, '32.560.068/5903-34', '{897286,591672,577980}', '2014-09-15', 696889, 652017);
INSERT INTO public.pontosom (idsonorizacao, cnpjparque, coordenadas, data, quantidade, numerografo) VALUES (17, '29.929.424/0952-65', '{262063,742949,893018}', '2018-11-13', 187866, 122312);
INSERT INTO public.pontosom (idsonorizacao, cnpjparque, coordenadas, data, quantidade, numerografo) VALUES (20, '29.929.424/0952-65', '{262063,742949,893018}', '2011-12-20', 102947, 329449);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: opera; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.opera (cnpjparque, datafesta, cpfpiloto, iddrone) VALUES ('13.044.258/2547-78', '2013-08-18', '521.931.067-90', 52419037);
INSERT INTO public.opera (cnpjparque, datafesta, cpfpiloto, iddrone) VALUES ('32.560.068/5903-34', '2018-08-24', '326.647.516-51', 61501059);
INSERT INTO public.opera (cnpjparque, datafesta, cpfpiloto, iddrone) VALUES ('29.929.424/0952-65', '2007-08-26', '521.931.067-90', 51236471);
INSERT INTO public.opera (cnpjparque, datafesta, cpfpiloto, iddrone) VALUES ('84.306.766/4947-35', '2007-11-17', '302.565.852-32', 60511299);
INSERT INTO public.opera (cnpjparque, datafesta, cpfpiloto, iddrone) VALUES ('13.044.258/2547-78', '2014-09-23', '326.647.516-51', 19408384);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: auxilia; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: manutencao; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO public.manutencao (cpftecnico, idequipamento, data) VALUES ('806.355.458-48', 10, '2012-09-08');
INSERT INTO public.manutencao (cpftecnico, idequipamento, data) VALUES ('929.039.108-52', 19, '2016-08-02');


--
-- PostgreSQL database dump complete
--

