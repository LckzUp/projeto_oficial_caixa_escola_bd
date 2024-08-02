/*drop database caixa_colegio;*/

create database caixa_colegio;

use caixa_colegio;

create table conta(
	pk int not null auto_increment, primary key(pk),
	nome varchar(255),
	descricao varchar(255)
);

create table fluxo(
	pk int not null auto_increment, primary key(pk),
	data_fluxo datetime not null,
	operacao  varchar(255) not null,
	descricao varchar(255) not null,
	valor decimal(4) not null,
	conta_fk int not null, foreign key(conta_fk) references conta(pk)
);

/*inserts conta*/

insert into conta (nome, descricao) value ("Quadra", "Aluguel");
insert into conta (nome, descricao) value ("Cantina", "Venda");
insert into conta (nome, descricao) value ("Festa", "Fantasia");

select * from conta;

/*inserts fluxo*/

insert into fluxo (data_fluxo, operacao, descricao, valor, conta_fk) value ('2024-07-26 09:18:03', "Saida", "Venda", '400.00', 2);
insert into fluxo (data_fluxo, operacao, descricao, valor, conta_fk) value ('2024-07-25 18:59:57', "Entrada", "Aluguel", '300.00', 1);
insert into fluxo (data_fluxo, operacao, descricao, valor, conta_fk) value ('2024-07-27 23:20:18', "Perda", "Venda", '4000.00', 3);

select * from fluxo;