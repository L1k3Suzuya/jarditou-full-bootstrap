DROP DATABASE IF EXISTS garage; 

CREATE DATABASE garage;  

USE garage; 

CREATE TABLE voiture ( 
    voit_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    voit_marque VARCHAR(50) NOT NULL, 
    voit_prix INT 
); 

INSERT INTO voiture (voit_id, voit_marque, voit_prix) VALUES (1, 'Audi', 29990); 
INSERT INTO voiture (voit_id, voit_marque, voit_prix) VALUES (2, 'BMW', 8500); 
INSERT INTO voiture (voit_id, voit_marque, voit_prix) VALUES (3, 'Ford', 15550);

DROP DATABASE IF EXISTS `of`;

CREATE DATABASE `of`;

USE `of`;

CREATE TABLE Stagiaires(
        sta_id          INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        sta_nom         VARCHAR(50) NOT NULL,
        sta_prenom      VARCHAR(50) NOT NULL,
        sta_matricule   CHAR(10) NOT NULL UNIQUE CHECK (sta_matricule RLIKE '^[A-Z]{2}[0-9]{6}[a-z]{2}$'),
        sta_adresse     VARCHAR(50),
        sta_tel         VARCHAR(30)
);

CREATE TABLE Formations(
        form_id           INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        form_duree_heures INT NOT NULL,
        form_libelle      VARCHAR(50) NOT NULL,
        form_description  VARCHAR(50)
);

CREATE TABLE Formation_Stagiaire(
        sta_id          INT NOT NULL,
        form_id         INT NOT NULL,
        date_debut      DATE NOT NULL,
        date_fin        DATE NOT NULL,
        FOREIGN KEY (form_id) REFERENCES Formations (form_id),
        FOREIGN KEY (sta_id) REFERENCES Stagiaires (sta_id),
        PRIMARY KEY (sta_id, form_id)
);

DROP DATABASE IF EXISTS EmpDep; 

CREATE DATABASE EmpDep;  

USE EmpDep;

CREATE TABLE Employes (
    emp_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    emp_matricule INT NOT NULL,
    emp_nom VARCHAR(50) NOT NULL,
    emp_prenom VARCHAR(50) NOT NULL,
    emp_dep CHAR(3) NOT NULL,
    emp_salaire DECIMAL(6,2)
);

INSERT INTO NOM_TABLE (NOM_COLONNE_1 [, NOM_COLONNE_2, ...])
VALUES
(VALEUR_COLONNE_1 [, VALEUR_COLONNE_2, ...])
INSERT INTO Employes (emp_id, emp_matricule, emp_nom, emp_prenom, emp_dep, emp_salaire)
VALUES (1, 140, 'TIFIET', 'Tarek', 30, 2100)
INSERT INTO Employes
VALUES
(13, 567, 'BAMBEL', 'Lary', 43, NULL)

INSERT INTO Employes (emp_matricule, emp_nom, emp_prenom, emp_dep, emp_salaire)
VALUES
(666, 'FER', 'Lucie', 42, 2130),
(42, 'MATIK', 'Otto', 50, NULL)

PRODUIT (CODART, LIBART, STKALE, STKPHY, QTEANN, UNIMES) 
ENTCOM  (NUMCOM, OBSCOM, DATCOM, NUMFOU) 
LIGCOM  (NUMCOM, NUMLIG, CODART, QTECDE, PRIUNI, QTELIV, DERLIV) 
FOURNIS (NUMFOU, NOMFOU, RUEFOU, POSFOU, VILFOU, CONFOU, SATISF) 
VENTE   (CODART, NUMFOU, DELLIV, QTE1, PRIX1, QTE2, PRIX2, QTE3, PRIX3)
