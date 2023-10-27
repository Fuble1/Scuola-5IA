CREATE TABLE Uomo(
    id integer unsigned auto_increment,
    nome varchar(39) NOT NULL,
    cognome varchar(15) NOT NULL,
    paese varchar(15),
    anni TINYINT,

    PRIMARY KEY(id)
);

CREATE TABLE Donna(
    id integer unsigned auto_increment,
    nome varchar(30) NOT NULL,
    cognome varchar(15) NOT NULL,
    paese varchar(15),
    anni TINYINT,

    PRIMARY KEY(id)
);