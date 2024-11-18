DROP DATABASE IF EXISTS pedidos;
CREATE DATABASE pedidos;
USE pedidos;

CREATE TABLE dados (
    id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome  varchar(255) not null,
    end_  varchar(255) not null,
    endereço varchar(255) not null,
    bairro varchar(255) not null,
    cidade varchar(255) not null,
    uf varchar(255) not null 
);

CREATE TABLE celular (
    id_cliente INT NOT NULL,
    celular INT NOT NULL,
    id_celular INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (id_cliente) REFERENCES dados(id_cliente)
);

CREATE TABLE telefone (
    id_telefone INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    telefone INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES dados(id_cliente)
);

CREATE TABLE valores (
    num_dupli INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_compra INT NOT NULL,
    vencimento  INT NOT NULL,
    pagamento INT NOT NULL,
    valor INT NOT NULL,
    diferença INT NOT NULL,
    v_final INT NOT NULL, 
    id_cliente INT NOT NULL DEFAULT 0,
    FOREIGN KEY (id_cliente) REFERENCES dados(id_cliente)
);


LOAD DATA INFILE 'C:/Users/Miriam/Documents/SENAI/bcd/aula10/csv/dados.csv'
INTO TABLE dados
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/Users/Miriam/Documents/SENAI/bcd/aula10/csv/celular.csv'
INTO TABLE celular
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/Users/Miriam/Documents/SENAI/bcd/aula10/csv/telefone.csv'
INTO TABLE telefone
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/Users/Miriam/Documents/SENAI/bcd/aula10/csv/valores.csv'
INTO TABLE valores
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;