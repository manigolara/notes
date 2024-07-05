SELECT personne.nom,
    personne.prenom,
    adresse.adresse1,
    adresse.adresse2,
    ville.ville
FROM personne
    JOIN adresse ON personne.id_adresse = adresse.id_adresse
    JOIN ville ON adresse.id_ville = ville.id_ville
WHERE nom LIKE 'dubois';
UPDATE adresse a
    JOIN personne p ON a.id_adresse = a.id_adresse = p.id_adresse
    JOIN ville v ON a.id_ville = v.ville
SET a.adresse1 = '1 place du capitole',
    v.ville = 'TOULOUSE'
WHERE p.nom = 'Dubois'
    AND v.ville = 'BREST'