

create table
nacionalidade (
	IDNACIONALIDADE int primary key auto_increment,
	NOME varchar(20) not null unique
)engine innodb default charset=latin1;

create table
autor (
	IDAUTOR int primary key auto_increment,
	NOME varchar(50) not null
)engine innodb default charset=latin1;

create table
genero (
	IDGENERO int primary key auto_increment,
	NOME varchar(20) not null unique
)engine innodb default charset=latin1;

create table
idioma (
	IDIDIOMA int primary key auto_increment,
	NOME varchar(30) not null unique
)engine innodb default charset=latin1;

create table
livro (
	IDLIVRO int primary key auto_increment,
	TITULO VARCHAR(100) not null,
	ANOPUBLICADO int not null,
	ISBN varchar(13) not null unique
)engine innodb default charset=latin1;

create table obra (
	IDOBRA int primary key auto_increment,
	IDAUTOR int not null,
	IDLIVRO int not null,
	foreign key (IDAUTOR) references autor (IDAUTOR),
	foreign key (IDLIVRO) references livro (IDLIVRO)
)engine innodb default charset=latin1;

