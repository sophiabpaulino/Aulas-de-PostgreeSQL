/*
SCHEMAS -> gaveta dentro do BANCO (cada schema tem suas próprias tabelas)
 1. No postgreSQL não se pode fazer JOIN entre BANCOS. Mas pode fazer JOIN entre SCHEMAS.

Objetos Locais (Tabelas, Colunas, Views): 
São os móveis e os funcionários que ficam dentro de uma sala específica (o banco de dados). 
Se você está na sala 1, não consegue acessar os móveis da sala 2 diretamente. Os comentários 
desses objetos ficam guardados em uma tabela interna chamada 
                              >> pg_description. 
Para ler, você usa 
                              >> obj_description.

Objetos Compartilhados (Bancos de dados, Usuários/Roles, Tablespaces): Eles não pertencem a uma sala, 
eles pertencem ao prédio inteiro. O usuário (como o postgres) pode ter a chave de várias salas. Os bancos de dados 
são as próprias salas. Como eles "existem" acima de tudo, o PostgreSQL guarda os comentários deles em um lugar 
separado, uma tabela chamada 
                              >> pg_shdescription (o "sh" vem de shared, que significa compartilhado). 
Para ler, você usa
                              >> shobj_description.
*/

SELECT current_database() AS banco_atual,   -- função  (ou variável) nativa do postgres, que retorna um valor no momento que é rodado. 
       current_schema()   AS schema_atual,  -- o AS serve para criar um apelido na hora que o programa for mostrar a consulta no display.
       current_user       AS usuario;    -- as variáveis globais como: user, time, date, timestamp são escritas sem atribuir uma função a elas no current. 


CREATE DATABASE db_universidade; -- para criar um DATABASE nós utilizamos o CREATE DATABASE db_nome.

COMMENT ON DATABASE db_universidade IS 'Aula 06 - CRUD'; -- Utilizamos COMMENT ON DATABASE db_nome IS '.......' serve justamente para 
-- adicionar, alterar ou remover uma descrição do database

SELECT d.datname AS banco,
       shobj_description(d.oid, 'pg_database') AS descricao  -- mostrar a descrição dos databases.
  FROM pg_database d
 WHERE d.datname LIKE 'db%'
 ORDER BY d.datname;             -- ordenar pelo nome 

