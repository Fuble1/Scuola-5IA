SELECT * FROM MarcaAutomobile;

SELECT * FROM ModelloAutomobile;

SELECT ModelloAutomobile.nome,
        ModelloAutomobile.annoProduzione,
        ModelloAutomobile.cilindrata,
        MarcaAutomobile.nome
FROM ModelloAutomobile, MarcaAutomobile
WHERE ModelloAutomobile.idMarcaAutomobile = MarcaAutomobile.id;