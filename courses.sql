-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 20 sep. 2021 à 16:13
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
-- Base de données : `miniclassroom`
--

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `materialCode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalHours` int(11) NOT NULL,
  `idModule` int(11) NOT NULL,
  `idProfesseur` int(11) NOT NULL,
  PRIMARY KEY (`materialCode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`materialCode`, `name`, `totalHours`, `idModule`, `idProfesseur`) VALUES
('INFO_261', 'POWERSHELL', 30, 1, 1),
('INFO_240', 'CIRCUIT LOGIQUE', 26, 1, 2),
('INFO_250', 'BASES DE DONNEES', 30, 1, 3),
('INFO_253', 'WEB DYNAMIQUE', 30, 1, 3),
('INFO_163', 'RESEAUX ', 30, 1, 6),
('INFO_140', 'LANGAGE C', 32, 1, 7),
('LAN_110', 'FRANCAIS', 15, 2, 8),
('ENTR_110', 'FONCTIONNEMENTS DES ORGANISATIONS', 30, 4, 4),
('MATHS_110', 'ALGEBRES ET ANALYSES', 30, 3, 5),
('MATHS_120', 'RECHERCHE OPERATIONNELLE', 30, 3, 9);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
