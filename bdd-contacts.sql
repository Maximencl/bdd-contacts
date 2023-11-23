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