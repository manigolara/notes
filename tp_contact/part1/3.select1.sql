SELECT personne.id AS id_personne,
    personne.civilite AS Civilité,
    personne.prenom AS "Prénom",
    personne.nom AS "Nom",
    email.email As "Email",
    telephone.numero AS "Téléphone"
FROM personne
    JOIN email ON personne.id = email.id_personne
    JOIN telephone ON personne.id = telephone.id_personne;