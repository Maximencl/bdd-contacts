DROP DATABASE IF EXISTS exo_contacts;
CREATE DATABASE exo_contacts CHARACTER SET `utf8` COLLATE = `utf8_general_ci`;

USE exo_contacts;

CREATE TABLE pays (
    iso_3 VARCHAR(3) PRIMARY KEY,
    nom VARCHAR(70),
    iso_2 VARCHAR(2),
    nationalise VARCHAR(50)
);

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



CREATE TABLE telephone (
    id int PRIMARY KEY AUTO_INCREMENT,
    id_contact int,
    numero VARCHAR(50),
    type TINYINT NOT NULL,
    FOREIGN KEY (id_contact) REFERENCES contacts(id) ON DELETE CASCADE
);

INSERT INTO `pays` (`iso_3`, `nom`, `iso_2`, `nationalise`) VALUES
('FRA', 'France', 'FR', 'Français'),
('USA', 'United States', 'US', 'English'),
('GER', 'Germany', 'DE', 'German'),
('ITA', 'Italy', 'IT', 'Italian'),
('ESP', 'Spain', 'ES', 'Spanish'),
('GBR', 'United Kingdom', 'GB', 'English'),
('JPN', 'Japan', 'JP', 'Japanese'),
('CAN', 'Canada', 'CA', 'English'),
('AUS', 'Australia', 'AU', 'English'),
('BRA', 'Brazil', 'BR', 'Portuguese');

INSERT INTO `contacts` (`nom`, `prenom`, `date_de_naissance`, `sexe`, `adresse`, `cp`, `ville`, `pays_iso_3`) VALUES
('Doe', 'John', '1990-01-15', 'Male', '123 Main St', '12345', 'City1', 'FRA'),
('Smith', 'Jane', '1985-05-20', 'Female', '456 Oak St', '67890', 'City2', 'USA'),
('Müller', 'Hans', '1982-11-08', 'Male', '789 Birch St', '23456', 'City3', 'GER'),
('Rossi', 'Maria', '1995-03-25', 'Female', '101 Pine St', '78901', 'City4', 'ITA'),
('Lopez', 'Carlos', '1988-09-10', 'Male', '202 Cedar St', '34567', 'City5', 'ESP'),
('Smith', 'David', '1992-07-12', 'Male', '303 Maple St', '45678', 'City6', 'GBR'),
('Yamada', 'Yuki', '1998-04-30', 'Female', '404 Elm St', '56789', 'City7', 'JPN'),
('Johnson', 'Emily', '1980-12-03', 'Female', '505 Walnut St', '67890', 'City8', 'CAN'),
('Turner', 'Michael', '1987-06-18', 'Male', '606 Pine St', '78901', 'City9', 'AUS'),
('Silva', 'Ana', '1993-08-22', 'Female', '707 Oak St', '89012', 'City10', 'BRA');



INSERT INTO telephone (id_contact, numero, type) VALUES
(1, '123-456-7890', 1),
(2, '987-654-3210', 2),
(3, '111-222-3333', 1),
(4, '444-555-6666', 2),
(5, '777-888-9999', 1),
(6, '333-222-1111', 2),
(7, '555-444-3333', 1),
(8, '888-777-6666', 2),
(9, '999-888-7777', 1),
(10, '666-555-4444', 2);