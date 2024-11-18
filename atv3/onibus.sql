drop database if exists onibus;
create database onibus;
use onibus;

create table motoristas(
    id_motorista int not null primary key auto_increment,
    nome_motorista varchar(255) not null,
    cpf varchar(255) not null
);

create table telefone(
    id int not null,
    telefone varchar(255),
    foreign key (id) references motoristas(id_motorista)
);

create table linhas(
    id_linha int not null primary key auto_increment,
    descricao_linha text not null,
    horario varchar(255) not null
);

load data infile 'C:/dadoscsv/motoristas.csv' into table motoristas
fields terminated by ';'
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows;

load data infile 'C:/dadoscsv/linhas.csv' into table linhas
fields terminated by ';'
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows;

load data infile 'C:/dadoscsv/telefone.csv' into table telefone
fields terminated by ';'
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows;