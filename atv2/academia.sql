drop database if exists academia;
create database academia;
use academia;

create table alunos(
    id_aluno int not null primary key auto_increment,
    Nome_aluno varchar(255) not null,
    Nascimento date not null,
    Sexo varchar(1),
    Peso float(3,2),
    Telefone varchar(50) not null
);

create table exercicios(
    id_exercicio int not null primary key auto_increment,
    descricao varchar(255),
    grupo_muscular varchar(255),
    aparelho varchar(255),
);

create table planos(
    id_aluno int not null,
    id_exercicio int not null,
    dia_semana varchar(50),
    descricao text,
    foreign key (id_aluno) references alunos(id_aluno),
    foreign key (id_exercicio) references exercicios(id_exercicio)
);

load data infile 'C:/dadoscsv/alunos.csv' into table alunos
fields terminated by ';'
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows;

load data infile 'C:/dadoscsv/exercicios.csv' into table exercicios
fields terminated by ';'
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows;

load data infile 'C:/dadoscsv/planos.csv' into table planos
fields terminated by ';'
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows;