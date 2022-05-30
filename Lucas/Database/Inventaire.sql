--
-- On crée les tables et si elle existe on les supprime pour les recrée
--

DROP TABLE IF EXISTS Ecrans;
CREATE TABLE Ecrans(
   Id_Ecrans int(11) NOT NULL AUTO_INCREMENT,
   Marque VARCHAR(50),
   numeroDeSerie TEXT,
   modele VARCHAR(100),
   port1 VARCHAR(50),
   port2 VARCHAR(50),
   port3 VARCHAR(50),
   pouces VARCHAR(50),
   etat VARCHAR(50),
   PRIMARY KEY(Id_Ecrans)
);

DROP TABLE IF EXISTS clavier;
CREATE TABLE clavier(
   Id_clavier int(11) NOT NULL AUTO_INCREMENT,
   marque VARCHAR(50),
   numeroDeSerie TEXT,
   modele VARCHAR(100),
   etat VARCHAR(50),
   PRIMARY KEY(Id_clavier)
);

DROP TABLE IF EXISTS souris;
CREATE TABLE souris(
   Id_souris int(11) NOT NULL AUTO_INCREMENT,
   marque VARCHAR(50),
   numeroDeSerie TEXT,
   modele VARCHAR(100),
   etat VARCHAR(50),
   PRIMARY KEY(Id_souris)
);

DROP TABLE IF EXISTS Salle_de_Classe;
CREATE TABLE Salle_de_Classe(
   Id_classe int(11) NOT NULL AUTO_INCREMENT,
   Nom VARCHAR(50),
   PRIMARY KEY(Id_classe)
);

DROP TABLE IF EXISTS ordinateur;
CREATE TABLE ordinateur(
   Id_ordinateur int(11) NOT NULL AUTO_INCREMENT,
   marque VARCHAR(50),
   numeroDeSerie TEXT,
   modele VARCHAR(100),
   ram VARCHAR(50),
   carte_graphique VARCHAR(50),
   espaces_de_stockage VARCHAR(50),
   processeurs VARCHAR(50),
   Id_classe INT,
   Id_souris INT NOT NULL,
   Id_clavier INT NOT NULL,
   Id_Ecrans INT NOT NULL,
   PRIMARY KEY(Id_ordinateur),
   UNIQUE(Id_souris),
   UNIQUE(Id_clavier),
   UNIQUE(Id_Ecrans),
   FOREIGN KEY(Id_classe) REFERENCES Salle_de_Classe(Id_classe),
   FOREIGN KEY(Id_souris) REFERENCES souris(Id_souris),
   FOREIGN KEY(Id_clavier) REFERENCES clavier(Id_clavier),
   FOREIGN KEY(Id_Ecrans) REFERENCES Ecrans(Id_Ecrans)
);

DROP TABLE IF EXISTS imprimante;
CREATE TABLE imprimante(
   Id_imprimante int(11) NOT NULL AUTO_INCREMENT,
   marque VARCHAR(50),
   numeroDeSerie TEXT,
   modele VARCHAR(100),
   etat VARCHAR(50),
   Id_classe INT,
   PRIMARY KEY(Id_imprimante),
   FOREIGN KEY(Id_classe) REFERENCES Salle_de_Classe(Id_classe)
);

DROP TABLE IF EXISTS video_Projecteur;
CREATE TABLE video_Projecteur(
   Id_video_Projecteur int(11) NOT NULL AUTO_INCREMENT,
   marque VARCHAR(50),
   numeroDeSerie TEXT,
   modele VARCHAR(100),
   etat VARCHAR(50),
   telecommande VARCHAR(50),
   Id_classe INT,
   PRIMARY KEY(Id_video_Projecteur),
   FOREIGN KEY(Id_classe) REFERENCES Salle_de_Classe(Id_classe)
);

--
-- On insert le jeux de valeur
--

INSERT INTO `Ecrans` (`Id_Ecrans`,`Marque`,`numeroDeSerie`,`modele`,`port1`,`port2`,`port3`,`pouces`,`etat`)
VALUES (1, 'Iiyama', 'AZSQD15623QSD','G-Master G2560HSU-B3','HDMI','','DisplayPort','24.5','Bonne Etat'),
(2,'Acer','QSIOUGFDV41MMP6','Nitro','HDMI','DisplayPort','HDMI','23.8','Bonne Etat'),
(3, 'Iiyama', 'AZSQSQDXF3QSD','G-Master G2560HSU-B3','HDMI','','DisplayPort','24.5','Neuf');

INSERT INTO `video_Projecteur` (`Id_video_Projecteur`,`marque`,`numeroDeSerie`,`modele`,`etat`,`telecommande`,`Id_classe`)
VALUES (1,'Epson','23D3E1RC324CEHUNI','685wi','Bonne Etat','Avec',1),
(2,'Epson','23D3E1456124CEHUNI','685wi','Moyen','Sans',3),
(3,'Epson','23D3EPORK4CEHUNI','685wi','Bonne Etat','Avec',2);  

INSERT INTO `clavier` (`Id_clavier`,`marque`,`numeroDeSerie`,`modele`,`etat`)
VALUES (1,'Logitech','AFSQG544512','G512','Neuf'),
(2,'Corsair','BFSOQJUOBFQS645465','K70 RGB MK2','Bonne Etat'),
(3,'Corsair','BFSOQ476561S645465','K70 RGB MK2','Neuf');

INSERT INTO `souris` (`Id_souris`,`marque`,`numeroDeSerie`,`modele`,`etat`)
VALUES (1,'Logitech','OFQSOIH4548QSD1','G502 HERO','Bonne état'),
(2,'ASUS','QJSOPFQSX646','ROG Spatha X','Neuf'),
(3,'Logitech','OF4520548QSD1','G502 HERO','Moyen');

INSERT INTO `imprimante` (`Id_imprimante`,`marque`,`numeroDeSerie`,`modele`,`etat`,`Id_classe`)
VALUES (1,'brother','L3550004dQQJDCX','DCP-L3550CDW','Moyen',1),
(2,'HP','OPDFJOFJOQ604504','PageWide XL Pro 8200 AO','Neuf',3);

INSERT INTO `ordinateur` (`Id_ordinateur`,`marque`,`numeroDeSerie`,`modele`,`ram`,`carte_graphique`,`espaces_de_stockage`,`processeurs`,`Id_classe`,`Id_souris`,`Id_clavier`,`Id_Ecrans`)
VALUES (1,'HP','FPSQJNIO179854','ELITEDESK 800 G1 TOUR','8go DDR3','Intel HD Graphics 4600','500go HDD','Intel Core I5-4570 3.20 Ghz',1,2,2,1),
(2,'HP','F546OMLO179854','PRODESK 600 G1 SFF','8go DDR3','Intel HD Graphics 4600','500go HDD','Intel Core I5-4570 3.20 Ghz',1,1,3,3),
(3,'LENOVO','AJFOSQPX215SD','THINKCENTRE M700 SFF','16Go DDR4','Intel UHD Graphics 530','SSD 120Go + 1To HDD','Intel Core I7-6700 3.40GHz',2,3,1,2);

INSERT INTO `Salle_de_Classe` (`Id_classe`,`Nom`)
VALUES (1,"B101"),
(2,"B102"),
(3,"B103");