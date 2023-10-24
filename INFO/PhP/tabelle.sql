CREATE TABLE Uomo(
	id integer unsigned auto_increment,
	nome varchar(39) NOT NULL,
	cognome varchar(15) NOT NULL,
	paese varchar(15) NOT NULL,
	anni TINYINT,
	
	PRIMARY KEY(id)
)

INSERT INTO Uomo(nome, cognome, paese, anni)
VALUES('Gino', 'Rossi', 'Ostiglia', 37);

INSERT INTO Uomo(nome, cognome, paese, anni)
VALUES('Anna', 'Verdi', 'Revere', 29);

INSERT INTO Uomo(nome, cognome, paese, anni)
VALUES('Claudio', 'Pellizzardi', 'Ostiglia', 89);

INSERT INTO Uomo(nome, cognome, paese, anni)
VALUES('Franco', 'Negri', 'Bergantino', 21);

INSERT INTO Uomo(nome, cognome, paese, anni)
VALUES('Francesca', 'Cane', 'Governolo', 41);

Q: Visualizzare tutti i record con tutti i campi presenti nella tabella
SELECT*
FROM Uomo;

Q: Visualizza tutti i record con tutti i campi di uomini con cognome rossi
SELECT*
FROM Uomo
WHERE cognome='Rossi';

Q: Visualizzare nome, paese e anni degli uomini con cognome 'Rossi'
SELECT nome, paese, anni
FROM Uomo
WHERE cognome='Rossi'

Q: Visualizzare tutti gli uomini presenti con tutti i campi, ordinandoli per cognome in ordine crescente.
SELECT*
FROM Uomo
ORDER BY cognome ASC;

