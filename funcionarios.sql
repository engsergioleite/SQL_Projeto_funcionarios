-- Questão 1 e 2: Criação e visualização inicial

CREATE TABLE funcionarios(
    id INT PRIMARY KEY, 
    nome VARCHAR(100),
    departamento VARCHAR(100),
    salario FLOAT
);

INSERT INTO funcionarios
(id, nome, departamento, salario)
VALUES
(1,  'Heitor Vieira',  'Financeiro',  4959.22),
(2,  'Daniel Campos',  'Vendas',  3884.44),
(3,  'Luiza Dias',  'TI',  8205.78),
(4,  'Davi Lucas Moraes',  'Financeiro',  8437.02),
(5,  'Pietro Cavalcanti',  'TI',  4946.88),
(6,  'Evelyn da Mata',  'Vendas',  5278.88),
(7,  'Isabella Rocha',  'Marketing',  4006.03),
(8,  'Sra. Manuela Azevedo',  'Vendas',  6101.88),
(9,  'Brenda Cardoso',  'TI',  8853.34),
(10, 'Danilo Souza',  'TI',  8242.14);

SELECT * FROM funcionarios;

-- Questão 3 a 5 e: Consultas com filtro

SELECT nome FROM funcionarios WHERE departamento = 'Vendas'; 

SELECT * FROM funcionarios where salario > 5000;

SELECT DISTINCT departamento FROM funcionarios; 

-- Questão 6: Altera salários da TI

UPDATE funcionarios SET salario = 7500 WHERE departamento = 'TI'; 

-- Questão 7: Deleta funcionarios que ganham menos de 4000

DELETE FROM funcionarios WHERE salario < 4000;

-- Questão 8: Selecione os nomes e salários dos funcionários
-- do departamento de "Vendas" com salário >= 6000

SELECT nome, salario FROM funcionarios where salario >= 6000;

-- Questão 9: Criar tabela projetos

PRAGMA foreign_keys = ON; -- Ativa o suporte a chave estrangeira no SQLite do VSCODE

CREATE TABLE projetos (
id_projeto INT PRIMARY KEY,
nome_projeto VARCHAR(100),
id_gerente INT, 
FOREIGN KEY (id_gerente) REFERENCES funcionarios (id)
);

INSERT INTO projetos
(id_projeto, nome_projeto, id_gerente)
VALUES
('1', 'netuno', '10'),
('2', 'plutao', '11'),
('3', 'saturno', '12');

SELECT * FROM projetos WHERE id_gerente = 11;

-- Questão 10: Remover a tabela funcinarios do DB

DROP TABLE funcionarios;