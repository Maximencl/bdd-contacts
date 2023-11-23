DROP DATABASE IF EXISTS exo_contacts;
CREATE DATABASE exo_contacts CHARACTER SET `utf8` COLLATE = `utf8_general_ci`;

CREATE TABLE contacts (
    id int PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(70),
    prenom VARCHAR(70),
    date_de_naissance VARCHAR(70),
    sexe VARCHAR(20),
    adresse TEXT NOT NULL,
    cp VARCHAR(10),
    ville VARCHAR(70),
    pays_iso_3 VARCHAR(3),
    FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3) ON DELETE SET NULL
);

CREATE TABLE pays (
    iso_3 VARCHAR(3),
    nom VARCHAR(70),
    iso_2 VARCHAR(2),
    nationalise VARCHAR(50),
);

CREATE TABLE telephone (
    id int PRIMARY KEY AUTO_INCREMENT,
    id_contact int PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(50),
    type TINYINT NOT NULL,
    FOREIGN KEY (id_contact) REFERENCES contacts(id) ON DELETE CASCADE
);