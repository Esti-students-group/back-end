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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
