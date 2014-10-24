-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Окт 24 2014 г., 14:17
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `football_clubs`
--

-- --------------------------------------------------------

--
-- Структура таблицы `club`
--

CREATE TABLE IF NOT EXISTS `club` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `town` char(40) NOT NULL,
  `country` char(30) NOT NULL,
  `league_id` int(4) NOT NULL,
  `year` int(11) NOT NULL,
  `count_of_trophy` int(11) NOT NULL,
  `annual_budget` bigint(20) NOT NULL,
  `president_name` char(30) NOT NULL,
  `home_stadion_id` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  UNIQUE KEY `id_3` (`id`),
  KEY `league_id` (`league_id`),
  KEY `home_stadion_id` (`home_stadion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `league`
--

CREATE TABLE IF NOT EXISTS `league` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `country` char(30) NOT NULL,
  `rating_uefa` int(11) NOT NULL,
  `president_name` char(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `stadium`
--

CREATE TABLE IF NOT EXISTS `stadium` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `year` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `trophy`
--

CREATE TABLE IF NOT EXISTS `trophy` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `year` int(11) NOT NULL,
  `club_id` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `club_id` (`club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
