#para criar um database
create database dbcontatos;

#para mostrar os databases existentes
show databases;

#para excluir um database
drop database dbcontatos;

#para escolher o database que será utilizado
use dbcontatos;

#comando poara criação de tabelas
create table tblcontatos(

	#int ==> tipo de dados
    #not nul ==> é um atributo que não pode ficar vazio
    #auto_increment ==> será gerenciado automaticamente pelo banco de dados
    #primary key ==> chave principal
	idcontato int not null auto_increment primary key,
    
    #varchar ==> equivalente a String
    nome varchar(100) not null,
    
    telefone varchar(18),
    
	celular varchar(19) not null,
    
    email varchar(100) not null,
    
    observacao text
);

show tables;

#Comando para declarar os atributos que receberão os valores
insert into tblcontatos(nome, telefone, celular, email, observacao)
	#valores que serão recebidos pelos atributos
	values('Pedro Pedroso',
			'(011)4002-8922', 
			'(011)94002-8922', 
			'pedra@gmail.com',
            'teste de inserção.');
            
#Mostra os atibutos selecionados dentro da tabela informada, neste caso todos (*)            
select * from tblcontatos;            