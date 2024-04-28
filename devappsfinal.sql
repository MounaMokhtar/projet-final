-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 28 avr. 2024 à 23:28
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `devappsfinal`
--

-- --------------------------------------------------------

--
-- Structure de la table `appel_offre`
--

CREATE TABLE `appel_offre` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `quantite` int(11) NOT NULL,
  `budget` float NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `id_utilisateur_id` int(11) DEFAULT NULL,
  `id_categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `appel_offre`
--

INSERT INTO `appel_offre` (`id`, `nom`, `quantite`, `budget`, `description`, `date`, `id_utilisateur_id`, `id_categorie_id`) VALUES
(8, 'Pc acer', 60, 200000, '7i RAM 16 Windows 11', '2023-02-16', 1, 1),
(27, 'projecteur', 100, 500000, 'nouuuv', '2023-03-07', 1, 1),
(28, 'jklm', 233, 13.25, 'nouv', '2023-03-07', 1, 1),
(29, 'aa', 20, 20, 'dd', '2023-03-07', 1, 1),
(31, 'ddd', 2, 2, 'dd', '2023-03-08', 1, 1),
(32, 'ddd', 1, 1, 'ddd', '2023-03-08', 1, 1),
(33, 'gggg', 600, 12000, 'desccc', '2023-03-08', 1, 1),
(34, 'gggg', 600, 12000, 'desccc', '2023-03-08', 1, 1),
(35, 'ddd', 20, 2000, 'dadadadadada', '2023-03-08', 1, 1),
(36, 'ddd', 20, 2000, 'dadadadadada', '2023-03-08', 1, 1),
(37, 'ddd', 20, 20000, 'dadadadadada', '2023-03-09', 175, 3),
(38, 'ddd', 20000, 2000, 'dadadadadada', '2023-03-09', 175, 3),
(39, 'ddddd', 2000, 2000, 'dadadadadada', '2023-03-09', 175, 3),
(40, 'ddd', 20, 2000, 'ddddddddddd', '2023-03-09', 162, 3),
(41, 'ddddd', 2000, 20000, 'dadadadadada', '2023-03-09', 175, 3),
(42, 'Projecteur', 12, 20000, 'nouveau epson', '2023-03-09', 175, 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'TECHNOLOGIQUES'),
(3, 'BUREAUTIQUES'),
(22, 'MEUBLES'),
(26, 'ELECTRONIQUES');

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE `demande` (
  `id` int(11) NOT NULL,
  `idutilisateur` int(11) NOT NULL,
  `idproduit` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `demande`
--

INSERT INTO `demande` (`id`, `idutilisateur`, `idproduit`, `date`) VALUES
(4, 179, 80, '2024-04-27'),
(5, 181, 80, '2024-04-28');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id_facture` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `date` date NOT NULL,
  `etat` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id_facture`, `numero`, `nom`, `prix`, `date`, `etat`, `description`, `image`, `id_utilisateur`) VALUES
(21, 21, 'SSDS', 23, '2023-02-21', '0', 'kfmslmflsdm', 'dd', 1),
(25, 2021, 'aasasas', 20, '2018-01-01', 'good', 'dadaadad', 'd88f03d03ddaf2bba30676d45e102b62.png', 1),
(28, 20, 'sasasa', 2, '2018-01-01', 'assas', 'sasasasasas', '95bd50fc03bd906009568d7236dff67e.png', 1),
(30, 12, 'GTGTG', 20, '2023-03-07', '0', 'GTGT', 'ddd', 1),
(32, 20, 'asaa', 20, '2023-03-07', 'aa', 'zzz', 'zz', 1),
(35, 225, 'fac1', 50, '2023-03-07', 'etat2', 'desc2', 'img2', 1),
(37, 20, 'dd', 20, '2023-03-08', 'dd', 'dd', 'dd', 1),
(42, 50, 'marouen', 5000, '2018-01-01', 'etat8chiffres min', 'etat8chiffres min', '86fa1bdfdae3958663c69db2f13fa10b.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `favorie`
--

CREATE TABLE `favorie` (
  `id` int(11) NOT NULL,
  `idutilisateur` int(11) NOT NULL,
  `idproduit` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `favorie`
--

INSERT INTO `favorie` (`id`, `idutilisateur`, `idproduit`, `date`) VALUES
(1, 1, 21, '2023-03-04'),
(2, 1, 21, '2023-03-04'),
(3, 1, 21, '2023-03-07'),
(4, 1, 21, '2023-03-07'),
(5, 1, 66, '2023-03-09'),
(6, 175, 21, '2023-03-09'),
(7, 175, 21, '2023-03-09'),
(8, 175, 81, '2023-03-09'),
(9, 179, 80, '2024-04-27'),
(10, 181, 81, '2024-04-28');

-- --------------------------------------------------------

--
-- Structure de la table `finance`
--

CREATE TABLE `finance` (
  `id` int(11) NOT NULL,
  `taxe` float NOT NULL,
  `tva` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `etat` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `id_facture` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `finance`
--

INSERT INTO `finance` (`id`, `taxe`, `tva`, `photo`, `prix`, `etat`, `date`, `id_facture`) VALUES
(2, 0, 44, '20', 0, 'paid', '2018-01-01', 21),
(3, 120, 20, 'adda', 203, 'payee', '2025-01-01', 21),
(14, 22, 10, 'hhh', 20, 'fgjh', '2023-03-07', 21),
(16, 2, 20, 'aa', 20, 'aa', '2023-03-07', 21),
(18, 5, 55, 'fdq', 0, 'qdfsk', '2023-03-08', 35),
(19, 20, 20, 'dd', 20, 'dd', '2023-03-08', 32),
(20, 12, 12, 'ddd', 20, 'dd', '2023-03-08', 21),
(21, 20, 225555, 'dadada', 50, 'eeee', '2018-01-01', 21);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `quantite` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `id_categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `nom_produit`, `description`, `prix`, `quantite`, `photo`, `date`, `id_categorie_id`) VALUES
(21, 'chaise', 'chaise pour bureau', 200, 100, 'd471b1594d87ca90bd934bf597a60220.jpg', '2023-02-23', 22),
(66, 'pc', ' pc portable', 14, 100, 'aaa', '2023-03-08', 3),
(79, 'chaise', 'chaise de bureau', 200, 100, 'e46656d9e28bebd71e2572a748f8f163.jpg', '2023-03-09', 22),
(80, 'pc potable', 'pc portable', 400, 101, 'e0e566e0484f505f99ca4d253e598a73.jpg', '2023-03-09', 1),
(81, 'projecteur', 'projecteur techno', 400, 150, '8701d819b88c09bc9747a69df4d266e4.jpg', '2023-03-09', 26),
(82, 'iphone', 'nouvelle produit', 2000, 800, 'b71feff7dac406f4c9917e5ed3c9c2b6.jpg', '2024-04-28', 1);

-- --------------------------------------------------------

--
-- Structure de la table `publicite`
--

CREATE TABLE `publicite` (
  `id` int(11) NOT NULL,
  `nom_pub` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_sponsor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `publicite`
--

INSERT INTO `publicite` (`id`, `nom_pub`, `description`, `image`, `id_sponsor_id`) VALUES
(18, 'dDDA', 'd', 'c1873df109885e71895c579df6bd93ad.png', 1);

-- --------------------------------------------------------

--
-- Structure de la table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idpub` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rating`
--

INSERT INTO `rating` (`id`, `rate`, `iduser`, `idpub`) VALUES
(31, 5, 181, 18);

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id_rec` int(11) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `id_utilisateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reclamation`
--

INSERT INTO `reclamation` (`id_rec`, `sujet`, `email`, `description`, `etat`, `date`, `id_utilisateur_id`) VALUES
(92, 'chaise', 'mouna@gmail.com', 'reclamation', 'en cours', '2024-04-28', 181);

-- --------------------------------------------------------

--
-- Structure de la table `reponse_offre`
--

CREATE TABLE `reponse_offre` (
  `id` int(11) NOT NULL,
  `nom_produit` varchar(255) NOT NULL,
  `budget` float NOT NULL,
  `Etat` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `id_offre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reponse_offre`
--

INSERT INTO `reponse_offre` (`id`, `nom_produit`, `budget`, `Etat`, `date`, `id_offre`) VALUES
(16, 'hhhhh', 0, '222', '2023-03-07', 8),
(26, 'dd', 22, 'dd', '2023-03-07', 8),
(27, 'ddd', 20, 'ddd', '2023-03-07', 8),
(28, 'ddd', 20, 'dd', '2023-03-07', 8),
(29, 'd', 20, 'dd', '2023-03-07', 28),
(31, 'ddd', 2, 'dd', '2023-03-08', 29),
(32, 'Pc acer', 20, 'good', '2023-03-08', 8),
(33, 'Pc acer', 20, 'good', '2023-03-08', 8),
(34, 'Pc acer', 20, 'good', '2023-03-09', 8),
(35, 'Pc acer', 20, 'good', '2023-03-09', 8),
(36, 'Pc acer', 20, 'good', '2023-03-09', 8),
(37, 'Pc acer', 20, 'waiting', '2023-03-09', 8),
(38, 'projecteur', 2500, 'neuf', '2024-04-27', 27);

-- --------------------------------------------------------

--
-- Structure de la table `reponse_reclamation`
--

CREATE TABLE `reponse_reclamation` (
  `id_reponse` int(11) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `id_reclamation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reponse_reclamation`
--

INSERT INTO `reponse_reclamation` (`id_reponse`, `sujet`, `etat`, `date`, `id_reclamation`) VALUES
(1, 'ttgt', 'rrrr', '2024-04-28', 92);

-- --------------------------------------------------------

--
-- Structure de la table `sponsor`
--

CREATE TABLE `sponsor` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `num_tel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sponsor`
--

INSERT INTO `sponsor` (`id`, `nom`, `adresse`, `email`, `num_tel`) VALUES
(1, 'steve', 'London', 'steve@gmail.com', 33284222),
(6, 'John', 'Paris', 'John@gmail.com', 12242147);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'USER',
  `age` date NOT NULL,
  `username` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `bloquer` int(11) NOT NULL DEFAULT 0,
  `code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `password`, `email`, `adresse`, `role`, `age`, `username`, `photo`, `bloquer`, `code`) VALUES
(1, 'mama', 'aaaa', 'xdYBVs0YI1vdyO+3T6ZfXQ==', 'test', 'test', 'ROLE_USER', '2018-01-01', 'test', 'test', 1, 25555505),
(162, 'aaa', 'aebccda2b4040db02a7531cd3329659c.jpg', 'Qb5pjYEpx1ChrL5RE/+/xA==', 'gg', '789 rue palastine', 'ROLE_ADMIN', '2018-01-01', 'baha', 'test', 0, 9458),
(173, 'test', 'test', 'GJKxP41HzXH0lVJTtxm28w==', 'test', 'test', 'ROLE_USER', '2018-01-19', 'test', 'test', 0, NULL),
(175, 'test', 'test', 'A9wAMxzRgc7Glizj8Z0UOA==', 'test', 'test', 'ROLE_ADMIN', '2019-01-01', 'test', 'test', 1, 25555505),
(176, 'test', 'test', 'buXH3U1+ORRXGqN70kAsYA==', 'test', 'test', 'ROLE_ADMIN', '2020-04-04', 'test', 'test', 0, 3120),
(177, 'test', 'test', 'JhVy5glJgl1WNjfI/jcZxw==', 'test', 'rue tunis', 'ROLE_ADMIN', '2020-10-19', 'test', 'test', 1, 2662),
(179, 'farouk', 'mk', 'e88fea063616d78c751089796380ea510b8d8323675d953a84bc63656229acfb', 'faroukmk@gmail.com', 'medenine', 'ROLE_USER', '2019-01-01', 'faroukmk', 'ea580b82dab5a7c0ac144fc6ba60d07d.jpg', 0, NULL),
(181, 'mouna', 'mokhtar', '5002c4390c345284d58daa02b647f1dc1948abf1856110315e6eb6b744743895', 'mouna@gmail.com', 'Paris', 'ROLE_USER', '2020-04-06', 'Mouna Mk', '3b68e2efaf3bb74b3775bd57dc166f7e.jpg', 1, NULL),
(182, 'mouna', 'mokhtar', '5002c4390c345284d58daa02b647f1dc1948abf1856110315e6eb6b744743895', 'mouna@gmail.com', 'Paris 01', 'ROLE_USER', '2021-01-01', 'Mouna Mk', '81a91361906793e6bfa3e389787ee590.jpg', 1, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appel_offre`
--
ALTER TABLE `appel_offre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1` (`id_utilisateur_id`),
  ADD KEY `fk10` (`id_categorie_id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dkd` (`idproduit`),
  ADD KEY `ddd` (`idutilisateur`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id_facture`),
  ADD KEY `fk4` (`id_utilisateur`);

--
-- Index pour la table `favorie`
--
ALTER TABLE `favorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aaaa` (`idproduit`),
  ADD KEY `aaa` (`idutilisateur`);

--
-- Index pour la table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk3` (`id_facture`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `fk5` (`id_categorie_id`);

--
-- Index pour la table `publicite`
--
ALTER TABLE `publicite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk6` (`id_sponsor_id`);

--
-- Index pour la table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ffa` (`iduser`),
  ADD KEY `ff2` (`idpub`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id_rec`),
  ADD KEY `fk7` (`id_utilisateur_id`);

--
-- Index pour la table `reponse_offre`
--
ALTER TABLE `reponse_offre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk8` (`id_offre`);

--
-- Index pour la table `reponse_reclamation`
--
ALTER TABLE `reponse_reclamation`
  ADD PRIMARY KEY (`id_reponse`),
  ADD KEY `fk9` (`id_reclamation`);

--
-- Index pour la table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appel_offre`
--
ALTER TABLE `appel_offre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `demande`
--
ALTER TABLE `demande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id_facture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `favorie`
--
ALTER TABLE `favorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `finance`
--
ALTER TABLE `finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT pour la table `publicite`
--
ALTER TABLE `publicite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id_rec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `reponse_offre`
--
ALTER TABLE `reponse_offre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `reponse_reclamation`
--
ALTER TABLE `reponse_reclamation`
  MODIFY `id_reponse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appel_offre`
--
ALTER TABLE `appel_offre`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`id_utilisateur_id`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `fk10` FOREIGN KEY (`id_categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `ddd` FOREIGN KEY (`idutilisateur`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `dkd` FOREIGN KEY (`idproduit`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `favorie`
--
ALTER TABLE `favorie`
  ADD CONSTRAINT `aaa` FOREIGN KEY (`idutilisateur`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `aaaa` FOREIGN KEY (`idproduit`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `finance`
--
ALTER TABLE `finance`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`id_facture`) REFERENCES `facture` (`id_facture`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `fk5` FOREIGN KEY (`id_categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `publicite`
--
ALTER TABLE `publicite`
  ADD CONSTRAINT `fk6` FOREIGN KEY (`id_sponsor_id`) REFERENCES `sponsor` (`id`);

--
-- Contraintes pour la table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `ff2` FOREIGN KEY (`idpub`) REFERENCES `publicite` (`id`),
  ADD CONSTRAINT `ffa` FOREIGN KEY (`iduser`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `fk7` FOREIGN KEY (`id_utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `reponse_offre`
--
ALTER TABLE `reponse_offre`
  ADD CONSTRAINT `fk8` FOREIGN KEY (`id_offre`) REFERENCES `appel_offre` (`id`);

--
-- Contraintes pour la table `reponse_reclamation`
--
ALTER TABLE `reponse_reclamation`
  ADD CONSTRAINT `fk9` FOREIGN KEY (`id_reclamation`) REFERENCES `reclamation` (`id_rec`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
