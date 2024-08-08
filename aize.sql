CREATE TABLE cliente (
    ID number PRIMARY KEY,
    nome varchar2(30),
    idade char(2),
    datanasc date,
    ID_tp_cliente,
    cpf_cnpj varchar2(25),
    ID_genero,
    ID_endereco 
);

CREATE TABLE tp_cliente (
    ID_tp_cliente number PRIMARY KEY,
    descricao varchar2
);

CREATE TABLE genero (
    ID_genero number PRIMARY KEY,
    tp_genero varchar(15)
);

CREATE TABLE endereco (
    ID_endereco number PRIMARY KEY,
    logradouro varchar2,
    numero number,
    complemento varchar2,
    foreign key (ID_bairro) references bairro(ID)
);

CREATE TABLE bairro (
    ID_bairro number PRIMARY KEY,
    nome varchar2
);

CREATE TABLE cidade (
    ID_cidade number PRIMARY KEY,
    nome varchar2
);

CREATE TABLE estado (
    ID_estado number PRIMARY KEY,
    nome varchar2
);

CREATE TABLE pais (
    ID_pais number PRIMARY KEY,
    nome varchar2
);
