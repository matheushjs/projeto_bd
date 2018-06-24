# Definindo Escopo para a Aplicação do Projeto de BD

### Conceitos importantes
- Funcionário
  - Operador de Câmera
  - Assistente
  - Técnico
  - Piloto
  - Co-Piloto
- Equipamento
  - Câmera
  - Drone
  - Estruturação
  - Sonorização
- Festa no Cruzeiro
  - Making Of
  - Álbum
  - Bandas (Contratada/Particular)
    - Músicos
  - Shows  
  - Fotógrafo
  - Cingrafista  
- Festa no Parque
  - Parque
  - Atração
  - Pontos de Instalação
  - Operador-Parque
  
## Operações disponíveis na aplicação
- Emitir relatórios
  - Funcionários escalados para uma festa (~~técnicos~~)
  - Manutenções feitas em um ou todos os equipamentos
    - Possívels filtros: 
      - Data; 
      - Intervalo entre datas;
      - Equipamento;
      - Técnico que fez a manutenção;
      - Festas as quais o equipamento foi utilizado.
  - Funcionários da empresa  
  - Equipamentos da empresa
  - Festas que a empresa participou
- CRUD festas em cruzeiros
- CRUD shows
- Alocar operador de câmera com câmera para uma festa no cruzeiro
  - Incluir fotógrafos em festas em cruzeiros
  - Incluir cinegrafistas em festas em cruzeiros

`A partir do sistema de banco de dados, será possível consultar quais operadores de câmera
trabalharam com quais modelos de câmeras e em quais festas, as características dessas câmeras,
drones utilizados, pilotos e co-pilotos responsáveis pelos drones e também os assistentes que auxiliaram
os operadores na festa.`

`Com o banco de dados, deverá ser possível consultar os equipamentos sonoros e de estruturacão
instalados em um parque, suas coordenadas, suas especificações e o grafo numerado ao qual cada
um pertence.`

`Dessa forma, é possível consultar quais fotógrafos e cinegrafistas trabalharam num determinado
evento assim como acessar o álbum e o making of que lhe pertence.`

`Com este histórico armazenado, será possível consultar quais bandas e quais artistas trabalharam
com a EISE.`

## Alimentação inicial da base de dados
Para tornar mais simples a aplicação, considera-se que as informações das seguintes entidades já estarão cadastradas na base de dados:
- Funcionários
- Equipamentos
- Bandas
- Músicos
- Parques
- Manutenções
- Pontos de Instalação [(?)](#myfootnote1)

<a name="myfootnote1">(?)</a>: Pode estar inicialmente na base de dados como também pode ser inserido por meio da aplicação, decidir qual o mais interessante para a aplicação.
