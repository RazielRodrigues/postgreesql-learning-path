CREATE TABLE tb_filme(
	id int not null,
	fk_diretor int not null,
	fk_produtora int not null,
	nome varchar(50),
	genero varchar(20),
	primary key (id),
	foreign key (fk_diretor) references tb_diretor (id)
);

CREATE TABLE tb_diretor(
	id int not null,
	nome varchar(50),
	primary key (id) 
);

CREATE TABLE tb_produtora(
	id int not null,
	nome varchar(50),
	primary key (id) 
);

SELECT * FROM tb_diretor;

INSERT INTO public.tb_filme(
	id, fk_diretor, fk_produtora, nome, genero)
	VALUES (2, 2, 1, 'olho por olho 2', 'terror');

SELECT *
FROM tb_diretor
INNER JOIN tb_filme
ON tb_filme.fk_diretor = tb_diretor.id

ALTER TABLE tb_filme
ADD CONSTRAINT fk_prod 
foreign key (fk_produtora) references tb_produtora(id)



