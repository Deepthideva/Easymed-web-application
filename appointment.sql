-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2025 at 08:40 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kidney`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Appointment_id` int(11) NOT NULL,
  `Doctor_id` int(11) NOT NULL,
  `Patient_id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  `Status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appointment_id`, `Doctor_id`, `Patient_id`, `Date`, `time`, `Status`, `created_at`) VALUES
(1, 4, 1, '2025-05-02', '10:00:00', '', '2025-05-01 04:56:28'),
(2, 6, 1, '2025-05-03', '11:00:00', 'Pending', '2025-05-01 11:20:18'),
(3, 4, 5, '2025-05-17', '10:00:00', 'Approved', '2025-05-05 18:21:33'),
(4, 4, 10, '2025-05-09', '10:59:00', 'Approved', '2025-05-07 06:37:58'),
(5, 4, 7, '2025-05-17', '11:49:00', 'Approved', '2025-05-16 12:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `Calendar_id` int(11) NOT NULL,
  `Doctor_id` int(11) NOT NULL,
  `Status` enum('available','booked','blocked','holiday') NOT NULL,
  `date` date NOT NULL,
  `start_time` time DEFAULT '09:00:00',
  `end_time` time DEFAULT '17:00:00',
  `Description` text DEFAULT NULL,
  `max_appointments` int(11) DEFAULT 50,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`Calendar_id`, `Doctor_id`, `Status`, `date`, `start_time`, `end_time`, `Description`, `max_appointments`, `created_at`) VALUES
(14, 4, 'available', '2025-04-11', '09:00:00', '17:00:00', 'testt', 10, '2025-04-11 04:45:53'),
(15, 4, 'available', '2025-04-14', '09:00:00', '17:00:00', 'Regular working hours', 15, '2025-04-11 04:46:27'),
(16, 4, 'available', '2025-04-15', '09:00:00', '17:00:00', 'Regular working hours', 15, '2025-04-11 04:46:27'),
(17, 4, 'available', '2025-04-16', '09:00:00', '17:00:00', 'Regular working hours', 15, '2025-04-11 04:46:27'),
(18, 4, 'available', '2025-04-17', '09:00:00', '17:00:00', 'Regular working hours', 15, '2025-04-11 04:46:28'),
(19, 4, 'available', '2025-04-18', '09:00:00', '17:00:00', 'Regular working hours', 15, '2025-04-11 04:46:28'),
(20, 4, 'available', '2025-05-02', '09:00:00', '17:00:00', '', 50, '2025-05-01 04:22:33'),
(24, 4, 'available', '2025-05-01', '09:00:00', '17:00:00', '', 50, '2025-05-01 05:32:11'),
(25, 6, 'available', '2025-05-01', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(26, 6, 'available', '2025-05-02', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(27, 6, 'available', '2025-05-03', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(28, 6, 'available', '2025-05-04', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(29, 6, 'available', '2025-05-05', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(30, 6, 'available', '2025-05-06', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(31, 6, 'available', '2025-05-07', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(32, 6, 'available', '2025-05-08', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(33, 6, 'available', '2025-05-09', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(34, 6, 'available', '2025-05-10', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(35, 6, 'available', '2025-05-11', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(36, 6, 'available', '2025-05-12', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(37, 6, 'available', '2025-05-13', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:46'),
(38, 6, 'available', '2025-05-14', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:47'),
(39, 6, 'available', '2025-05-15', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-01 11:19:47'),
(40, 5, 'available', '2025-05-23', '09:00:00', '17:00:00', '', 50, '2025-05-05 18:15:15'),
(41, 5, 'available', '2025-05-22', '09:00:00', '17:00:00', '', 50, '2025-05-05 18:15:51'),
(42, 5, 'available', '2025-05-22', '09:00:00', '17:00:00', '', 50, '2025-05-05 18:15:55'),
(43, 5, 'available', '2025-05-22', '09:00:00', '17:00:00', '', 50, '2025-05-05 18:15:56'),
(44, 5, 'available', '2025-05-22', '09:00:00', '17:00:00', '', 50, '2025-05-05 18:15:56'),
(45, 5, 'available', '2025-05-20', '09:00:00', '17:00:00', '', 50, '2025-05-05 18:16:02'),
(46, 5, 'available', '2025-05-20', '10:00:00', '17:00:00', '', 50, '2025-05-05 18:16:11'),
(47, 5, 'available', '2025-05-24', '10:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:16:52'),
(48, 5, 'available', '2025-05-25', '10:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:16:52'),
(49, 5, 'available', '2025-05-26', '10:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:16:52'),
(50, 5, 'available', '2025-05-27', '10:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:16:52'),
(51, 5, 'available', '2025-05-28', '10:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:16:52'),
(52, 5, 'available', '2025-05-29', '10:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:16:52'),
(53, 5, 'available', '2025-05-30', '10:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:16:52'),
(54, 5, 'available', '2025-05-31', '10:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:16:52'),
(55, 4, 'available', '2025-05-15', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(56, 4, 'available', '2025-05-16', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(57, 4, 'available', '2025-05-17', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(58, 4, 'available', '2025-05-18', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(59, 4, 'available', '2025-05-19', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(60, 4, 'available', '2025-05-20', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(61, 4, 'available', '2025-05-21', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(62, 4, 'available', '2025-05-22', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(63, 4, 'available', '2025-05-23', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(64, 4, 'available', '2025-05-24', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(65, 4, 'available', '2025-05-25', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(66, 4, 'available', '2025-05-26', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(67, 4, 'available', '2025-05-27', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(68, 4, 'available', '2025-05-28', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(69, 4, 'available', '2025-05-29', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(70, 4, 'available', '2025-05-30', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(71, 4, 'available', '2025-05-31', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-05 18:18:31'),
(72, 4, 'available', '2025-05-08', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(73, 4, 'available', '2025-05-09', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(74, 4, 'available', '2025-05-10', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(75, 4, 'available', '2025-05-11', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(76, 4, 'available', '2025-05-12', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(77, 4, 'available', '2025-05-13', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(78, 4, 'available', '2025-05-14', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(79, 4, 'available', '2025-05-15', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(80, 4, 'available', '2025-05-16', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(81, 4, 'available', '2025-05-17', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(82, 4, 'available', '2025-05-18', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(83, 4, 'available', '2025-05-19', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(84, 4, 'available', '2025-05-20', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(85, 4, 'available', '2025-05-21', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(86, 4, 'available', '2025-05-22', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(87, 4, 'available', '2025-05-23', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(88, 4, 'available', '2025-05-24', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(89, 4, 'available', '2025-05-25', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(90, 4, 'available', '2025-05-26', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(91, 4, 'available', '2025-05-27', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(92, 4, 'available', '2025-05-28', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(93, 4, 'available', '2025-05-29', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(94, 4, 'available', '2025-05-30', '09:00:00', '17:00:00', 'Regular working hours', 33, '2025-05-07 06:18:27'),
(95, 4, 'available', '2025-05-08', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(96, 4, 'available', '2025-05-09', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(97, 4, 'available', '2025-05-10', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(98, 4, 'available', '2025-05-11', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(99, 4, 'available', '2025-05-12', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(100, 4, 'available', '2025-05-13', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(101, 4, 'available', '2025-05-14', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(102, 4, 'available', '2025-05-15', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(103, 4, 'available', '2025-05-16', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(104, 4, 'available', '2025-05-17', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(105, 4, 'available', '2025-05-18', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(106, 4, 'available', '2025-05-19', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(107, 4, 'available', '2025-05-20', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(108, 4, 'available', '2025-05-21', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(109, 4, 'available', '2025-05-22', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(110, 4, 'available', '2025-05-23', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(111, 4, 'available', '2025-05-24', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(112, 4, 'available', '2025-05-25', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(113, 4, 'available', '2025-05-26', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(114, 4, 'available', '2025-05-27', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(115, 4, 'available', '2025-05-28', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(116, 4, 'available', '2025-05-29', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(117, 4, 'available', '2025-05-30', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(118, 4, 'available', '2025-05-31', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(119, 4, 'available', '2025-06-01', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(120, 4, 'available', '2025-06-02', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(121, 4, 'available', '2025-06-03', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(122, 4, 'available', '2025-06-04', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(123, 4, 'available', '2025-06-05', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(124, 4, 'available', '2025-06-06', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-07 06:27:59'),
(125, 4, 'available', '2025-06-10', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:04'),
(126, 4, 'available', '2025-06-11', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:04'),
(127, 4, 'available', '2025-06-12', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:04'),
(128, 4, 'available', '2025-06-13', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:04'),
(129, 4, 'available', '2025-06-14', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:04'),
(130, 4, 'available', '2025-06-15', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:04'),
(131, 4, 'available', '2025-06-16', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:04'),
(132, 4, 'available', '2025-06-17', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:04'),
(133, 4, 'available', '2025-06-18', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(134, 4, 'available', '2025-06-19', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(135, 4, 'available', '2025-06-20', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(136, 4, 'available', '2025-06-21', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(137, 4, 'available', '2025-06-22', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(138, 4, 'available', '2025-06-23', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(139, 4, 'available', '2025-06-24', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(140, 4, 'available', '2025-06-25', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(141, 4, 'available', '2025-06-26', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(142, 4, 'available', '2025-06-27', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(143, 4, 'available', '2025-06-28', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(144, 4, 'available', '2025-06-29', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05'),
(145, 4, 'available', '2025-06-30', '09:00:00', '17:00:00', 'Regular working hours', 50, '2025-05-16 12:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `license_number` varchar(50) DEFAULT NULL,
  `clinic_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `user_id`, `specialization`, `license_number`, `clinic_address`) VALUES
(2, 4, 'MBBS', '12345', 'kulnagar'),
(4, 9, 'MBBS', '12345678', 'Kudroli');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `aadhar_number` varchar(12) DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `user_id`, `aadhar_number`, `gender`, `dob`) VALUES
(1, 5, '963096309630', 'female', '2000-02-01'),
(2, 7, '1234 5678 23', 'male', '2002-07-18'),
(3, 8, '234512345678', 'female', '2005-07-19'),
(4, 10, '123456788765', 'male', '2001-09-17'),
(5, 11, '456788654645', 'female', '2002-06-12'),
(7, 14, '1258820348', 'female', '2000-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','Patient','Doctor') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `otp` int(11) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `role`, `created_at`, `otp`, `otp_expiry`) VALUES
(1, 'deepa', 'deepa@gmail.com', '123', 'Patient', '2025-04-05 04:06:35', NULL, NULL),
(2, 'admin', 'admin@gmail.com', '123456', 'Admin', '2025-04-05 04:12:09', NULL, NULL),
(4, 'rachitha', 'rachitha@gmail.com', '303030', 'Doctor', '2025-04-09 04:08:26', NULL, NULL),
(5, 'priya', 'priya@gmail.com', '123456', 'Patient', '2025-04-09 04:29:20', NULL, NULL),
(6, 'prathiksha', 'prathiksha@gmail.com', '123', 'Doctor', '2025-04-09 07:53:12', NULL, NULL),
(7, 'raj', 'raj@gmail.com', 'rajj123', 'Patient', '2025-05-05 07:16:01', NULL, NULL),
(8, 'prathiksharaju', 'prathiksharaju30@gmail.com', 'paju', 'Patient', '2025-05-05 07:20:57', 818378, NULL),
(9, 'siri', 'siri@gmail.com', '909090', 'Doctor', '2025-05-07 06:21:54', NULL, NULL),
(10, 'kevin', 'kev@gmail.com', '707070', 'Patient', '2025-05-07 06:24:14', NULL, NULL),
(11, 'michelle', 'mich@gmail.com', '999999999', 'Patient', '2025-05-07 07:01:22', NULL, NULL),
(12, 'anusha', 'anusharaj598@gmail.com', 'anu', 'Doctor', '2025-05-16 12:11:40', NULL, NULL),
(13, 'aluu', 'alu@gmail.com', 'alili', 'Patient', '2025-05-16 12:12:13', NULL, NULL),
(14, 'amana', 'amana@gmail.com', 'amanaaa', 'Patient', '2025-05-16 12:13:54', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appointment_id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`Calendar_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `Calendar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
