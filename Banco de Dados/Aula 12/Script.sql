-- 1) MER em MR
Cliente (CPF, nome_cli, id_endereco*)
Telefone_Cliente(id_telefone, telefone, CPF*)
Animal(id_animal, nome_ani, especie, CPF*)
Animal_Consulta(id_consAnimal, id_animal*, id_consulta*, CRV*)
Consulta(id_consulta, data_consulta, valor)
Enfermidade(id_enfermidade, descricao, gravidade)
Veterinario(CRV, nome_vet, experiencia, salario)

-- 2) Criação das tabelas
CREATE TABLE cliente(
	CPF VARCHAR(11) NOT NULL,
	nome_cli VARCHAR(50) NOT NULL,
	rua VARCHAR(50) NOT NULL,
	numero VARCHAR(4) NOT NULL,
	bairro VARCHAR(20) NOT NULL,
	cidade VARCHAR(20) NOT NULL,
	PRIMARY KEY (CPF)
);
CREATE TABLE telefone_cliente(
	id_telefone SERIAL PRIMARY KEY NOT NULL,
	telefone VARCHAR(11) NOT NULL,
	CPF VARCHAR(11) NOT NULL,
	FOREIGN KEY (CPF) REFERENCES cliente(CPF)
);
CREATE TABLE animal(
	id_animal SERIAL NOT NULL PRIMARY KEY,
	nome_ani VARCHAR(50) NOT NULL,
	especie VARCHAR(10) NOT NULL,
	CPF VARCHAR(11),
	FOREIGN KEY (CPF) REFERENCES cliente(CPF)
);
CREATE TABLE consulta(
	id_consulta SERIAL NOT NULL PRIMARY KEY,
	data_consulta DATE NOT NULL,
	valor NUMERIC(7,2) NOT NULL
);
CREATE TABLE veterinario(
	CRV VARCHAR(10) NOT NULL PRIMARY KEY,
	nome_vet VARCHAR(50) NOT NULL,
	experiencia VARCHAR(10) NOT NULL,
	salario NUMERIC(7,2) NOT NULL
);
CREATE TABLE enfermidade(
	id_enfermidade SERIAL NOT NULL PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL,
	gravidade VARCHAR(20) NOT NULL
);
CREATE TABLE animal_consulta(
	id_consAnimal SERIAL NOT NULL PRIMARY KEY,
	id_animal INTEGER,
	id_consulta INTEGER,
	id_vet VARCHAR(10),
	id_enfermidade INTEGER,
	FOREIGN KEY (id_animal) REFERENCES animal (id_animal),
	FOREIGN KEY (id_consulta) REFERENCES consulta (id_consulta),
	FOREIGN KEY (id_vet) REFERENCES veterinario (CRV),
	FOREIGN KEY (id_enfermidade) REFERENCES enfermidade (id_enfermidade)
);



-- 3) Insert de clientes na tabela Cliente
INSERT INTO cliente
	(CPF, nome_cli, rua, numero, bairro, cidade)
VALUES
('11111111111', 'Gabriel Diniz', 'Rua Benedito Valadares', '1000', 'Centro', 'Pará de Minas'),
('22222222222', 'Bruno Diniz', 'Rua Manuel Batista', '200', 'Santos Dumont', 'Pará de Minas'),
('33333333333', 'Miguel Diniz', 'Avenida Presidente Vargas', '1567', 'São Francisco', 'Belo Horizonte');

INSERT INTO telefone_cliente
	(telefone, cpf)
VALUES
('37988888888', '11111111111'),
('37977777777', '22222222222'),
('37966666666', '22222222222'),
('37955555555', '33333333333');

-- 4) Insert de veterinários
INSERT INTO veterinario
	(CRV, nome_vet, experiencia, salario)
VALUES
('75689', 'Fernando Maciel', '3 anos', 5500.00),
('65893', 'Anderson Tres', '5 anos', 8000.00),
('68712', 'Isac Cardoso', '7 anos', 7555.00);

-- 5) Insert de animais
INSERT INTO animal
	(nome_ani, especie, CPF)
VALUES
('Rex', 'Cachorro', '11111111111'),
('Miau', 'Gato', '22222222222' ),
('Luthor', 'Papagaio', '33333333333'),
('Rajado', 'Gato', '22222222222'),
('Tabo', 'Cachorro', '11111111111');

-- 6) Insert de enfermidades
INSERT INTO enfermidade 
	(descricao, gravidade)
VALUES 
	('Desidratação','Leve'),
	('Fratura','Médio'),
	('Corte','Leve'),
	('Convulsão','Grave');

-- 7) Insert de consultas
INSERT INTO consulta
	(data_consulta, valor)
VALUES
	('01/05/2023', 300.00),
	('04/03/2023', 250.00),
	('02/04/2023', 350.00),
	('02/04/2023', 350.00),
	('02/04/2023', 350.00);

INSERT INTO animal_consulta
	(id_animal, id_consulta, id_vet, id_enfermidade)
VALUES
	('1','1','75689','1'),
	('2','2','68712','3'),
	('3','3','65893','1'),
	('4','4','68712','2'),
	('5','5','75689','4');

-- 8) Criação da coluna Tratamento na tabela Enfermidade
ALTER TABLE enfermidade 
ADD COLUMN tratamento VARCHAR(20);

-- 9) Insert de tratamentos
UPDATE enfermidade 
SET tratamento = 'Soro'
WHERE id_enfermidade = 1;

UPDATE enfermidade 
SET tratamento = 'Gesso'
WHERE id_enfermidade = 2;

UPDATE enfermidade 
SET tratamento = 'Pontos'
WHERE id_enfermidade = 3;

UPDATE enfermidade 
SET tratamento = 'Remédio'
WHERE id_enfermidade = 4;

-- 10) Alterar nome da coluna
ALTER TABLE animal
RENAME COLUMN nome_ani TO nome;

-- 11) Alterar data consulta do Rex
UPDATE consulta
SET data_consulta = '12/01/2022'
WHERE id_consulta = '1';

-- 12) Aumento do salário dos veterinários
UPDATE veterinario
SET salario = salario + 500.00;

-- 13) Cashback de R$20 nas consultas
UPDATE consulta
SET valor = valor * 0.8

-- 14) Reduzir o salário em 50 reais
UPDATE veterinario
SET salario = salario - 50.00
WHERE CRV IN ('65893', '68712')

-- 15) nome dos clientes em ordem alfabética
SELECT 
	nome_cli
FROM 
	cliente
ORDER BY 
	nome_cli;
	
-- 16) nome dos veterinarios em ordem alfabética
SELECT 
	nome_vet
FROM 
	veterinario
ORDER BY 
	nome_vet;
	
-- 17) nome dos animais em ordem decrescente
SELECT 
	nome
FROM 
	animal
ORDER BY 
	nome DESC;

-- 18) CRV dos médicos e quantas consultas ele fez
SELECT 
	id_vet, COUNT (id_consulta)
FROM 
	animal_consulta
GROUP BY
	id_vet;
	
-- 19) nome dos animais e quantas consultas ele teve
SELECT 
	nome, COUNT(id_consulta)
FROM 
	animal a
LEFT JOIN
	animal_consulta ac
ON a.id_animal = ac.id_animal
GROUP BY
	nome;

-- 20) qual o valor necessário para pagar todos os veterinários
SELECT 
	SUM(salario)
FROM 
	veterinario;

-- 21) o nome e o salário dos veterinários começando pelo médico que tem o maior salário até o que possui o menor salário
SELECT 
	nome_vet, salario
FROM 
	veterinario
ORDER BY 
	salario DESC;

-- 22) enfermidade e quais animais já tiveram aquela enfermidade
SELECT 
	a.nome, e.descricao
FROM 
	enfermidade e
LEFT JOIN 
	animal_consulta ac
ON e.id_enfermidade = ac.id_enfermidade 
RIGHT JOIN
	animal a
ON ac.id_animal = a.id_animal;

-- 23) média de salário entre os veterinários
SELECT 
	AVG(salario)
FROM
	veterinario;

-- 24) nome do veterinário com maior salário
SELECT 
	nome_vet
FROM 
	veterinario
ORDER BY
	salario DESC 
LIMIT 1;

-- 25) nome do veterinário com menor salário
SELECT 
	nome_vet
FROM 
	veterinario
ORDER BY
	salario
LIMIT 1;

-- 26) nome dos clientes e os animais que ele tem
SELECT 
	c.nome_cli, STRING_AGG(a.nome, ', ') AS animais
FROM
	cliente c
LEFT JOIN
	animal a
ON c.cpf = a.cpf
GROUP BY 1;

-- 27) nome do animal e o tratamento que ele recebeu
SELECT 
	a.nome, e.tratamento
FROM 
	enfermidade e
LEFT JOIN 
	animal_consulta ac
ON e.id_enfermidade = ac.id_enfermidade 
RIGHT JOIN
	animal a
ON ac.id_animal = a.id_animal;

-- 28) nome do animal e o veterinário que o atendeu
SELECT 
	a.nome, v.nome_vet
FROM 
	veterinario v
LEFT JOIN 
	animal_consulta ac
ON v.crv = ac.id_vet
RIGHT JOIN
	animal a
ON ac.id_animal = a.id_animal;

-- 29) nome do animal, o nome do veterinário que o atendeu, enfermidade, tratamento, a data e valor da consulta
SELECT 
	a.nome, v.nome_vet, e.descricao, e.tratamento, c.data_consulta, c.valor
FROM 
	animal_consulta ac 
LEFT JOIN 
	animal a
ON ac.id_animal = a.id_animal 
RIGHT JOIN
	veterinario v
ON v.crv = ac.id_vet 
RIGHT JOIN
	enfermidade e 
ON e.id_enfermidade = ac.id_enfermidade 
RIGHT JOIN 
	consulta c 
ON c.id_consulta = ac.id_consulta 

-- 30) deletar a consulta feita pelo Bruno
DELETE FROM animal_consulta
WHERE id_animal IN (2,4)

-- 31) deletar o médico com que o Bruno havia se consultado
DELETE FROM veterinario 
WHERE crv = '68712';

-- 32) deletar o Cliente Bruno
DELETE 
FROM telefone_cliente  
WHERE cpf = '22222222222';

DELETE 
FROM animal  
WHERE cpf = '22222222222';

DELETE 
FROM cliente  
WHERE cpf = '22222222222';

-- 33) deletar todos as consultas
DELETE FROM animal_consulta; 

DELETE FROM consulta
-- sem where porque é tudo mesmo 

-- 34) excluir a tabela consulta
DROP TABLE animal_consulta;
DROP TABLE consulta;

-- 35) deletar todos os veterinários
DELETE FROM veterinario;

-- 36) deletar a tabela veterinários
DROP TABLE veterinario;

-- 37) excluir todas as tabelas restantes
DROP TABLE telefone_cliente;
DROP TABLE enfermidade ;
DROP TABLE animal;
DROP TABLE cliente;
