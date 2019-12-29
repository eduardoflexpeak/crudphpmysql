-- CRIA UM BANCO DE DADOS COM O NOME contatos
CREATE DATABASE contatos;

-- DEFINE QUE O BANCO QUE VAI SER UTILIZADO PARA OS PRÓXIMOS SCRIPTS
USE contatos;

-- CRIA UMA TABELA CHAMADA contatos NO BANCO QUE ESTÁ SELECIONADO
CREATE TABLE contatos (
    id integer PRIMARY KEY AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    telefone varchar(50) NOT NULL
);

-- FAZ A INSERÇÃO DE REGISTROS NA TABELA DE contatos
INSERT INTO contatos (nome, telefone) VALUES ("Eduardo", "993884004");
INSERT INTO contatos (nome, telefone) VALUES ("Maria", "987564534");

-- ATUALIZA O nome DO contato QUE POSSUI O id = 2, NO NOSSO CASO, A Maria
UPDATE contatos SET nome = "Teste" WHERE id = 2;

-- EXCLUI UM contato QUE possui o id = 2, NO NOSSO CASO, A MARIA
DELETE FROM contatos WHERE id = 2;

-- SELECIONA TODAS AS COLUNAS DA TABELA contatos E EXIBE
SELECT * FROM contatos;









