DROP TABLE IF EXISTS Dipendente;        -- "Drop table" cancella una eventuale tabella
DROP TABLE IF EXISTS Reparto;
DROP TABLE IF EXISTS Citta;

CREATE TABLE IF NOT EXISTS Citta(       -- "If not exists" clausola per evitare la duplicazione nella creazione di una tabella
    id integer unsigned auto_increment,
    nomeCitta varchar(20),

    primary key(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Reparto(
    id integer unsigned auto_increment,
    nomeReparto varchar(20),
    idCittaReparto integer unsigned,

    primary key(id),
    foreign key(idCittaReparto) references Citta(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Dipendente(
    id integer unsigned auto_increment,
    Cognome varchar(30),
    Nome varchar(30),
    idReparto integer unsigned,
    idCittaResidenza integer unsigned,

    primary key(id),
    foreign key(idReparto) references Reparto(id),
    foreign key(idCittaResidenza) references Citta(id)
) ENGINE=InnoDB;
