-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 23 mars 2022 à 09:30
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `parcinformatique`
--

-- --------------------------------------------------------

--
-- Structure de la table `clavier`  
--

DROP TABLE IF EXISTS `clavier`;
CREATE TABLE IF NOT EXISTS `clavier` (
  `Id_Clavier` int(11) NOT NULL AUTO_INCREMENT,
  `marque` varchar(50) DEFAULT NULL,
  `modèle` text,
  PRIMARY KEY (`Id_Clavier`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `clavier`
--

INSERT INTO `clavier` (`Id_Clavier`, `marque`, `modèle`) VALUES
(1, 'Logitech', 'G915'),
(2, 'Corsair', 'K70');

-- --------------------------------------------------------

--
-- Structure de la table `ecran`
--

DROP TABLE IF EXISTS `ecran`;
CREATE TABLE IF NOT EXISTS `ecran` (
  `Id_Ecran` int(11) NOT NULL AUTO_INCREMENT,
  `marque` varchar(50) DEFAULT NULL,
  `modèle` text,
  `tailleEcran` varchar(50) DEFAULT NULL,
  `port1` varchar(50) DEFAULT NULL,
  `port2` varchar(50) DEFAULT NULL,
  `port3` varchar(50) DEFAULT NULL,
  `port4` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Ecran`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ecran`
--

INSERT INTO `ecran` (`Id_Ecran`, `marque`, `modèle`, `tailleEcran`, `port1`, `port2`, `port3`, `port4`) VALUES
(1, 'Acer', 'K2', '21.5', 'HDMI', 'VGA', 'DVI', ''),
(2, 'iiyama', 'GB2570HSU-B1', '24.5', 'DisplayPort', 'HDMI', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `emprunteur`
--

DROP TABLE IF EXISTS `emprunteur`;
CREATE TABLE IF NOT EXISTS `emprunteur` (
  `Id_Emprunteur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prénom` varchar(50) NOT NULL,
  `statut` varchar(50) NOT NULL,
  `Id_Pret` int(11) NOT NULL,
  PRIMARY KEY (`Id_Emprunteur`),
  UNIQUE KEY `Id_Pret` (`Id_Pret`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `emprunteur`
--

INSERT INTO `emprunteur` (`Id_Emprunteur`, `nom`, `prénom`, `statut`, `Id_Pret`) VALUES
(1, 'Laurent', 'Cassio', 'Professeur', 1),
(2, 'Michel', 'Place', 'Élève', 2);

-- --------------------------------------------------------

--
-- Structure de la table `enceinte`
--

DROP TABLE IF EXISTS `enceinte`;
CREATE TABLE IF NOT EXISTS `enceinte` (
  `Id_Enceinte` int(11) NOT NULL AUTO_INCREMENT,
  `marque` varchar(50) DEFAULT NULL,
  `modèle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Enceinte`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enceinte`
--

INSERT INTO `enceinte` (`Id_Enceinte`, `marque`, `modèle`) VALUES
(1, 'Logitech', 'Z333'),
(2, 'Essentialb', 'EKO');

-- --------------------------------------------------------

--
-- Structure de la table `imprimante`
--

DROP TABLE IF EXISTS `imprimante`;
CREATE TABLE IF NOT EXISTS `imprimante` (
  `Id_Imprimante` int(11) NOT NULL AUTO_INCREMENT,
  `nomImprimante` varchar(50) DEFAULT NULL,
  `marque` varchar(50) DEFAULT NULL,
  `modèle` text,
  PRIMARY KEY (`Id_Imprimante`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `imprimante`
--

INSERT INTO `imprimante` (`Id_Imprimante`, `nomImprimante`, `marque`, `modèle`) VALUES
(1, 'LaMartine2000', 'HP', 'LaserJet Entreprise 700'),
(2, 'DéforestationPower', 'Brother', 'HL-L2310D');

-- --------------------------------------------------------

--
-- Structure de la table `matérielinformatique`
--

DROP TABLE IF EXISTS `matérielinformatique`;
CREATE TABLE IF NOT EXISTS `matérielinformatique` (
  `Id_matérielInformatique` int(11) NOT NULL AUTO_INCREMENT,
  `numéroDeSérie` text NOT NULL,
  `Id_videoProjecteur` int(11) DEFAULT NULL,
  `Id_Enceinte` int(11) DEFAULT NULL,
  `Id_Souris` int(11) DEFAULT NULL,
  `Id_Clavier` int(11) DEFAULT NULL,
  `Id_Ecran` int(11) DEFAULT NULL,
  `Id_Imprimante` int(11) DEFAULT NULL,
  `Id_Ordinateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_matérielInformatique`),
  UNIQUE KEY `Id_Enceinte` (`Id_Enceinte`),
  UNIQUE KEY `Id_Souris` (`Id_Souris`),
  UNIQUE KEY `Id_Clavier` (`Id_Clavier`),
  UNIQUE KEY `Id_Ecran` (`Id_Ecran`),
  UNIQUE KEY `Id_Imprimante` (`Id_Imprimante`),
  UNIQUE KEY `Id_Ordinateur` (`Id_Ordinateur`),
  UNIQUE KEY `Id_videoProjecteur` (`Id_videoProjecteur`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `matérielinformatique`
--

INSERT INTO `matérielinformatique` (`Id_matérielInformatique`, `numéroDeSérie`, `Id_videoProjecteur`, `Id_Enceinte`, `Id_Souris`, `Id_Clavier`, `Id_Ecran`, `Id_Imprimante`, `Id_Ordinateur`) VALUES
(1, 'bien351483773', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'A312SS', NULL, NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ordinateur`
--

DROP TABLE IF EXISTS `ordinateur`;
CREATE TABLE IF NOT EXISTS `ordinateur` (
  `Id_Ordinateur` int(11) NOT NULL AUTO_INCREMENT,
  `nomOrdinateur` varchar(50) DEFAULT NULL,
  `marque` varchar(50) DEFAULT NULL,
  `modèle` text,
  `processeur` varchar(50) DEFAULT NULL,
  `carteGraphique` varchar(50) DEFAULT NULL,
  `ram` varchar(50) DEFAULT NULL,
  `disqueDur` varchar(50) DEFAULT NULL,
  `Id_Souris` int(11) DEFAULT NULL,
  `Id_Clavier` int(11) DEFAULT NULL,
  `Id_Ecran` int(11) DEFAULT NULL,
  `Id_typeOrdinateur` int(11) NOT NULL,
  PRIMARY KEY (`Id_Ordinateur`),
  UNIQUE KEY `Id_Souris` (`Id_Souris`),
  UNIQUE KEY `Id_Clavier` (`Id_Clavier`),
  UNIQUE KEY `Id_Ecran` (`Id_Ecran`),
  KEY `Id_typeOrdinateur` (`Id_typeOrdinateur`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ordinateur`
--

INSERT INTO `ordinateur` (`Id_Ordinateur`, `nomOrdinateur`, `marque`, `modèle`, `processeur`, `carteGraphique`, `ram`, `disqueDur`, `Id_Souris`, `Id_Clavier`, `Id_Ecran`, `Id_typeOrdinateur`) VALUES
(1, '103PCPROF', 'HP', 'Elite 8200', 'I5 2.8 GHz', '', '8 Go DDR4', '512 GO SSD', 1, 1, 1, 1),
(2, 'Z203PC', 'Lenovo', 'ThinkCentre M800', 'I5 3.2 GHz', 'Intel HD Graphics 530', '16 Go DDR4', '512 GO SSD', 2, 2, 2, 1),
(3, 'PC-PRET1', 'HP', '240 G7', 'Intel Celeron N4000 2.6 GHz', 'Intel UHD 600', '4 GO DDR4', '128 GO SSD', NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `panne`
--

DROP TABLE IF EXISTS `panne`;
CREATE TABLE IF NOT EXISTS `panne` (
  `Id_Panne` int(11) NOT NULL AUTO_INCREMENT,
  `dateDePanne` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `Id_Ordinateur` int(11) DEFAULT NULL,
  `Id_Imprimante` int(11) DEFAULT NULL,
  `Id_videoProjecteur` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Panne`),
  KEY `Id_Ordinateur` (`Id_Ordinateur`),
  KEY `Id_Imprimante` (`Id_Imprimante`),
  KEY `Id_videoProjecteur` (`Id_videoProjecteur`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `panne`
--

INSERT INTO `panne` (`Id_Panne`, `dateDePanne`, `description`, `Id_Ordinateur`, `Id_Imprimante`, `Id_videoProjecteur`) VALUES
(1, '2022-03-20', 'G pa touché', 1, NULL, NULL),
(2, '2019-06-15', 'Utiliser du sirop comme encre dans limprimante nest pas une bonne idée', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pret`
--

DROP TABLE IF EXISTS `pret`;
CREATE TABLE IF NOT EXISTS `pret` (
  `Id_Pret` int(11) NOT NULL AUTO_INCREMENT,
  `datePret` varchar(50) NOT NULL,
  `dateRetour` varchar(50) NOT NULL,
  `Id_Ordinateur` int(11) NOT NULL,
  PRIMARY KEY (`Id_Pret`),
  UNIQUE KEY `Id_Ordinateur` (`Id_Ordinateur`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pret`
--

INSERT INTO `pret` (`Id_Pret`, `datePret`, `dateRetour`, `Id_Ordinateur`) VALUES
(1, '17/03/2022', '24/03/2022', 3);

-- --------------------------------------------------------

--
-- Structure de la table `salleaffectée`
--

DROP TABLE IF EXISTS `salleaffectée`;
CREATE TABLE IF NOT EXISTS `salleaffectée` (
  `Id_salleAffectée` int(11) NOT NULL AUTO_INCREMENT,
  `nomSalle` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_salleAffectée`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salleaffectée`
--

INSERT INTO `salleaffectée` (`Id_salleAffectée`, `nomSalle`) VALUES
(1, 'Z203');

-- --------------------------------------------------------

--
-- Structure de la table `souris`
--

DROP TABLE IF EXISTS `souris`;
CREATE TABLE IF NOT EXISTS `souris` (
  `Id_Souris` int(11) NOT NULL AUTO_INCREMENT,
  `marque` varchar(50) DEFAULT NULL,
  `modèle` text,
  PRIMARY KEY (`Id_Souris`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `souris`
--

INSERT INTO `souris` (`Id_Souris`, `marque`, `modèle`) VALUES
(1, 'Logitech', 'M650'),
(2, 'Lenovo', '4Y50Q64661');

-- --------------------------------------------------------

--
-- Structure de la table `typeordinateur`
--

DROP TABLE IF EXISTS `typeordinateur`;
CREATE TABLE IF NOT EXISTS `typeordinateur` (
  `Id_typeOrdinateur` int(11) NOT NULL AUTO_INCREMENT,
  `fixe` varchar(50) DEFAULT NULL,
  `tablette` varchar(50) DEFAULT NULL,
  `portable` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_typeOrdinateur`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typeordinateur`
--

INSERT INTO `typeordinateur` (`Id_typeOrdinateur`, `fixe`, `tablette`, `portable`) VALUES
(1, 'Fixe', NULL, NULL),
(2, NULL, NULL, 'Portable');

-- --------------------------------------------------------

--
-- Structure de la table `videoprojecteur`
--

DROP TABLE IF EXISTS `videoprojecteur`;
CREATE TABLE IF NOT EXISTS `videoprojecteur` (
  `Id_videoProjecteur` int(11) NOT NULL AUTO_INCREMENT,
  `marque` varchar(50) DEFAULT NULL,  
  `modèle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_videoProjecteur`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `videoprojecteur`
--

INSERT INTO `videoprojecteur` (`Id_videoProjecteur`, `marque`, `modèle`) VALUES
(1, 'Epson', 'eb-x49'),
(2, 'Benq', 'W2700');

-- --------------------------------------------------------

--
-- Structure de la table `équiper`
--

DROP TABLE IF EXISTS `équiper`;
CREATE TABLE IF NOT EXISTS `équiper` (
  `Id_Ordinateur` int(11) NOT NULL,
  `Id_Imprimante` int(11) NOT NULL,
  `Id_Enceinte` int(11) NOT NULL,
  `Id_salleAffectée` int(11) NOT NULL,
  `Id_videoProjecteur` int(11) NOT NULL,
  PRIMARY KEY (`Id_Ordinateur`,`Id_Imprimante`,`Id_Enceinte`,`Id_salleAffectée`,`Id_videoProjecteur`),
  KEY `Id_Imprimante` (`Id_Imprimante`),
  KEY `Id_Enceinte` (`Id_Enceinte`),
  KEY `Id_salleAffectée` (`Id_salleAffectée`),
  KEY `Id_videoProjecteur` (`Id_videoProjecteur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `équiper`
--

INSERT INTO `équiper` (`Id_Ordinateur`, `Id_Imprimante`, `Id_Enceinte`, `Id_salleAffectée`, `Id_videoProjecteur`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
