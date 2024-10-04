# PI_I-B
Projeto Integrador I-B - PUCGO - Banco de Dados

# Projeto de Banco de Dados Relacional

## Introdução

O desenvolvimento de um projeto de banco de dados relacional envolve uma sequência estruturada e planejada de etapas essenciais. Inicialmente, a análise cuidadosa dos requisitos é fundamental para compreender profundamente o problema a ser solucionado e levantar todas as necessidades funcionais do sistema.

Em seguida, no projeto conceitual, é criada uma visão abstrata e de alto nível dos dados, definindo as principais entidades e seus relacionamentos, utilizando o modelo Entidade-Relacionamento. Essa etapa permite visualizar a estrutura lógica do banco de dados, estabelecendo as bases para as próximas fases.

Avançando para o projeto lógico, detalham-se as estruturas de armazenamento, como tabelas, chaves primárias, chaves estrangeiras e os tipos de dados das colunas. Nesta etapa, a modelagem lógica do banco de dados é refinada, preparando-o para a implementação física.

Por fim, no projeto físico, a estrutura de armazenamento é implementada no Sistema Gerenciador de Banco de Dados (SGBD), utilizando a linguagem SQL para criar o banco de dados com todos os detalhes necessários para atender eficazmente às demandas inicialmente identificadas. Essa etapa final traduz o modelo lógico em uma implementação concreta, garantindo a operacionalidade do sistema.

Essa abordagem estruturada e sistemática no desenvolvimento de um projeto de banco de dados relacional assegura que todas as etapas sejam devidamente planejadas e executadas, resultando em um sistema de banco de dados robusto, eficiente e alinhado com as necessidades do negócio.

## Desenvolvimento

### a) Modelagem Conceitual

A etapa da modelagem conceitual desempenha um papel fundamental na construção do banco de dados, pois estabelece uma visão abstrata e de alto nível dos dados. Nesta fase, é criado o modelo Entidade-Relacionamento (ER), que explicita claramente as entidades e seus relacionamentos.

O modelo ER desenvolvido neste projeto apresenta as principais entidades, seus atributos e as relações entre elas. A entidade "Paciente" se relaciona com a entidade "Vacina" através da relação "Recebe", com uma cardinalidade 0,n para ambos os lados. Isso significa que um paciente pode receber 0 ou mais vacinas, e uma vacina pode ser aplicada em 0 ou mais pacientes.

É importante ressaltar que os atributos de cada entidade são devidamente identificados e caracterizados no modelo conceitual. Os atributos chave, que servem como identificadores únicos para cada entidade, são representados pela notação da bola preta.

Essa visão conceitual do banco de dados fornece uma base sólida para a etapa seguinte de modelagem lógica, na qual as estruturas de armazenamento serão detalhadas e refinadas. A modelagem conceitual garante que a estrutura do banco de dados esteja alinhada com as necessidades e requisitos do sistema.

### b) Modelagem Lógica

A modelagem lógica representa uma etapa crucial no desenvolvimento do banco de dados, pois traduz a visão conceitual em uma estrutura de armazenamento mais próxima da implementação no Sistema Gerenciador de Banco de Dados (SGBD). Nesta fase, as entidades são mapeadas como tabelas, e os relacionamentos são representados pelos vínculos entre elas.

Partindo do modelo Entidade-Relacionamento (ER) conceitual, foram criadas três tabelas principais: "Paciente", "Recebe" e "Vacina". Cada uma dessas tabelas possui colunas que correspondem aos atributos definidos no modelo conceitual.

Na tabela "Paciente", os atributos do modelo conceitual foram diretamente mapeados como colunas, e a chave primária (identificada pela chave amarela) foi definida para garantir a unicidade de cada registro.

A tabela "Recebe" incorpora as cardinalidades do modelo conceitual, estabelecendo a conexão entre as entidades "Paciente" e "Vacina". Nesta tabela, foram adicionadas duas chaves estrangeiras (representadas pelos losangos vermelhos), que permitem o relacionamento entre as demais tabelas.

Na modelagem lógica, os tipos de dados e as restrições de cada coluna são especificados com mais detalhes. Por exemplo, a coluna "CPF" foi definida para aceitar apenas 11 caracteres, enquanto a coluna "Nascimento" aceita apenas valores do tipo data no formato "AAAA-MM-DD". Além disso, a coluna "Escolaridade" foi definida como um campo de tamanho variável (VARCHAR), diferente do tipo CHAR, que possui um tamanho fixo.

Essa etapa de modelagem lógica garante que a estrutura do banco de dados esteja alinhada com as necessidades do sistema, preparando-o adequadamente para a implementação física no SGBD.

### c) Modelagem Física

A modelagem física representa a etapa final na construção do banco de dados, na qual a estrutura lógica é implementada utilizando a linguagem SQL (Structured Query Language) em um Sistema Gerenciador de Banco de Dados (SGBD) específico.

Neste projeto, foi utilizado o MySQL Workbench, que permite a transformação automática do modelo lógico em código SQL. Através da função "Forward Engineer", o modelo lógico previamente desenvolvido é convertido em instruções SQL para a criação do banco de dados.

Primeiramente, é necessário criar um novo banco de dados (database) usando o comando `CREATE DATABASE`. Em seguida, seleciona-se o banco de dados recém-criado com o comando `USE` para que as tabelas sejam geradas dentro dele.

O código SQL gerado automaticamente pelo MySQL Workbench é então executado, criando as três tabelas principais: "Paciente", "Recebe" e "Vacina". Essa implementação física segue exatamente a estrutura definida na modelagem lógica, incluindo as colunas, tipos de dados, chaves primárias e chaves estrangeiras.

As chaves estrangeiras estabelecem os relacionamentos entre as tabelas, permitindo que os dados sejam correlacionados. Por exemplo, na tabela "Recebe", as chaves estrangeiras possibilitam acessar e relacionar informações tanto dos pacientes quanto das vacinas.

Após a criação das tabelas, os dados podem ser inseridos utilizando o comando `INSERT INTO`. Posteriormente, consultas podem ser realizadas por meio do comando `SELECT FROM`, inclusive com a possibilidade de juntar (`JOIN`) informações de múltiplas tabelas.

Essa etapa final de modelagem física assegura que a estrutura do banco de dados esteja pronta para ser utilizada e atender às necessidades do sistema.

## Conclusão

O desenvolvimento do projeto de banco de dados relacional envolveu uma abordagem estruturada e sistemática, composta pelas etapas de modelagem conceitual, lógica e física.

Na modelagem conceitual, foi criado o modelo Entidade-Relacionamento (ER), que permitiu estabelecer uma visão abstrata e de alto nível das entidades principais, seus atributos e os relacionamentos entre elas. Essa etapa forneceu uma base sólida para as fases subsequentes.

Em seguida, a modelagem lógica traduziu o modelo conceitual em uma estrutura de armazenamento mais próxima da implementação no Sistema Gerenciador de Banco de Dados (SGBD). As entidades foram mapeadas como tabelas, com colunas correspondentes aos atributos definidos anteriormente. Os relacionamentos foram representados por meio de chaves estrangeiras, mantendo as cardinalidades estabelecidas no modelo conceitual.

Finalmente, na modelagem física, o banco de dados foi implementado utilizando a linguagem SQL no MySQL Workbench. O código SQL foi gerado automaticamente a partir do modelo lógico, criando as tabelas, colunas, tipos de dados e restrições necessárias. Essa etapa final garantiu que a estrutura do banco de dados estivesse pronta para receber os dados e atender às necessidades do sistema.

Essa abordagem estruturada e planejada no desenvolvimento do projeto de banco de dados relacional assegurou que todas as etapas fossem devidamente executadas, resultando em um sistema de banco de dados robusto, eficiente e alinhado com os requisitos do problema a ser solucionado.
