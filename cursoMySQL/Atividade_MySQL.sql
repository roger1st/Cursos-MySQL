create database bd_curso; 

use bd_curso;

create table tb_instrutor(
Cod_inst int primary key auto_increment,
nome_inst varchar(50),
sexo_inst enum('f', 'm'),
data_nasc date,
data_admis date,
sal_inst decimal(10,2)
);

select * from tb_instrutor;

INSERT INTO tb_instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES
    ('John Doe', 'm', '1990-01-15', '2021-03-01', 2500.00),
    ('Jane Smith', 'f', '1985-05-20', '2020-10-10', 3000.00),
    ('Michael Johnson', 'm', '1992-09-08', '2022-01-02', 2800.00),
    ('Emily Brown', 'f', '1994-07-12', '2021-11-15', 2700.00),
    ('David Lee', 'm', '1991-03-25', '2023-02-28', 3200.00),
    ('Sarah Adams', 'f', '1988-12-05', '2021-07-20', 2600.00),
    ('Robert Wilson', 'm', '1993-06-18', '2020-08-15', 2900.00),
    ('Amanda Taylor', 'f', '1995-02-28', '2022-05-10', 2750.00),
    ('Daniel Brown', 'm', '1990-10-30', '2023-03-05', 3100.00),
    ('Olivia Johnson', 'f', '1992-04-01', '2021-09-18', 2650.00),
    ('Matthew Davis', 'm', '1987-08-22', '2020-11-30', 3000.00),
    ('Sophia Martin', 'f', '1994-11-11', '2022-03-12', 2800.00),
    ('James Anderson', 'm', '1991-07-08', '2023-04-25', 3200.00),
    ('Emma Wilson', 'f', '1993-03-06', '2021-05-15', 2700.00),
    ('William Thomas', 'm', '1989-09-19', '2020-09-30', 2900.00),
    ('Grace Thompson', 'f', '1995-01-25', '2022-01-20', 2750.00),
    ('Andrew Clark', 'm', '1990-06-14', '2023-02-15', 3100.00),
    ('Charlotte Harris', 'f', '1992-02-03', '2021-08-10', 2650.00),
    ('Benjamin Turner', 'm', '1988-12-10', '2020-12-28', 3000.00),
    ('Lily Walker', 'f', '1994-05-17', '2022-04-05', 2800.00);


ALTER TABLE tb_instrutor add column email varchar(100);

ALTER TABLE tb_instrutor add column celular varchar(14);

ALTER TABLE tb_instrutor add column nacionalidade varchar(100);

ALTER TABLE tb_instrutor DROP COLUMN data_nasc;

UPDATE tb_instrutor set nacionalidade = 'Brasileira';

UPDATE tb_instrutor SET sal_inst = sal_inst + 320 WHERE data_admis < '2020-02-01';

UPDATE tb_instrutor SET sal_inst = sal_inst + 100 WHERE sexo_inst = 'f';

DELETE FROM tb_instrutor WHERE Cod_inst IN (10, 15, 20);
