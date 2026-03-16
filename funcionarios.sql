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

-- Questão 3 e 4 e: Consultas com filtro

SELECT nome FROM funcionarios WHERE departamento = 'Vendas'; 

SELECT * FROM funcionarios where salario > 5000;

SELECT DISTINCT departamento FROM funcionarios; 

