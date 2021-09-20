-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 20 sep. 2021 à 16:08
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
-- Structure de la table `assist`
--

DROP TABLE IF EXISTS `assist`;
CREATE TABLE IF NOT EXISTS `assist` (
  `serialNumber` int(11) NOT NULL,
  `materialCode` int(11) NOT NULL,
  PRIMARY KEY (`serialNumber`,`materialCode`),
  KEY `assister_COURS0_FK` (`materialCode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Structure de la table `have`
--

DROP TABLE IF EXISTS `have`;
CREATE TABLE IF NOT EXISTS `have` (
  `idTimetable` int(11) NOT NULL,
  `serialNumber` int(11) NOT NULL,
  PRIMARY KEY (`idTimetable`,`serialNumber`),
  KEY `obtenir_ETUDIANTS0_FK` (`serialNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `idModule` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materialCode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idModule`),
  KEY `MODULES_COURS_FK` (`materialCode`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`idModule`, `name`, `materialCode`) VALUES
(1, 'INFORMATIQUES', 'INFO'),
(2, 'LANGUES', 'LAN'),
(3, 'MATHEMATIQUES', 'MATHS'),
(4, 'ENTREPRISES', 'ENTR');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `materialCode` int(11) NOT NULL,
  `serialNumber` int(11) NOT NULL,
  `idNote` int(11) NOT NULL,
  `noteExercises` float NOT NULL,
  `noteExam` float NOT NULL,
  PRIMARY KEY (`materialCode`,`serialNumber`),
  KEY `noter_ETUDIANTS0_FK` (`serialNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Structure de la table `publications`
--

DROP TABLE IF EXISTS `publications`;
CREATE TABLE IF NOT EXISTS `publications` (
  `numberPublication` int(11) NOT NULL AUTO_INCREMENT,
  `patterns` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datePublication` date NOT NULL,
  `timePublication` time NOT NULL,
  `serialNumber` int(11) NOT NULL,
  `idProfessor` int(11) NOT NULL,
  `idClasse` int(11) NOT NULL,
  PRIMARY KEY (`numberPublication`),
  KEY `MESSAGES_PUBLICATIONS_ETUDIANTS_FK` (`serialNumber`),
  KEY `MESSAGES_PUBLICATIONS_PROFESSEURS0_FK` (`idProfessor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `serialNumber` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` int(11) NOT NULL,
  `address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeCompte` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=20201040 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`serialNumber`, `firstname`, `lastname`, `level`, `contact`, `address`, `sex`, `age`, `email`, `typeCompte`, `password`) VALUES
(2020101, ' Amine Berajai', 'Rohan', 'L1G1', 346572584, 'Behoririka', 'Masculin', 18, 'rohan.amine.berajai@esti.mg', 'Administrateur', '1a1a1a1a'),
(2020102, 'Andriamanantoanina', 'Tsiory Ryan ', 'L1G1', 342015640, 'Ankadifotsy', 'Masculin', 19, '	\r\ntsiory.ryan.andriamanantoanina@esti.mg', 'Administrateur', '1b1b1b1b'),
(2020103, 'Andrianarijaona', 'Nomena Fitia', 'L1G1', 341102548, 'Ambatoroka', 'Feminin', 20, '	\r\nnomena.fitia.andrianarijaona@esti.mg', 'Administrateur', '1c1c1c1c'),
(2020104, ' Andrianjatovo', 'Tsiory Nantenaina', 'L1G1', 342015689, 'Tsimbazaza', 'Masculin', 19, '	\r\ntsiory.nantenaina.andrianjatovo@esti.mg', 'Administrateur', '1d1d1d1d'),
(2020105, 'Didier', 'Nazirah', 'L1G1', 344256897, 'Ambatomainty', 'Feminin', 20, '	\r\nnazirah.didier@esti.mg', 'Administrateur', '1e1e1e1e'),
(2020106, ' Nandrianina Fanambinantsoa', 'Mendrika', 'L1G1', 347895642, 'Antanimena', 'Masculin', 20, '	\r\nmendrika.nandrianina.fanambinantsoa@esti.mg', 'Administrateur', '1f1f1f1f'),
(2020107, ' Hajatiana', 'Sitraka Henri-Lys', 'L1G1', 341011140, 'Ambatoroka', 'Masculin', 20, '	\r\nsitraka.henri-lys.hajatiana@esti.mg', 'Administrateur', '1g1g1g1g'),
(2020108, 'Lalaniaina', 'Jonquille Sonia ', 'L1G1', 347289652, 'Manakambahiny', 'Feminin', 20, '	\r\njonquille.sonia.lalaniaina@esti.mg', 'Administrateur', '1g1g1g1g'),
(2020109, ' Tsaravita', 'Julio Leparisoa', 'L1G1', 342514523, 'Antanimena', 'Masculin', 20, '	\r\ntsaravita.julio.leparisoa@esti.mg', 'Administrateur', '1h1h1h1h'),
(20201010, 'Masy', 'Charla Rosalie', 'L1G1', 341212145, 'Manakambahiny', 'Feminin', 20, '	\r\ncharla.rosalie.masy@esti.mg', 'Administrateur', '1i1i1i1i'),
(20201011, 'Naharijaona', 'Faniry Cathya', 'L1G1', 31214785, 'Ivato', 'Feminin', 18, '	\r\nfaniry.cathya.naharijaona@esti.mg', 'Administrateur', '1j1j1j1j'),
(20201012, ' Naharijaona', 'Faniry Nancya', 'L1G1', 341245879, 'Ivato', 'Feminin', 18, '	\r\nfaniry.nancya.naharijaona@esti.mg', 'Administrateur', '1k1k1k1k'),
(20201013, 'Rakotoarimanana', 'Tefy Nenana', 'L1G1', 342145879, 'Antanimena', 'Masculin', 20, '	\r\ntefy.nenana.rakotoarimanana@esti.mg', 'Administrateur', '1l1l1l1l'),
(20201014, 'Rabemananjara', 'Hajaniaina Andritahina', 'L1G1', 345201327, 'Antanimena', 'Masculin', 20, '	\r\nhajaniaina.andritahina.rabemananjara@esti.mg', 'Administrateur', '1m1m1m1m'),
(20201015, 'Rabetsaroana', 'Harena Iaviantsoa ', 'L1G1', 345626489, 'Antanimena', 'Masculin', 20, 'harena.iaviantsoa.rabetsaroana@esti.mg', 'Administrateur', '1n1n1n1n'),
(20201016, ' Rafanomezana', 'Herimamy Hasintso ', 'L1G1', 341206489, 'Ampasampito', 'Masculin', 18, 'herimamy.hasintso.rafanomezana@esti.mg', 'Administrateur', '1o1o1o1o'),
(20201017, ' Rajaonarivelo', 'Joyo Richard', 'L1G1', 324578921, 'Amboditsiry', 'Masculin', 20, '	\r\njoyo.richard.rajaonarivelo@esti.mg', 'Administrateur', '1p1p1p1p'),
(20201018, 'Rajonahson', 'Fanaiky', 'L1G1', 341789523, 'Ivato', 'Masculin', 18, '	\r\nfanaiky.rajonahson@esti.mg', 'Administrateur', '1q1q1q1q'),
(20201019, 'Rakotoarinivo', 'Tanjona Nekena ', 'L1G1', 341202145, 'Ambatomaro', 'Masculin', 18, 'tanjona.nekena.rakotoarinivo@esti.mg', 'Administrateur', '1r1r1r1r'),
(20201020, 'Rakotoarisoa', 'Miradoniaina ', 'L1G1', 341025897, 'Ankadifotsy', 'Masculin', 17, '	\r\nmiradoniaina.rakotoarisoa@esti.mg', 'Administrateur', '1s1s1s1s'),
(20201021, 'Rakotomamonjy', 'Allan Ranto', 'L1G1', 344052648, 'Ankadifotsy', 'Masculin', 19, '	\r\nallan.ranto.rakotomamonjy@esti.mg', 'Administrateur', '1t1t1t1t'),
(20201022, ' Rakotondrabe', 'Haritiana Antonio', 'L1G1', 341145896, 'Analamahintsy', 'Masculin', 19, '	\r\nharitiana.antonio.rakotondrabe@esti.mg', 'Administrateur', '1u1u1u1u'),
(20201023, 'Rakotonirainy', 'Manana NyAary', 'L1G1', 345248963, 'Antanimena', 'Masculin', 19, '	\r\nmanana.nyaary.rakotonirainy@esti.mg', 'Administrateur', '1v1v1v1v'),
(20201024, 'Rakotovao', 'Adrian', 'L1G1', 345214896, 'Besarety', 'Masculin', 20, '	\r\nadrian.rakotovao@esti.mg', 'Administrateur', '1w1w1w1w'),
(20201025, 'Ramasiarisolo', 'Ndriankaja Nome', 'L1G1', 342158963, 'Tsimbazaza', 'Masculin', 18, 'ndriankaja.nome.ramasiarisolo@esti.mg', 'Administrateur', '1x1x1x1x'),
(20201026, 'Ranariveloarimanana', 'Fanomezantsoa Tahina.', 'L1G1', 345269837, 'Mandroseza', 'Masculin', 20, '	\r\nfanomezantsoa.tahina.ranariveloarimanana@esti.mg', 'Administrateur', '1y1y1y1y'),
(20201027, 'Randriamananjara', 'Fandresena Valery', 'L1G1', 345126983, 'Antanimena', 'Masculin', 20, '	 fandresena.valery.randriamananjara@esti.mg', 'Administrateur', '1z1z1z1z'),
(20201028, 'Randriamanjaka', 'Marolahy Pierre', 'L1G1', 348579632, 'Ambatoroka', 'Masculin', 20, '	\r\nmarolahy.pierre.randriamanjaka@esti.mg', 'Administrateur', '2a2a2a2a'),
(20201029, ' Randriamiandra', 'Finaritra Nomena', 'L1G1', 348579623, 'Antanimena', 'Feminin', 18, '	\r\nfinaritra.nomena.randriamiandra@esti.mg', 'Administrateur', '2b2b2b2b'),
(20201030, 'Randrianarison', 'Noavintsoa Kevin', 'L1G1', 348576921, 'Antanimena', 'Masculin', 19, '	\r\nnoavintsoa.kevin.randrianarison@esti.mg', 'Administrateur', '2c2c2c2c'),
(20201031, 'Randrianasoloarinavalona', 'Lovanirina', 'L1G1', 348578962, 'Ankazomanga', 'Masculin', 20, '	\r\nlovanirina.randrianasoloarinavalona@esti.mg', 'Administrateur', '2d2d2d2d'),
(20201032, ' Randriarimalala', 'Rodino Brian', 'L1G1', 348569872, 'Antanimena', 'Masculin', 19, 'rodino.brian.randriarimalala@esti.mg', 'Administrateur', '2e2e2e2e'),
(20201033, 'Rasamiony', 'Jeiela Ambinintsoa ', 'L1G1', 345879610, 'Antanimena', 'Masculin', 20, '	\r\njeiela.ambinintsoa.rasamiony@esti.mg', 'Administrateur', '2f2f2f2f'),
(20201034, 'Ratodisoa', 'Emmanuel Xavier', 'L1G1', 346908718, 'Tanjombato', 'Masculin', 20, '	emmanuel.xavier.ratodisoa@esti.mg', 'Administrateur', '2g2g2g2g'),
(20201035, 'Ravelonarivo', 'Lahatra Anjara', 'L1G1', 348576812, 'Amboditsiry', 'Masculin', 20, '	\r\nlahatra.anjara.ravelonarivo@esti.mg', 'Administrateur', '2h2h2h2h'),
(20201036, 'Razafimahatratra', 'Dimbiniaina Fitahiana', 'L1G1', 348596512, 'Antanimena', 'Masculin', 20, '	\r\ndimbiniaina.fitahiana.razafimahatratra@esti.mg', 'Administrateur', '2i2i2i2i'),
(20201037, ' Razafindrabe', 'Orion Jonathan ', 'L1G1', 347859632, 'Ankadifotsy', 'Masculin', 19, '	\r\norion.jonathan.razafindrabe@esti.mg', 'Administrateur', '2j2j2j2j'),
(20201038, 'Solofo', 'Nirina', 'L1G1', 348568975, 'Andohalo', 'Masculin', 20, '	\r\nnirina.solofo@esti.mg', 'Administrateur', '2k2k2k2k'),
(20201039, 'Jia Kinta Tsitana Iloharaoke', 'Khanie', 'L1G1', 345625879, 'Ambanidia', 'Feminin', 17, '	\r\njia.kinta.tsitana.iloharaoke@esti.mg', 'Administrateur', '2l2l2l2l');

-- --------------------------------------------------------

--
-- Structure de la table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
CREATE TABLE IF NOT EXISTS `timetable` (
  `idTimetable` int(11) NOT NULL AUTO_INCREMENT,
  `dateClasse` date NOT NULL,
  `dateExam` date NOT NULL,
  `courseDuration` time NOT NULL,
  `idProfessor` int(11) NOT NULL,
  PRIMARY KEY (`idTimetable`),
  KEY `EMPLOI_DU_TEMPS_PROFESSEURS_FK` (`idProfessor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
