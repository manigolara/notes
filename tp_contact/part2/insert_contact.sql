INSERT INTO ville VALUES (null, '31000', 'TOULOUSE');
INSERT INTO ville VALUES (null, '33000', 'BORDEAUX');
INSERT INTO ville VALUES (null, '69000', 'LYON');
INSERT INTO ville VALUES (null, '75000', 'PARIS');
INSERT INTO ville VALUES (null, '59000', 'LILLE');
INSERT INTO ville VALUES (null, '29000', 'BREST');
INSERT INTO ville VALUES (null, '87000', 'LIMOGES');
INSERT INTO ville VALUES (null, '81000', 'ALBI');
INSERT INTO ville VALUES (null, '34000', 'MONTPELLIER');
INSERT INTO ville VALUES (null, '13000', 'MARSEILLE');
INSERT INTO ville VALUES (null, '11000', 'CARCASSONNE');
INSERT INTO ville VALUES (null, '86000', 'POITIERS');
INSERT INTO ville VALUES (null, '11000', 'NARBONNE');
INSERT INTO ville VALUES (null, '18000', 'BOURGES');
INSERT INTO ville VALUES (null, '46000', 'NICE');
INSERT INTO ville VALUES (null, '06000', 'CANNES');
INSERT INTO ville VALUES (null, '30000', 'NIMES');
INSERT INTO ville VALUES (null, '18000', 'VIERZON');
INSERT INTO ville VALUES (null, '81000', 'CASTRES');
INSERT INTO ville VALUES (null, '82000', 'MONTAUBAN');

INSERT INTO `adresse` (`id_adresse`, `adresse1`, `adresse2`, `id_ville`) VALUES
(null, '4 rue de la fontaine', null, 1),
(null, '55 rue des fleurs', 'cité les floralies', 2),
(null, '160 avenue de la république', null, 3),
(null, '55 boulevard marcou', null, 4),
(null, '1 Rue du monte-à-pied', null, 5),
(null, '5 rue stine', null, 6),
(null, '44 rue du sot', null, 12),
(null, '88 rue tabaga', null, 16),
(null, '66 rue perdu', null, 14),
(null, '55 chemin de la flemme', null, 20),
(null, '1 Rue du monte-à-pied', null, 8),
(null, '5 rue stine', null, 6),
(null, '44 rue du sot', null, 5),
(null, '88 rue tabaga', null, 9),
(null, '66 rue perdu', null, 18);


INSERT INTO `personne` (`id_personne`, `civilite`, `nom`, `prenom`, `id_adresse`) VALUES
(null, 'Mme', 'BERNARD', 'Chloe',1),
(null, 'Mme', 'GIRARD', 'Lola',2),
(null, 'Mme', 'BERNARD', 'Eva',3),
(null, 'Mme', 'THOMAS', 'Camille',4),
(null, 'Mme', 'ROUX', 'Anais',5),
(null, 'M', 'DUBOIS', 'Mathis',6),
(null, 'Mme', 'GAUTIER', 'Eva',7),
(null, 'M', 'GAUTIER', 'Maxime',7),
(null, 'M', 'ANDRE', 'Tom',8),
(null, 'M', 'ROUX', 'Yanis',5),
(null, 'M', 'ROY', 'Ethan',9),
(null, 'M', 'ROUX', 'Louis',5),
(null, 'M', 'MARTIN', 'Jonathan',10),
(null, 'Mme', 'PETIT', 'Clara', 11),
(null, 'Mme', 'SIMON', 'Lea', 12);

#
# modifier le jeu de test tel pour que certains n`aient pas de tel
#
INSERT INTO `tel` (`id_tel`, `tel`, `id_personne`) VALUES
(null, '02 02 54 58 59', 1),
(null, '02 22 55 66 99', 1),
(null, '02 55 88 77 44', 3),
(null, '05 11 11 22 22', 3),
(null, '02 66 33 66 99', 4),
(null, '03 02 54 58 59', 5),
(null, '03 22 55 66 99', 6),
(null, '03 55 88 77 44', 6),
(null, '03 46 81 72 39', 8),
(null, '03 02 54 58 59', 9),
(null, '03 22 55 66 99', 10),
(null, '04 44 22 80 06', 11),
(null, '04 55 88 77 50', 11),
(null, '04 66 33 66 99', 12),
(null, '04 66 33 66 60', 12),
(null, '04 02 54 58 59', 13),
(null, '05 02 54 58 59', 14),
(null, '05 02 54 58 58', 15);

INSERT INTO `email` (`id_email`, `email`, `id_personne`) VALUES
(null, 'BERNARD.Chloe@free.fr', 1),
(null, 'GIRARD.Lola@gmail.com', 2),
(null, 'BERNARD.Eva@auto.com', 3),
(null, 'THOMAS.Camille@orange.com', 4),
(null, 'ROUX.Anais@vert.com', 5), 
(null, 'superhot451@gmail.com', 5), 
(null, 'DUBOIS.Mathis@bleue.com', 6),
(null, 'GAUTIER.Eva@mauve.com', 7),
(null, 'm.poppins@parapluie.com', 7),
(null, 'GAUTIER.Maxime@rouge.fr', 8),
(null, 'dragueurdu81@hotmail.fr', 8), 
(null, 'ANDRE.Tom@fr.fr', 9),
(null, 'ROUX.Yanis@afpa.fr', 10),
(null, 'contact@professionneldumetier.com', 10),
(null, 'ROY.Ethan@bouygue.com', 11),
(null, 'ROUX.Louis@vert.com', 12),
(null, 'MARTIN.Jonathan@afpa.fr', 13), 
(null, 'prof.afpa@afpa.fr', 13), 
(null, 'PETIT.Clara@afpa.fr', 14),
(null, 'SIMON.Lea@gmail.fr', 15);


