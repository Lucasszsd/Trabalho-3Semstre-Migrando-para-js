create database aula_sele;
use aula_sele;

CREATE TABLE DEPARTAMENTO
       (    IDDEPTO DECIMAL(2)  NOT NULL,
	    NOMEDEPARTAMENTO VARCHAR(14) NOT NULL,
	    LOCAL VARCHAR(13)  NOT NULL,
        CONSTRAINT DEPARTAMENTO_PK PRIMARY KEY (IDDEPTO));
	    
CREATE TABLE FUNCAO
       (    IDFUNCAO decimal(2) NOT NULL,
	    NOMEFUNCAO VARCHAR(14) NOT NULL,
        CONSTRAINT FUNCAO_PK PRIMARY KEY (IDFUNCAO));	    
	    
CREATE TABLE EMPREGADO
	(IDEMP decimal(4)  NOT NULL,
	NOMEEMPREGADO VARCHAR(10)  NOT NULL,
	IDFUNCAO VARCHAR(9),
	GERENTE DECIMAL(4),
	SALARIO DECIMAL(7,2),
	COMISSAO DECIMAL(7,2),
	DEPTNO DECIMAL(2) REFERENCES DEPARTAMENTO,
        SEXO VARCHAR(01) CHECK(SEXO IN ('F','M')),
	CONSTRAINT EMPREGADO_PK PRIMARY KEY (IDEMP));	  
        
        
INSERT INTO DEPARTAMENTO VALUES (10,'CONTABIL','LONDRIA');
INSERT INTO DEPARTAMENTO VALUES (20,'TI','MARINGA');
INSERT INTO DEPARTAMENTO VALUES	(30,'COMERCIAL','SARANDI');
INSERT INTO DEPARTAMENTO VALUES	(40,'AUXILIAR','PAIÇANDU');  

INSERT INTO FUNCAO (IDFUNCAO, NOMEFUNCAO) VALUES (1,'CONTADOR');
INSERT INTO FUNCAO (IDFUNCAO, NOMEFUNCAO) VALUES (2,'VENDEDOR');
INSERT INTO FUNCAO (IDFUNCAO, NOMEFUNCAO) VALUES (3,'DIRETOR');
INSERT INTO FUNCAO (IDFUNCAO, NOMEFUNCAO) VALUES (4,'ANALISTA');
INSERT INTO FUNCAO (IDFUNCAO, NOMEFUNCAO) VALUES (5,'PRESIDENTE');


INSERT INTO EMPREGADO VALUES (7369,'SMITH',1,7902,800,NULL,20,'M');
INSERT INTO EMPREGADO VALUES (7499,'ALINE',2,7698,1600,300,30,'F');
INSERT INTO EMPREGADO VALUES (7521,'VITORIA',2,7698,1250,500,30,'F');
INSERT INTO EMPREGADO VALUES (7566,'JONES',3,7839,2975,NULL,20,'M');
INSERT INTO EMPREGADO VALUES (7654,'MARCELA',2,7698,1250,1400,30,'F');
INSERT INTO EMPREGADO VALUES (7698,'BLAKE',3,7839,2850,NULL,30,'M');
INSERT INTO EMPREGADO VALUES (7782,'CLARK',3,7839,2450,NULL,10,'M');
INSERT INTO EMPREGADO VALUES (7788,'SCOTT',4,7566,3000,NULL,20,'M');
INSERT INTO EMPREGADO VALUES (7839,'KING',5,NULL,5000,NULL,10,'M');
INSERT INTO EMPREGADO VALUES (7844,'TANIA',2,7698,1500,0,30,'F');
INSERT INTO EMPREGADO VALUES (7876,'ADAMS',1,7788,1100,NULL,20,'M');
INSERT INTO EMPREGADO VALUES (7900,'JAMES',1,7698,950,NULL,30,'M');
INSERT INTO EMPREGADO VALUES (7902,'FORD',4,7566,3000,NULL,20,'M');
INSERT INTO EMPREGADO VALUES (7934,'MILENA',1,7782,1300,NULL,10,'F');

-- EXERCICIOS
/*
A) INSIRA O DEPARTAMENTO RH, COM O CÓDIGO 50 E COMO LOCAL MARIALVA;
B) ATUALIZE O USUARIO BLAKE PARA O DEPARTAMEENTO NOVO CRIADO
C) APAGUE O DEPARTAMENTO 40.
-------------------------
Projeção e Seleção
Projeção -> Colunas exibidas
* -> todas as colunas da tabela
col1, col2, coln descrever as colunas que serão projetadas

1) Liste todos as colunas da tabela EMPREGADO  (utilizar o *)
2) Liste somente o nome do empregado e o salario (projeção de colunas)
3) Liste o código do empregado ao invés de exibir o nome da coluna IDEMP, exita Codigo (utilizando apelido)
4) Liste o nome do empregado e faça a operação de soma para o salario + comissao de o nome dessa operação de Salario_Bruto (projeção com operadores)
5) Liste os códigos dos departamentos existentes na tabela empregado (sem repetir os códigos -> Distinct)
----------------------
Seleção
Cláusula WHERE
6) Liste todos os empregados do departamento 10 (Operador = )
7) Liste todos os empregados do departamento maior ou igual a 30 (Operador >=)
8) Liste todos os empregados cujo departamento não seja o 10 (Operador <> ou !=)
9) Liste todos os empregados do departamento 10 ou 20 (Operador condicional OR) 
10) Liste todos os empregados que têm um salário entre 1000 e 2000 (Operador >= <= e condicional AND)
11) Liste todos os empregados que não possuem gerente cadastrado (IS NULL ou IS NOT NULL)
12) Liste todos os empregados do departamento 20 ou 30 (Operador de conjunto IN) 
13) Liste todos os empregados que têm um salário entre 1000 e 2000 (Operador de intervalo de valores BETWEEN)


*/


	
