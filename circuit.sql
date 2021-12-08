-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 23 oct. 2021 à 20:03
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `circuit`
--

-- --------------------------------------------------------

--
-- Structure de la table `circuit_ville`
--

DROP TABLE IF EXISTS `circuit_ville`;
CREATE TABLE IF NOT EXISTS `circuit_ville` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_circuit` int(11) DEFAULT NULL,
  `Id_ville` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_circuit` (`Id_circuit`),
  KEY `Id_ville` (`Id_ville`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ciruit`
--

DROP TABLE IF EXISTS `ciruit`;
CREATE TABLE IF NOT EXISTS `ciruit` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) DEFAULT NULL,
  `Prix` float DEFAULT NULL,
  `Date_debut` date DEFAULT NULL,
  `Date_fin` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) DEFAULT NULL,
  `Prenom` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client_deplacement`
--

DROP TABLE IF EXISTS `client_deplacement`;
CREATE TABLE IF NOT EXISTS `client_deplacement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_client` int(11) DEFAULT NULL,
  `Id_deplacement` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_client` (`Id_client`),
  KEY `Id_deplacement` (`Id_deplacement`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client_reservation`
--

DROP TABLE IF EXISTS `client_reservation`;
CREATE TABLE IF NOT EXISTS `client_reservation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_client` int(11) DEFAULT NULL,
  `Id_reservation` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_client` (`Id_client`),
  KEY `Id_reservation` (`Id_reservation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `deplacement`
--

DROP TABLE IF EXISTS `deplacement`;
CREATE TABLE IF NOT EXISTS `deplacement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Transport` varchar(255) NOT NULL,
  `Billets` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Numero` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

DROP TABLE IF EXISTS `ville`;
CREATE TABLE IF NOT EXISTS `ville` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) DEFAULT NULL,
  `Hotel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ville_hotel`
--

DROP TABLE IF EXISTS `ville_hotel`;
CREATE TABLE IF NOT EXISTS `ville_hotel` (
  `Id` int(11) NOT NULL,
  `Id_ville` int(11) DEFAULT NULL,
  `Id_hotel` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_ville` (`Id_ville`),
  KEY `Id_hotel` (`Id_hotel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
