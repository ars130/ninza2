-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 12 2023 г., 13:11
-- Версия сервера: 5.6.34-log
-- Версия PHP: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tmnt`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fractions`
--

CREATE TABLE `fractions` (
  `Id` int(11) NOT NULL,
  `Fraction` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `person`
--

CREATE TABLE `person` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Age` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `rase`
--

CREATE TABLE `rase` (
  `Id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `world origen` varchar(200) NOT NULL,
  `Features` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Login` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `weapons`
--

CREATE TABLE `weapons` (
  `Id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `type_of_damage` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `word`
--

CREATE TABLE `word` (
  `name` varchar(200) NOT NULL,
  `version` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `season appearance` varchar(200) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fractions`
--
ALTER TABLE `fractions`
  ADD KEY `Id` (`Id`);

--
-- Индексы таблицы `person`
--
ALTER TABLE `person`
  ADD KEY `Id` (`Id`);

--
-- Индексы таблицы `rase`
--
ALTER TABLE `rase`
  ADD KEY `Id` (`Id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Id`);

--
-- Индексы таблицы `weapons`
--
ALTER TABLE `weapons`
  ADD KEY `Id` (`Id`);

--
-- Индексы таблицы `word`
--
ALTER TABLE `word`
  ADD KEY `Id` (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `fractions`
--
ALTER TABLE `fractions`
  ADD CONSTRAINT `fractions_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `person` (`Id`);

--
-- Ограничения внешнего ключа таблицы `rase`
--
ALTER TABLE `rase`
  ADD CONSTRAINT `rase_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `person` (`Id`);

--
-- Ограничения внешнего ключа таблицы `weapons`
--
ALTER TABLE `weapons`
  ADD CONSTRAINT `weapons_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `person` (`Id`);

--
-- Ограничения внешнего ключа таблицы `word`
--
ALTER TABLE `word`
  ADD CONSTRAINT `word_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `person` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
