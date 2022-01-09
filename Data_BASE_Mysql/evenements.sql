-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 26 juil. 2021 à 18:51
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

CREATE TABLE `evenements` (
  `id_evenemnt` int(11) NOT NULL,
  `Designation_event` varchar(255) NOT NULL,
  `Description_event` text NOT NULL,
  `Debut_event` datetime NOT NULL,
  `Fin_event` datetime NOT NULL,
  `Lieu_event` varchar(255) NOT NULL,
  `image_event` text NOT NULL,
  `file_event` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `evenements`
--

INSERT INTO `evenements` (`id_evenemnt`, `Designation_event`, `Description_event`, `Debut_event`, `Fin_event`, `Lieu_event`, `image_event`, `file_event`) VALUES
(1, 'Event 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.', '2021-07-23 00:00:00', '2021-07-24 00:00:00', 'RABAT', 'image_1.png', 'TEST.pdf'),
(2, 'Event 2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Totam esse aliquam dolorum ducimus sequi? Facilis repellendus ipsa id doloremque ex.', '2021-07-24 16:00:00', '2021-07-26 18:00:00', 'TAZA', 'image_2.jpg', 'TEST.pdf'),
(3, 'event 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2021-07-25 15:00:00', '2021-07-31 01:00:00', 'FES', 'image_3.jpg', 'TEST.pdf'),
(4, 'Event 4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.', '2021-07-23 00:00:00', '2021-07-24 00:00:00', 'OUJDA', 'image_4.jpg', 'TEST.pdf'),
(5, 'Event 5', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Totam esse aliquam dolorum ducimus sequi? Facilis repellendus ipsa id doloremque ex.', '2021-07-24 16:00:00', '2021-07-26 18:00:00', 'TAZA', 'image_5.jpg', 'TEST.pdf'),
(6, 'event 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2021-07-25 15:00:00', '2021-07-31 01:00:00', 'FES', 'image_6.jpg', 'TEST.pdf'),
(7, 'Event 7', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.', '2021-07-23 00:00:00', '2021-07-24 00:00:00', 'RACHIDIA', 'image_7.jpg', 'TEST.pdf'),
(8, 'Event 8', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Totam esse aliquam dolorum ducimus sequi? Facilis repellendus ipsa id doloremque ex.', '2021-07-24 16:00:00', '2021-07-26 18:00:00', 'TAZA', 'image_8.jpg', 'TEST.pdf'),
(9, 'Event 9', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2020-07-25 15:00:00', '2020-07-31 01:00:00', 'FES', 'image_9.jpg', 'TEST.pdf'),
(10, 'event 7', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae provident id quisquam quas quos sequi! Labore deserunt numquam eligendi vitae.', '2021-07-23 00:00:00', '2021-07-24 00:00:00', 'RACHIDIA', 'image_7.jpg', 'TEST.pdf'),
(11, 'event 8', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Totam esse aliquam dolorum ducimus sequi? Facilis repellendus ipsa id doloremque ex.', '2021-07-24 16:00:00', '2021-07-26 18:00:00', 'TAZA', 'image_8.jpg', 'TEST.pdf'),
(12, 'event 9', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2020-07-25 15:00:00', '2020-07-31 01:00:00', 'FES', 'image_9.jpg', 'TEST.pdf'),
(13, 'event 10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2021-06-30 15:00:00', '2021-07-31 01:00:00', 'FES', 'image_10.jpg', 'TEST.pdf'),
(14, 'event 11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2020-07-25 08:00:00', '2020-07-31 01:00:00', 'FES', 'image_11.jpg', 'TEST.pdf'),
(15, 'event 12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2021-02-25 15:00:00', '2021-05-29 01:00:00', 'FES', 'image_12.jpg', 'TEST.pdf'),
(16, 'event 13', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2020-07-25 15:00:00', '2021-07-31 01:00:00', 'FES', 'image_13.jpg', 'TEST.pdf'),
(17, 'event 14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2021-03-25 15:00:00', '2021-04-15 09:00:00', 'FES', 'image_14.jpg', 'TEST.pdf'),
(18, 'event 15', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2021-07-25 15:00:00', '2021-07-31 01:00:00', 'FES', 'image_15.jpg', 'TEST.pdf'),
(19, 'event 16', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2021-07-25 15:00:00', '2021-07-31 01:00:00', 'NADOR', 'image_16.jpg', 'TEST.pdf'),
(20, 'event 17', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam dolor, possimus obcaecati repellendus impedit praesentium esse quisquam autem corrupti amet ullam distinctio eveniet ad, eum cupiditate ex similique non. Accusamus mollitia facere hic placeat iusto delectus magni sit commodi veniam!', '2021-07-25 15:00:00', '2021-07-31 01:00:00', 'CASA', 'image_17.jpg', 'TEST.pdf');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`id_evenemnt`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id_evenemnt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
