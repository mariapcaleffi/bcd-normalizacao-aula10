drop database if exists exercliente;
create database exercliente;
use exercliente;
create table Clientes(
    id_cliente int not null primary key auto_increment,
    nome varchar (255) not null,
    nascimento int not null,
    sexo varchar (255),
    peso decimal
);

create table Telefone(
    id int not null primary key auto_increment,
    Telefones int not null,
    id_cliente int not null default(0),
    foreign key (id_cliente) references Clientes(id_cliente)
);

load data infile 'C:/csv_dados/Clientes.CSV'
INTO TABLE Clientes
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

load data infile 'C:/csv_dados/Telefone.CSV'
INTO TABLE Telefone
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;