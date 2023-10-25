CREATE TABLE Animale(
	id integer unsigned auto_increment,
	nome varchar(20) NOT NULL,
	razza varchar(15) NOT NULL,
    anni tinyint,
	paese varchar(15) NOT NULL,
	zoo varchar(15) NOT NULL,
	
	PRIMARY KEY(id)
)

INSERT INTO Animale(nome, razza, anni, paese, zoo)
VALUES('Francis', 'Giraffa', 'Africa', 3, Bussolengo);

INSERT INTO Animale(nome, razza, anni, paese, zoo)
VALUES('Claudio', 'Cane', 'Europa', 1, Vercelli);

INSERT INTO Animale(nome, razza, anni, paese, zoo)
VALUES('Jack', 'Cane', 'Europa', 8, Torino);

INSERT INTO Animale(nome, razza, anni, paese, zoo)
VALUES('Giulya', 'Gatto', 'America', 13, Vercelli);

INSERT INTO Animale(nome, razza, anni, paese, zoo)
VALUES('Gianni', 'Airona', 'Asia', 3, Bussolengo);


Q1: Selezionare tutti gli animali presenti nel database.
SELECT *
FROM Animale;

Q2: Selezionare tutti gli animali con più di 7 anni.
SELECT *
FROM Animale;
WHERE anni>7;