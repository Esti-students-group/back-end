-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 20 sep. 2021 à 16:14
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
-- Structure de la table `professors`
--

DROP TABLE IF EXISTS `professors`;
CREATE TABLE IF NOT EXISTS `professors` (
  `idProfessor` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeCompte` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idProfessor`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `professors`
--

INSERT INTO `professors` (`idProfessor`, `firstname`, `lastname`, `contact`, `age`, `sex`, `email`, `typeCompte`, `password`, `address`) VALUES
(1, 'ANDRINIRINIAIMALAZA', 'Fanambinantsoa Philibert', 345412589, 35, 'Masculin', 'fanambinantsoa.philibert.andriniriniaimalaza@esti', 'Invité', '10a10a10', 'Antanimena'),
(2, 'RAZAFINDRAKOTO', ' Aimé', 341125879, 55, 'Masculin', 'aime.razafindrakoto@esti.mg', 'Invité', '10b10b10', 'Antanimena'),
(3, 'ANDRIANARIMBAHY', 'Dina Lalaniony', 341025879, 39, 'Masculin', 'dinalalaniony.andrianarimbahy@esti.mg', 'Invité', '10c10c10', 'Antanimena'),
(4, ' RALANDISON', ' Gilde ', 348568912, 37, 'Masculin', 'gilde.ralandison', 'Invité', '10d10d10', 'Antanimena'),
(5, 'RANDRIAMISY', 'Hasimbola', 348569871, 30, 'Masculin', 'hasimbola.randriamisy@esti.mg', 'Invité', '10e10e10', 'Antanimena'),
(6, 'RAKOTONIRINA', ' Hariniony', 341025896, 33, 'Masculin', 'hariniony.rakotonirina@esti.mg', 'Invité', '10f10f10', 'Antanimena'),
(7, 'RAZONARISOA', 'Nirina', 344528945, 38, 'Masculin', 'nirina.razonarisoa@esti.mg', 'Invité', '10g10g10', 'Antanimena'),
(8, 'RAHARIARISOA', 'Michèle', 348596572, 32, 'Feminin', 'michele.rahariarisoa@esti.mg', 'Invité', '10h10h10', 'Antanimena'),
(9, 'RABEMANANJARA', 'Andry', 348597621, 48, 'Masculin', 'andry.rabemananjara@esti.mg', 'Invité', '10i10i10', 'Antanimena'),
(10, 'RAJAOFERA', 'José', 347581242, 60, 'Masculin', 'jose.rajaofera@esti.mg', 'Invité', '10j10j10', 'Antanimena'),
(11, 'ANTILAHY', 'Christelle', 341215875, 30, 'Feminin', 'herimpitia.antilahy@esti.mg', 'Invité', '10k10k10', 'Antanimena'),
(12, 'RAZANAMPARANY', 'Xavier', 348568571, 50, 'Masculin', 'xavier.razanamparany@esti.mg', 'Invité', '10l10l10', 'Antanimena'),
(13, 'Ndriantiana', 'Miranto', 342585612, 28, 'Feminin', 'miranto.ndriantiana@esti.mg-', 'Invité', '10m10m10', 'Antanimena');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
