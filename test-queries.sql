#------------------------------------------------------------
# CREATE
#------------------------------------------------------------
CREATE TABLE A(id Integer PRIMARY KEY, name Char(5) NOT NULL);
CREATE TABLE B(id Integer PRIMARY KEY, name Char(5) NOT NULL);
CREATE TABLE AB(
    id_a Integer,
    id_b Integer,
    PRIMARY KEY (id_a, id_b),
    FOREIGN KEY (id_a) REFERENCES A(id),
    FOREIGN KEY (id_b) REFERENCES B(id)
);
#------------------------------------------------------------
# INSERT
#------------------------------------------------------------
INSERT INTO A (id, name)
VALUES (1, 'A'),
    (2, 'B'),
    (3, 'C');
INSERT INTO B (id, name)
VALUES (1, 'A'),
    (2, 'B'),
    (3, 'C');
INSERT INTO AB (id_a, id_b)
VALUES (1, 1),
    (1, 2),
    (2, 1),
    (2, 2);
#------------------------------------------------------------
# DEMO JOINTURE
#------------------------------------------------------------
-- INNER JOIN
SELECT *
FROM A
    INNER JOIN AB ON A.id = AB.id_a
    INNER JOIN B ON AB.id_b = B.id;
-- LEFT JOIN
SELECT *
FROM A
    LEFT JOIN AB ON A.id = AB.id_a
    LEFT JOIN B ON AB.id_b = B.id;
-- RIGHT JOIN
SELECT *
FROM A
    RIGHT JOIN AB ON A.id = AB.id_a
    RIGHT JOIN B ON AB.id_b = B.id;
-- LEFT EXCLUSIVE JOIN
SELECT *
FROM A
    LEFT JOIN AB ON A.id = AB.id_a
    LEFT JOIN B ON AB.id_b = B.id
WHERE B.id IS NULL;
-- RIGHT EXCLUSIVE JOIN
SELECT *
FROM A
    RIGHT JOIN AB ON A.id = AB.id_a
    RIGHT JOIN B ON AB.id_b = B.id
WHERE A.id IS NULL;