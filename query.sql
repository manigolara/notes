-- 1. sélectionner tous les dvd qui ont été loué par le client ...
SELECT client.prenom,
    client.nom,
    dvd.ref,
    film.titre
FROM client,
    louer,
    dvd,
    film
WHERE client.id_client = louer.id_client
    AND louer.id_dvd = dvd.id_dvd
    AND dvd.id_film = film.id_film
    AND client.nom LIKE "zaza";
-- 2. sélectionner tous les clients qui ont loué le film ...
SELECT client.prenom,
    client.nom,
    dvd.ref,
    film.titre
FROM client,
    louer,
    dvd,
    film
WHERE client.id_client = louer.id_client
    AND louer.id_dvd = dvd.id_dvd
    AND dvd.id_film = film.id_film
    AND film.titre LIKE "SpiderMan";
-- 3. sélectionner tous les clients qui ont été servi par le loueur ...
SELECT vendeur.nom,
    client.prenom,
    client.nom
FROM client,
    louer,
    vendeur
WHERE client.id_client = louer.id_client
    AND louer.id_vendeur = vendeur.id_vendeur
    AND vendeur.nom LIKE "Dupont";
-- 4. sélectionner tous les films du genre ...
SELECT genre.genre,
    film.titre
FROM film,
    appartenir,
    genre
WHERE film.id_film = appartenir.id_film
    AND appartenir.id_genre = genre.id_genre
    AND genre.genre LIKE "Action";
# ----------------------------------------
# JOIN VERSIONS
# ----------------------------------------
SELECT client.prenom,
    client.nom,
    dvd.ref,
    film.titre
FROM client
    INNER JOIN louer ON client.id_client = louer.id_client
    INNER JOIN dvd ON louer.id_dvd = dvd.id_dvd
    INNER JOIN film ON dvd.id_film = film.id_film
WHERE client.nom LIKE "Dupond";
WHERE client.id_client = louer.id_client
    AND louer.id_dvd = dvd.id_dvd
    AND dvd.id_film = film.id_film
    AND client.nom LIKE "zaza";