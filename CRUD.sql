/* 
Parâmetro: é uma variável ou espaço reservado definido para receber um valor. (Usados em funções)
Argumento: é o valor passado para um parâmetro, procedimento, consulta em tempo de execução. O comando SELECT é o 
mais utilizado em bancos de dados.

OBS: No PostgreSQL cada banco é um ambiente isolado, e trocar de banco significa abrir OUTRA conexão. Por isso,
não existe USE. 

COMANDOS PSQL (Por começar com barra invertida (\), ele é um "metacomando" exclusivo da interface de linha de comando do 
PostgreSQL, e não uma instrução SQL padrão. Ele não funcionará se você tentar executá-lo em interfaces gráficas como o pgAdmin ou 
DBeaver.): 

1 - \c database (abreviação de \connect) -> é usado para conectar-se a um banco de dados diferente. Quando você executa esse
comando, o psql encerra a conexão com o banco de dados atual e abre uma nova conexão com o banco especificado.

2 - \d tb_alunos -> como listar as colunas de uma tabela para ver seus tipos de dados (texto, número, data) e chaves.

*/
