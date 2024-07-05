# 1. Déménagement de Dubois de Brest a « 1 place du Capitole Toulouse »
UPDATE adresse
SET adresse1 = "1 place du Capitole",
    adresse2 = NULL,
    id_ville = (
        SELECT id_ville
        FROM ville
        WHERE ville = 'TOULOUSE'
    )
WHERE id_adresse = (
        SELECT id_adresse
        FROM personne
        WHERE nom = "dubois"
    );
# 2.Afficher les 5 premières personnes
SELECT *
FROM personne
LIMIT 5;
# 3.Afficher les 5 personnes suivantes
SELECT *
FROM personne
LIMIT 5 OFFSET 5;
# 4.Afficher les noms et prénoms des personnes. Trier par nom et en ordre alphabétique
SELECT nom,
    prenom
FROM personne
ORDER BY nom ASC;
# 5.Retourner le nombre de noms différents
SELECT COUNT(DISTINCT nom) AS nombre_de_noms_distinct
FROM personne;
# 6.Retourner des noms en minuscule et des prénoms en majuscule
SELECT LOWER(nom),
    UPPER(prenom)
FROM personne;
# 7.Afficher les numéros de téléphone en séparant les nombres par des « - » tirets
SELECT CONCAT(
        SUBSTRING(tel, 1, 2),
        '-',
        SUBSTRING(tel, 4, 2),
        '-',
        SUBSTRING(tel, 7, 2),
        '-',
        SUBSTRING(tel, 10, 2),
        '-',
        SUBSTRING(tel, 13, 2),
        ''
    ) AS telephone
FROM tel;
SELECT REPLACE (tel, " ", "-") as tel_formate
FROM tel;
-- MYSQL ne support pas "lookarround" pour les REGEX, ceci ne fonctionne pas:
SELECT REGEXP_REPLACE(tel, '(\\d{2})(?=\\d)', '\\1-')
FROM tel;
# 8.Afficher tous les noms et prénoms dans une seul colonne
SELECT CONCAT(nom, ', ', prenom) AS nom_complet
FROM personne;
# 9. Afficher toutes les personnes dont le nom est « BERNARD » ou « ROUX »
SELECT *
FROM personne
WHERE nom = 'BERNARD'
    OR nom = 'ROUX';