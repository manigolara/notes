# ----------------------------------------
# INSERTION 1
# ----------------------------------------
-- Etape 1: Imserer Personne
INSERT INTO personne (
        civilite,
        nom,
        prenom,
        adresse_ligne1,
        adresse_ligne2,
        code_postal,
        pays
    )
VALUES (
        'Mr',
        'nom-1',
        'prenom-1',
        'adresseLigne1-1',
        'adresseLigne2-1',
        12345,
        'FR'
    );
-- Etape 2: Recuperer ID
SET @personne_id = LAST_INSERT_ID();
-- Etape 3: Imserer Email
INSERT INTO email (email, id_personne)
VALUES ('nom1@domaine.com', @personne_id);
-- Etape 4: Imserer Telephone
INSERT INTO telephone (numero, id_personne)
VALUES (1234567890, @personne_id);
# ----------------------------------------
# INSERTION 2
# ----------------------------------------
-- Etape 1: Imserer Personne
INSERT INTO personne (
        civilite,
        nom,
        prenom,
        adresse_ligne1,
        code_postal,
        pays
    )
VALUES (
        'Mr',
        'nom-2',
        'prenom-2',
        'adresseLigne1-2',
        12345,
        'FR'
    );
-- Etape 2: Recuperer ID
SET @personne_id = LAST_INSERT_ID();
-- Etape 3: Imserer Email
INSERT INTO email (email, id_personne)
VALUES ('nom2@domaine.com', @personne_id);
-- Etape 4: Imserer Telephone
INSERT INTO telephone (numero, id_personne)
VALUES (1234567890, @personne_id);
INSERT INTO telephone (numero, id_personne)
VALUES (0945678901, @personne_id);
# ----------------------------------------
# INSERTION 3
# ----------------------------------------
-- Etape 1: Imserer Personne
INSERT INTO personne (
        civilite,
        nom,
        prenom,
        adresse_ligne1,
        adresse_ligne2,
        code_postal,
        pays
    )
VALUES (
        'Mr',
        'nom-3',
        'prenom-3',
        'adresseLigne1-3',
        'adresseLigne2-3',
        12345,
        'FR'
    );
-- Etape 2: Recuperer ID
SET @personne_id = LAST_INSERT_ID();
-- Etape 3: Imserer Email
INSERT INTO email (email, id_personne)
VALUES ('nom3-1@domaine.com', @personne_id);
INSERT INTO email (email, id_personne)
VALUES ('nom3-2@domaine.com', @personne_id);
-- Etape 4: Imserer Telephone
INSERT INTO telephone (numero, id_personne)
VALUES (1234567890, @personne_id);
# ----------------------------------------
# INSERTION 4
# ----------------------------------------
-- Etape 1: Imserer Personne
INSERT INTO personne (
        civilite,
        nom,
        prenom,
        adresse_ligne1,
        code_postal,
        pays
    )
VALUES (
        'Mr',
        'nom-4',
        'prenom-4',
        'adresseLigne1-4',
        12345,
        'FR'
    );