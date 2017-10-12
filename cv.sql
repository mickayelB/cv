-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Jeu 12 Octobre 2017 à 14:28
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `CV`
--
CREATE DATABASE IF NOT EXISTS `CV` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `CV`;

-- --------------------------------------------------------

--
-- Structure de la table `Contact`
--

CREATE TABLE `Contact` (
  `Id` int(11) NOT NULL,
  `NameContact` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `FirstNameContact` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `EmailContact` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TelContact` tinyint(4) NOT NULL,
  `SubjectMessage` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MessageContact` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TimestampCreation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Experience`
--

CREATE TABLE `Experience` (
  `Id` int(11) NOT NULL,
  `CompanyName` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `DateIn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Descrip` varchar(240) COLLATE utf8_unicode_ci NOT NULL,
  `GeoExp` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `Experience`
--

INSERT INTO `Experience` (`Id`, `CompanyName`, `DateIn`, `Descrip`, `GeoExp`) VALUES
(1, 'Arobaz Systems', '2016', 'Développement et optimisation application PHP/jQuery. Intégration HTML5/CSS3. Test de nouvelles fonctionnalités', 'Magny-le-Hongre 77700'),
(3, 'EDICTALYS', 'Janv-Fév 2015', 'Développement site vitrine HTML5/PHP, gestion BDD MySQL', 'Champigny-sur-Marne 94500'),
(4, 'Conseil, Intégration et Outsourcing', 'Juin 2014', 'Découverte J2EE, ajout et test d’une fonctionnalité', 'Seine-Saint-Denis');

-- --------------------------------------------------------

--
-- Structure de la table `Formation`
--

CREATE TABLE `Formation` (
  `Id` int(11) NOT NULL,
  `SchoolName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DateGraduate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Geo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `FormName` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `Formation`
--

INSERT INTO `Formation` (`Id`, `SchoolName`, `DateGraduate`, `Geo`, `FormName`) VALUES
(1, '3WA', 'Septembre 2017', 'PARIS 18', 'Intégrateur développeur d\'application web, titre RNCP niveau 3.'),
(2, 'ETNA', '2015-2017', 'Ivry-sur-Seine', 'Cycle d\'ingénierie - architecte logiciel, développeur d\'applications'),
(3, 'Lycée Louis Armand', '2015', 'Nogent-sur-Marne', 'BTS SIO (Services Informatiques aux Organisations) - option Solution Logicielle Application Métier'),
(4, 'Lycée Polyvalent Clément Ader', '2013', 'Tournan en Brie', 'Baccalauréat Scientifique - option Science de l\'ingénieur');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Contact`
--
ALTER TABLE `Contact`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Experience`
--
ALTER TABLE `Experience`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Formation`
--
ALTER TABLE `Formation`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Contact`
--
ALTER TABLE `Contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Experience`
--
ALTER TABLE `Experience`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Formation`
--
ALTER TABLE `Formation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;