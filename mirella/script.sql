drop database if exists locadora;
create database locadora;
use locadora;

create table Clientes(
    cpf varchar(20) primary key not null,
    nome varchar(20) not null
);

create table Veiculos(
    placa varchar(20) primary key not null,
    marca varchar(20) not null,
    modelo varchar(20) not null,
    tipo varchar(20) not null
);

create table Aluguel(
    id integer primary key not null,
    data_reserva date not null,
    retirada date not null,
    devolucao date not null.
    valor_diaria integer not null,
    status varchar(20) not null,
    subtotal integer not  null,,
    dias integer not null,
    cpf varchar(20) not null,
    placa varchar(20) not null,
    FOREIGN KEY (cpf) REFERENCES cpf(Clientes) ON DELETE CASCADE,
    FOREIGN KEY (placa) REFERENCES placa(Veiculos) ON DELETE CASCADE
);

create table Telefone(
    id integer primary key auto_increment,
    cpf varchar(20) not null,
    telefone varchar(20) not null,
    telefone_secundario varchar(20),
    FOREIGN KEY (cpf) REFERENCES cpf(Clientes) ON DELETE CASCADE
);

describe Clientes;
describe Veiculos;
describe Aluguel;
describe Telefone;

show tables;