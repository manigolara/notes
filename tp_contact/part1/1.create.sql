#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
#------------------------------------------------------------
# Table: personne
#------------------------------------------------------------
CREATE TABLE personne(
    id Int Auto_increment NOT NULL,
    civilite Char (5) NOT NULL,
    nom Char (20) NOT NULL,
    prenom Char (20) NOT NULL,
    adresse_ligne1 Text NOT NULL,
    adresse_ligne2 Text,
    code_postal Int NOT NULL,
    pays Char (5) NOT NULL,
    CONSTRAINT personne_PK PRIMARY KEY (id)
) ENGINE = InnoDB;
#------------------------------------------------------------
# Table: email
#------------------------------------------------------------
CREATE TABLE email(
    id Int Auto_increment NOT NULL,
    email Text NOT NULL,
    id_personne Int,
    CONSTRAINT email_PK PRIMARY KEY (id),
    CONSTRAINT email_personne_FK FOREIGN KEY (id_personne) REFERENCES personne(id)
) ENGINE = InnoDB;
#------------------------------------------------------------
# Table: telephone
#------------------------------------------------------------
CREATE TABLE telephone(
    id Int Auto_increment NOT NULL,
    numero BigInt NOT NULL,
    id_personne Int,
    CONSTRAINT telephone_PK PRIMARY KEY (id),
    CONSTRAINT telephone_personne_FK FOREIGN KEY (id_personne) REFERENCES personne(id)
) ENGINE = InnoDB;