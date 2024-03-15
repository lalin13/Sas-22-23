-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Mar 15, 2024 alle 10:12
-- Versione del server: 5.7.39
-- Versione PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catering`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Events`
--

CREATE TABLE `Events` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `expected_participants` int(11) DEFAULT NULL,
  `organizer_id` int(11) NOT NULL,
  `chef_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Events`
--

INSERT INTO `Events` (`id`, `name`, `date_start`, `date_end`, `expected_participants`, `organizer_id`, `chef_id`) VALUES
(1, 'Convegno Agile Community', '2020-09-25', '2020-09-25', 100, 2, NULL),
(2, 'Compleanno di Manuela', '2020-08-13', '2020-08-13', 25, 2, NULL),
(3, 'Fiera del Sedano Rapa', '2020-10-02', '2020-10-04', 400, 1, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `MenuFeatures`
--

CREATE TABLE `MenuFeatures` (
  `menu_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `value` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `MenuFeatures`
--

INSERT INTO `MenuFeatures` (`menu_id`, `name`, `value`) VALUES
(24, 'Richiede cuoco', 1),
(24, 'Buffet', 1),
(24, 'Richiede cucina', 1),
(24, 'Finger food', 1),
(24, 'Piatti caldi', 1),
(25, 'Richiede cuoco', 1),
(25, 'Buffet', 1),
(25, 'Richiede cucina', 1),
(25, 'Finger food', 1),
(25, 'Piatti caldi', 1),
(26, 'Richiede cuoco', 1),
(26, 'Buffet', 1),
(26, 'Richiede cucina', 1),
(26, 'Finger food', 1),
(26, 'Piatti caldi', 1),
(27, 'Richiede cuoco', 1),
(27, 'Buffet', 1),
(27, 'Richiede cucina', 1),
(27, 'Finger food', 1),
(27, 'Piatti caldi', 1),
(28, 'Richiede cuoco', 1),
(28, 'Buffet', 1),
(28, 'Richiede cucina', 1),
(28, 'Finger food', 1),
(28, 'Piatti caldi', 1),
(29, 'Richiede cuoco', 1),
(29, 'Buffet', 1),
(29, 'Richiede cucina', 1),
(29, 'Finger food', 1),
(29, 'Piatti caldi', 1),
(30, 'Richiede cuoco', 1),
(30, 'Buffet', 1),
(30, 'Richiede cucina', 1),
(30, 'Finger food', 1),
(30, 'Piatti caldi', 1),
(31, 'Richiede cuoco', 1),
(31, 'Buffet', 1),
(31, 'Richiede cucina', 1),
(31, 'Finger food', 1),
(31, 'Piatti caldi', 1),
(32, 'Richiede cuoco', 1),
(32, 'Buffet', 1),
(32, 'Richiede cucina', 1),
(32, 'Finger food', 1),
(32, 'Piatti caldi', 1),
(33, 'Richiede cuoco', 1),
(33, 'Buffet', 1),
(33, 'Richiede cucina', 1),
(33, 'Finger food', 1),
(33, 'Piatti caldi', 1),
(34, 'Richiede cuoco', 1),
(34, 'Buffet', 1),
(34, 'Richiede cucina', 1),
(34, 'Finger food', 1),
(34, 'Piatti caldi', 1),
(35, 'Richiede cuoco', 1),
(35, 'Buffet', 1),
(35, 'Richiede cucina', 1),
(35, 'Finger food', 1),
(35, 'Piatti caldi', 1),
(36, 'Richiede cuoco', 1),
(36, 'Buffet', 1),
(36, 'Richiede cucina', 1),
(36, 'Finger food', 1),
(36, 'Piatti caldi', 1),
(38, 'Richiede cuoco', 0),
(38, 'Buffet', 0),
(38, 'Richiede cucina', 0),
(38, 'Finger food', 0),
(38, 'Piatti caldi', 0),
(39, 'Richiede cuoco', 0),
(39, 'Buffet', 0),
(39, 'Richiede cucina', 0),
(39, 'Finger food', 0),
(39, 'Piatti caldi', 0),
(40, 'Richiede cuoco', 0),
(40, 'Buffet', 0),
(40, 'Richiede cucina', 0),
(40, 'Finger food', 0),
(40, 'Piatti caldi', 0),
(41, 'Richiede cuoco', 1),
(41, 'Buffet', 1),
(41, 'Richiede cucina', 1),
(41, 'Finger food', 1),
(41, 'Piatti caldi', 1),
(42, 'Richiede cuoco', 1),
(42, 'Buffet', 1),
(42, 'Richiede cucina', 1),
(42, 'Finger food', 1),
(42, 'Piatti caldi', 1),
(43, 'Richiede cuoco', 1),
(43, 'Buffet', 1),
(43, 'Richiede cucina', 1),
(43, 'Finger food', 1),
(43, 'Piatti caldi', 1),
(44, 'Richiede cuoco', 1),
(44, 'Buffet', 1),
(44, 'Richiede cucina', 1),
(44, 'Finger food', 1),
(44, 'Piatti caldi', 1),
(45, 'Richiede cuoco', 1),
(45, 'Buffet', 1),
(45, 'Richiede cucina', 1),
(45, 'Finger food', 1),
(45, 'Piatti caldi', 1),
(46, 'Richiede cuoco', 1),
(46, 'Buffet', 1),
(46, 'Richiede cucina', 1),
(46, 'Finger food', 1),
(46, 'Piatti caldi', 1),
(47, 'Richiede cuoco', 1),
(47, 'Buffet', 1),
(47, 'Richiede cucina', 1),
(47, 'Finger food', 1),
(47, 'Piatti caldi', 1),
(48, 'Richiede cuoco', 1),
(48, 'Buffet', 1),
(48, 'Richiede cucina', 1),
(48, 'Finger food', 1),
(48, 'Piatti caldi', 1),
(49, 'Richiede cuoco', 1),
(49, 'Buffet', 1),
(49, 'Richiede cucina', 1),
(49, 'Finger food', 1),
(49, 'Piatti caldi', 1),
(50, 'Richiede cuoco', 1),
(50, 'Buffet', 1),
(50, 'Richiede cucina', 1),
(50, 'Finger food', 1),
(50, 'Piatti caldi', 1),
(51, 'Richiede cuoco', 1),
(51, 'Buffet', 1),
(51, 'Richiede cucina', 1),
(51, 'Finger food', 1),
(51, 'Piatti caldi', 1),
(52, 'Richiede cuoco', 1),
(52, 'Buffet', 1),
(52, 'Richiede cucina', 1),
(52, 'Finger food', 1),
(52, 'Piatti caldi', 1),
(53, 'Richiede cuoco', 1),
(53, 'Buffet', 1),
(53, 'Richiede cucina', 1),
(53, 'Finger food', 1),
(53, 'Piatti caldi', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `MenuItems`
--

CREATE TABLE `MenuItems` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `description` tinytext,
  `recipe_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `MenuItems`
--

INSERT INTO `MenuItems` (`id`, `menu_id`, `section_id`, `description`, `recipe_id`, `position`) VALUES
(16, 24, 16, 'Vitello tonnato', 1, 0),
(17, 24, 16, 'Carpaccio di spada', 2, 1),
(18, 24, 16, 'Alici marinate', 3, 2),
(19, 24, 16, 'Insalata di riso', 4, 3),
(20, 24, 0, 'Salmone al forno', 8, 0),
(21, 24, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(22, 24, 0, 'Pappa al pomodoro', 6, 2),
(23, 25, 17, 'Vitello tonnato', 1, 0),
(24, 25, 17, 'Carpaccio di spada', 2, 1),
(25, 25, 17, 'Alici marinate', 3, 2),
(26, 25, 17, 'Insalata di riso', 4, 3),
(27, 25, 0, 'Salmone al forno', 8, 0),
(28, 25, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(29, 25, 0, 'Pappa al pomodoro', 6, 2),
(30, 26, 18, 'Vitello tonnato', 1, 0),
(31, 26, 18, 'Carpaccio di spada', 2, 1),
(32, 26, 18, 'Alici marinate', 3, 2),
(33, 26, 18, 'Insalata di riso', 4, 3),
(34, 26, 0, 'Salmone al forno', 8, 0),
(35, 26, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(36, 26, 0, 'Pappa al pomodoro', 6, 2),
(37, 27, 19, 'Vitello tonnato', 1, 0),
(38, 27, 19, 'Carpaccio di spada', 2, 1),
(39, 27, 19, 'Alici marinate', 3, 2),
(40, 27, 19, 'Insalata di riso', 4, 3),
(41, 27, 0, 'Salmone al forno', 8, 0),
(42, 27, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(43, 27, 0, 'Pappa al pomodoro', 6, 2),
(44, 28, 20, 'Vitello tonnato', 1, 0),
(45, 28, 20, 'Carpaccio di spada', 2, 1),
(46, 28, 20, 'Alici marinate', 3, 2),
(47, 28, 20, 'Insalata di riso', 4, 3),
(48, 28, 0, 'Salmone al forno', 8, 0),
(49, 28, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(50, 28, 0, 'Pappa al pomodoro', 6, 2),
(51, 29, 21, 'Vitello tonnato', 1, 0),
(52, 29, 21, 'Carpaccio di spada', 2, 1),
(53, 29, 21, 'Alici marinate', 3, 2),
(54, 29, 21, 'Insalata di riso', 4, 3),
(55, 29, 0, 'Salmone al forno', 8, 0),
(56, 29, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(57, 29, 0, 'Pappa al pomodoro', 6, 2),
(58, 30, 22, 'Vitello tonnato', 1, 0),
(59, 30, 22, 'Carpaccio di spada', 2, 1),
(60, 30, 22, 'Alici marinate', 3, 2),
(61, 30, 22, 'Insalata di riso', 4, 3),
(62, 30, 0, 'Salmone al forno', 8, 0),
(63, 30, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(64, 30, 0, 'Pappa al pomodoro', 6, 2),
(65, 31, 23, 'Vitello tonnato', 1, 0),
(66, 31, 23, 'Carpaccio di spada', 2, 1),
(67, 31, 23, 'Alici marinate', 3, 2),
(68, 31, 23, 'Insalata di riso', 4, 3),
(69, 31, 0, 'Salmone al forno', 8, 0),
(70, 31, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(71, 31, 0, 'Pappa al pomodoro', 6, 2),
(72, 32, 24, 'Vitello tonnato', 1, 0),
(73, 32, 24, 'Carpaccio di spada', 2, 1),
(74, 32, 24, 'Alici marinate', 3, 2),
(75, 32, 24, 'Insalata di riso', 4, 3),
(76, 32, 0, 'Salmone al forno', 8, 0),
(77, 32, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(78, 32, 0, 'Pappa al pomodoro', 6, 2),
(79, 33, 25, 'Vitello tonnato', 1, 0),
(80, 33, 25, 'Carpaccio di spada', 2, 1),
(81, 33, 25, 'Alici marinate', 3, 2),
(82, 33, 25, 'Insalata di riso', 4, 3),
(83, 33, 0, 'Salmone al forno', 8, 0),
(84, 33, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(85, 33, 0, 'Pappa al pomodoro', 6, 2),
(86, 34, 26, 'Vitello tonnato', 1, 0),
(87, 34, 26, 'Carpaccio di spada', 2, 1),
(88, 34, 26, 'Alici marinate', 3, 2),
(89, 34, 26, 'Insalata di riso', 4, 3),
(90, 34, 0, 'Salmone al forno', 8, 0),
(91, 34, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(92, 34, 0, 'Pappa al pomodoro', 6, 2),
(93, 35, 27, 'Vitello tonnato', 1, 0),
(94, 35, 27, 'Carpaccio di spada', 2, 1),
(95, 35, 27, 'Alici marinate', 3, 2),
(96, 35, 27, 'Insalata di riso', 4, 3),
(97, 35, 0, 'Salmone al forno', 8, 0),
(98, 35, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(99, 35, 0, 'Pappa al pomodoro', 6, 2),
(100, 36, 28, 'Vitello tonnato', 1, 0),
(101, 36, 28, 'Carpaccio di spada', 2, 1),
(102, 36, 28, 'Alici marinate', 3, 2),
(103, 36, 28, 'Insalata di riso', 4, 3),
(104, 36, 0, 'Salmone al forno', 8, 0),
(105, 36, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(106, 36, 0, 'Pappa al pomodoro', 6, 2),
(114, 38, 30, 'Vitello tonnato', 1, 0),
(115, 38, 30, 'Carpaccio di spada', 2, 1),
(116, 38, 30, 'Alici marinate', 3, 2),
(117, 38, 30, 'Insalata di riso', 4, 3),
(118, 38, 0, 'Salmone al forno', 8, 0),
(119, 38, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(120, 38, 0, 'Pappa al pomodoro', 6, 2),
(121, 39, 31, 'Vitello tonnato', 1, 0),
(122, 39, 31, 'Carpaccio di spada', 2, 1),
(123, 39, 31, 'Alici marinate', 3, 2),
(124, 39, 31, 'Insalata di riso', 4, 3),
(125, 39, 0, 'Salmone al forno', 8, 0),
(126, 39, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(127, 39, 0, 'Pappa al pomodoro', 6, 2),
(132, 40, 0, 'Salmone al forno', 8, 0),
(133, 40, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(134, 40, 0, 'Pappa al pomodoro', 6, 2),
(135, 41, 33, 'Vitello tonnato', 1, 0),
(136, 41, 33, 'Carpaccio di spada', 2, 1),
(137, 41, 33, 'Alici marinate', 3, 2),
(138, 41, 33, 'Insalata di riso', 4, 3),
(139, 41, 0, 'Salmone al forno', 8, 0),
(140, 41, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(141, 41, 0, 'Pappa al pomodoro', 6, 2),
(142, 42, 34, 'Vitello tonnato', 1, 0),
(143, 42, 34, 'Carpaccio di spada', 2, 1),
(144, 42, 34, 'Alici marinate', 3, 2),
(145, 42, 34, 'Insalata di riso', 4, 3),
(146, 42, 0, 'Salmone al forno', 8, 0),
(147, 42, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(148, 42, 0, 'Pappa al pomodoro', 6, 2),
(149, 43, 35, 'Vitello tonnato', 1, 0),
(150, 43, 35, 'Carpaccio di spada', 2, 1),
(151, 43, 35, 'Alici marinate', 3, 2),
(152, 43, 35, 'Insalata di riso', 4, 3),
(153, 43, 0, 'Salmone al forno', 8, 0),
(154, 43, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(155, 43, 0, 'Pappa al pomodoro', 6, 2),
(156, 44, 36, 'Vitello tonnato', 1, 0),
(157, 44, 36, 'Carpaccio di spada', 2, 1),
(158, 44, 36, 'Alici marinate', 3, 2),
(159, 44, 36, 'Insalata di riso', 4, 3),
(160, 44, 0, 'Salmone al forno', 8, 0),
(161, 44, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(162, 44, 0, 'Pappa al pomodoro', 6, 2),
(163, 45, 37, 'Vitello tonnato', 1, 0),
(164, 45, 37, 'Carpaccio di spada', 2, 1),
(165, 45, 37, 'Alici marinate', 3, 2),
(166, 45, 37, 'Insalata di riso', 4, 3),
(167, 45, 0, 'Salmone al forno', 8, 0),
(168, 45, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(169, 45, 0, 'Pappa al pomodoro', 6, 2),
(170, 46, 38, 'Vitello tonnato', 1, 0),
(171, 46, 38, 'Carpaccio di spada', 2, 1),
(172, 46, 38, 'Alici marinate', 3, 2),
(173, 46, 38, 'Insalata di riso', 4, 3),
(174, 46, 0, 'Salmone al forno', 8, 0),
(175, 46, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(176, 46, 0, 'Pappa al pomodoro', 6, 2),
(177, 47, 39, 'Vitello tonnato', 1, 0),
(178, 47, 39, 'Carpaccio di spada', 2, 1),
(179, 47, 39, 'Alici marinate', 3, 2),
(180, 47, 39, 'Insalata di riso', 4, 3),
(181, 47, 0, 'Salmone al forno', 8, 0),
(182, 47, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(183, 47, 0, 'Pappa al pomodoro', 6, 2),
(184, 48, 40, 'Vitello tonnato', 1, 0),
(185, 48, 40, 'Carpaccio di spada', 2, 1),
(186, 48, 40, 'Alici marinate', 3, 2),
(187, 48, 40, 'Insalata di riso', 4, 3),
(188, 48, 0, 'Salmone al forno', 8, 0),
(189, 48, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(190, 48, 0, 'Pappa al pomodoro', 6, 2),
(191, 49, 41, 'Vitello tonnato', 1, 0),
(192, 49, 41, 'Carpaccio di spada', 2, 1),
(193, 49, 41, 'Alici marinate', 3, 2),
(194, 49, 41, 'Insalata di riso', 4, 3),
(195, 49, 0, 'Salmone al forno', 8, 0),
(196, 49, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(197, 49, 0, 'Pappa al pomodoro', 6, 2),
(198, 50, 42, 'Vitello tonnato', 1, 0),
(199, 50, 42, 'Carpaccio di spada', 2, 1),
(200, 50, 42, 'Alici marinate', 3, 2),
(201, 50, 42, 'Insalata di riso', 4, 3),
(202, 50, 0, 'Salmone al forno', 8, 0),
(203, 50, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(204, 50, 0, 'Pappa al pomodoro', 6, 2),
(205, 51, 43, 'Vitello tonnato', 1, 0),
(206, 51, 43, 'Carpaccio di spada', 2, 1),
(207, 51, 43, 'Alici marinate', 3, 2),
(208, 51, 43, 'Insalata di riso', 4, 3),
(209, 51, 0, 'Salmone al forno', 8, 0),
(210, 51, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(211, 51, 0, 'Pappa al pomodoro', 6, 2),
(212, 52, 44, 'Vitello tonnato', 1, 0),
(213, 52, 44, 'Carpaccio di spada', 2, 1),
(214, 52, 44, 'Alici marinate', 3, 2),
(215, 52, 44, 'Insalata di riso', 4, 3),
(216, 52, 0, 'Salmone al forno', 8, 0),
(217, 52, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(218, 52, 0, 'Pappa al pomodoro', 6, 2),
(219, 53, 45, 'Vitello tonnato', 1, 0),
(220, 53, 45, 'Carpaccio di spada', 2, 1),
(221, 53, 45, 'Alici marinate', 3, 2),
(222, 53, 45, 'Insalata di riso', 4, 3),
(223, 53, 0, 'Salmone al forno', 8, 0),
(224, 53, 0, 'Hamburger con bacon e cipolla caramellata', 7, 1),
(225, 53, 0, 'Pappa al pomodoro', 6, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `Menus`
--

CREATE TABLE `Menus` (
  `id` int(11) NOT NULL,
  `title` tinytext,
  `owner_id` int(11) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Menus`
--

INSERT INTO `Menus` (`id`, `title`, `owner_id`, `published`) VALUES
(24, 'Obladì Obladà', 2, 1),
(25, 'Obladì Obladà', 2, 1),
(26, 'Obladì Obladà', 2, 1),
(27, 'Obladì Obladà', 2, 1),
(28, 'Obladì Obladà', 2, 1),
(29, 'Obladì Obladà', 2, 1),
(30, 'Obladì Obladà', 2, 1),
(31, 'Obladì Obladà', 2, 1),
(32, 'Obladì Obladà', 2, 1),
(33, 'Obladì Obladà', 2, 1),
(34, 'Obladì Obladà', 2, 1),
(35, 'Obladì Obladà', 2, 1),
(36, 'Obladì Obladà', 2, 1),
(38, 'Menu Pinco Pallino', 2, 1),
(39, 'Menu Pinco Pallino', 2, 0),
(40, 'Menu Pinco Pallino', 2, 0),
(41, 'Obladì Obladà', 2, 1),
(42, 'Obladì Obladà', 2, 1),
(43, 'Obladì Obladà', 2, 1),
(44, 'Obladì Obladà', 2, 1),
(45, 'Obladì Obladà', 2, 1),
(46, 'Obladì Obladà', 2, 1),
(47, 'Obladì Obladà', 2, 1),
(48, 'Obladì Obladà', 2, 1),
(49, 'Obladì Obladà', 2, 1),
(50, 'Obladì Obladà', 2, 1),
(51, 'Obladì Obladà', 2, 1),
(52, 'Obladì Obladà', 2, 1),
(53, 'Obladì Obladà', 2, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `MenuSections`
--

CREATE TABLE `MenuSections` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `name` tinytext,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `MenuSections`
--

INSERT INTO `MenuSections` (`id`, `menu_id`, `name`, `position`) VALUES
(16, 24, 'Antipasti', 0),
(17, 25, 'Antipasti', 0),
(18, 26, 'Antipasti', 0),
(19, 27, 'Antipasti', 0),
(20, 28, 'Antipasti', 0),
(21, 29, 'Antipasti', 0),
(22, 30, 'Antipasti', 0),
(23, 31, 'Antipasti', 0),
(24, 32, 'Antipasti', 0),
(25, 33, 'Antipasti', 0),
(26, 34, 'Antipasti', 0),
(27, 35, 'Antipasti', 0),
(28, 36, 'Antipasti', 0),
(30, 38, 'Antipasti', 0),
(31, 39, 'Antipasti', 0),
(33, 41, 'Antipasti', 0),
(34, 42, 'Antipasti', 0),
(35, 43, 'Antipasti', 0),
(36, 44, 'Antipasti', 0),
(37, 45, 'Antipasti', 0),
(38, 46, 'Antipasti', 0),
(39, 47, 'Antipasti', 0),
(40, 48, 'Antipasti', 0),
(41, 49, 'Antipasti', 0),
(42, 50, 'Antipasti', 0),
(43, 51, 'Antipasti', 0),
(44, 52, 'Antipasti', 0),
(45, 53, 'Antipasti', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `Recipes`
--

CREATE TABLE `Recipes` (
  `id` int(11) NOT NULL,
  `name` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Recipes`
--

INSERT INTO `Recipes` (`id`, `name`) VALUES
(1, 'Vitello tonnato'),
(2, 'Carpaccio di spada'),
(3, 'Alici marinate'),
(4, 'Insalata di riso'),
(5, 'Penne al sugo di baccalà'),
(6, 'Pappa al pomodoro'),
(7, 'Hamburger con bacon e cipolla caramellata'),
(8, 'Salmone al forno');

-- --------------------------------------------------------

--
-- Struttura della tabella `Roles`
--

CREATE TABLE `Roles` (
  `id` char(1) NOT NULL,
  `role` varchar(128) NOT NULL DEFAULT 'servizio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Roles`
--

INSERT INTO `Roles` (`id`, `role`) VALUES
('c', 'cuoco'),
('h', 'chef'),
('o', 'organizzatore'),
('s', 'servizio');

-- --------------------------------------------------------

--
-- Struttura della tabella `Services`
--

CREATE TABLE `Services` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `proposed_menu_id` int(11) NOT NULL DEFAULT '0',
  `approved_menu_id` int(11) DEFAULT '0',
  `service_date` date DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `expected_participants` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Services`
--

INSERT INTO `Services` (`id`, `event_id`, `name`, `proposed_menu_id`, `approved_menu_id`, `service_date`, `time_start`, `time_end`, `expected_participants`) VALUES
(1, 2, 'Cena', 0, 0, '2020-08-13', '20:00:00', '23:30:00', 25),
(2, 1, 'Coffee break mattino', 0, 0, '2020-09-25', '10:30:00', '11:30:00', 100),
(3, 1, 'Colazione di lavoro', 0, 0, '2020-09-25', '13:00:00', '14:00:00', 80),
(4, 1, 'Coffee break pomeriggio', 0, 0, '2020-09-25', '16:00:00', '16:30:00', 100),
(5, 1, 'Cena sociale', 0, 0, '2020-09-25', '20:00:00', '22:30:00', 40),
(6, 3, 'Pranzo giorno 1', 0, 0, '2020-10-02', '12:00:00', '15:00:00', 200),
(7, 3, 'Pranzo giorno 2', 0, 0, '2020-10-03', '12:00:00', '15:00:00', 300),
(8, 3, 'Pranzo giorno 3', 0, 0, '2020-10-04', '12:00:00', '15:00:00', 400);

-- --------------------------------------------------------

--
-- Struttura della tabella `servicesheets`
--

CREATE TABLE `servicesheets` (
  `id` int(11) NOT NULL,
  `kitchentask_id` int(11) DEFAULT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `servicesheets`
--

INSERT INTO `servicesheets` (`id`, `kitchentask_id`, `service_id`) VALUES
(4, 6, 1),
(5, 6, 2),
(6, 6, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `UserRoles`
--

CREATE TABLE `UserRoles` (
  `user_id` int(11) NOT NULL,
  `role_id` char(1) NOT NULL DEFAULT 's'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `UserRoles`
--

INSERT INTO `UserRoles` (`user_id`, `role_id`) VALUES
(1, 'o'),
(2, 'o'),
(2, 'h'),
(3, 'h'),
(4, 'h'),
(4, 'c'),
(5, 'c'),
(6, 'c'),
(7, 'c'),
(8, 's'),
(9, 's'),
(10, 's'),
(7, 's');

-- --------------------------------------------------------

--
-- Struttura della tabella `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Users`
--

INSERT INTO `Users` (`id`, `username`) VALUES
(1, 'Carlin'),
(2, 'Lidia'),
(3, 'Tony'),
(4, 'Marinella'),
(5, 'Guido'),
(6, 'Antonietta'),
(7, 'Paola'),
(8, 'Silvia'),
(9, 'Marco'),
(10, 'Piergiorgio');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `MenuItems`
--
ALTER TABLE `MenuItems`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Menus`
--
ALTER TABLE `Menus`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `MenuSections`
--
ALTER TABLE `MenuSections`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Recipes`
--
ALTER TABLE `Recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Services`
--
ALTER TABLE `Services`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `servicesheets`
--
ALTER TABLE `servicesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Events`
--
ALTER TABLE `Events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `MenuItems`
--
ALTER TABLE `MenuItems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT per la tabella `Menus`
--
ALTER TABLE `Menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT per la tabella `MenuSections`
--
ALTER TABLE `MenuSections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT per la tabella `Recipes`
--
ALTER TABLE `Recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `Services`
--
ALTER TABLE `Services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `servicesheets`
--
ALTER TABLE `servicesheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
