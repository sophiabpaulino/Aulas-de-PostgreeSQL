/*
SCHEMAS -> gaveta dentro do BANCO (cada schema tem suas próprias tabelas)
 1. No postgreSQL não se pode fazer JOIN entre BANCOS. Mas pode fazer JOIN entre SCHEMAS.
*/

SELECT current_database() AS banco_atual,   -- função  (ou variável) nativa do postgres, que retorna um valor no momento que é rodado. 
       current_schema()   AS schema_atual,  -- o AS serve para criar um apelido na hora que o programa for mostrar a consulta no display.
       current_user       AS usuario;    -- as variáveis globais como: user, time, date, timestamp são escritas sem atribuir uma função a elas no current. 


CREATE DATABASE db_universidade; -- para criar um DATABASE nós utilizamos o CREATE DATABASE db_nome.

COMMENT ON DATABASE db_universidade IS 'Aula 06 - CRUD'; -- Utilizamos COMMENT ON DATABASE db_nome IS '.......' serve justamente para 
-- adicionar, alterar ou remover uma descrição do database
