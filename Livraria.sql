CREATE TABLE "Livro"
(
"Id" Serial primary key not null,
"Isbn" character varying(15) not null,
"Nome" character varying(100) not null,
"AnoPublicacao" int not null,
"QtdaEstoque" int not null,
"Valor" numeric(10,2) not null
)

CREATE TABLE "Genero"
(
"Id" Serial primary key not null,
"Nome" character varying(50) not null,
"Sigla" character varying(7) not null
)

CREATE TABLE "Autor"
(
"Id" Serial primary key not null,
"Nome" character varying(100) not null, 
"NomeArtistico" character varying(50) not null
)

CREATE TABLE "Idioma"
(
"Id" Serial primary key not null,
"Nome" character varying(50) not null,
"Sigla" character varying(7) not null
)

CREATE TABLE "MetodoPagamento"
(
"Id" Serial primary key not null,
"Nome" character varying(50) not null,
"Sigla" character varying(7) not null
)

CREATE TABLE "Funcionario"
(
"Id" Serial primary key not null,
"Nome" character varying(50) not null,
"Cpf" character varying(15) not null,
"Telefone" character varying(25) not null DEFAULT '(00)00000OOOO'
)

CREATE TABLE "Cliente"
(
"Id" Serial primary key not null,
"Nome" character varying(50) not null,
"Cpf" character varying(15) not null,
"DataNascimento" date not null,
"Telefone" character varying(25) not null DEFAULT '(00)00000OOOO',
"Email" character varying(100) not null,
"Endereco" character varying(100) not null
)

ALTER TABLE "Livro" ADD COLUMN "Id_Idioma" int not null;
ALTER TABLE "Livro" ADD CONSTRAINT "fk_Livro_Idioma" foreign key ("Id_Idioma") REFERENCES "Idioma" ("Id");

CREATE TABLE "Venda"
(
"Id" Serial primary key not null,
"DataVenda" date not null,
"Id_Funcionario" int not null.
CONSTRAINT "fk_Venda_Funcionario" foreign key ("Id_Funcionario") REFERENCES "Funcionario" ("Id"),

)