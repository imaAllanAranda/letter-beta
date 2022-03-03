-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 05:16 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinei1_register_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisers`
--

CREATE TABLE `advisers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fsp_no` int(11) DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advisers`
--

INSERT INTO `advisers` (`id`, `type`, `name`, `email`, `fsp_no`, `contact_number`, `status`, `requirements`, `created_at`, `updated_at`) VALUES
(1, 'Management', 'Aileen Greenholt', 'jules.davis@example.org', NULL, '+639866566083', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Pending\",\"aia\":\"No Application\",\"partners_life\":\"Active\",\"nib\":\"No Application\",\"cigna\":\"Active\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2021-05-20\",\"drs\":\"Others\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(2, 'Staff', 'Holly Johnston', 'jparisian@example.com', NULL, '+639261959312', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"No Application\",\"aia\":\"Pending\",\"partners_life\":\"Pending\",\"nib\":\"Active\",\"cigna\":\"Pending\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2019-05-27\",\"drs\":\"Partial\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"GST\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(3, 'Adviser', 'Dr. Jakob Johnston', 'dschmidt@example.com', 542886, '+639419192112', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"No Application\",\"aia\":\"No Application\",\"partners_life\":\"Active\",\"nib\":\"Declined\",\"cigna\":\"No Application\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2013-11-03\",\"drs\":\"Others\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(4, 'Adviser', 'Mr. Isaias Gutkowski', 'leonel01@example.org', 75886, '+639503142877', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"Declined\",\"aia\":\"Pending\",\"partners_life\":\"Pending\",\"nib\":\"Active\",\"cigna\":\"Pending\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"1997-10-04\",\"drs\":\"Paid\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(5, 'Management', 'Monica Stanton', 'myrl93@example.com', NULL, '+639813958474', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"No Application\",\"aia\":\"No Application\",\"partners_life\":\"No Application\",\"nib\":\"No Application\",\"cigna\":\"Pending\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"2009-10-06\",\"drs\":\"Paid\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(6, 'Adviser', 'Letitia Bradtke', 'vandervort.lisette@example.org', 870329, '+639697019840', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Declined\",\"aia\":\"Pending\",\"partners_life\":\"Declined\",\"nib\":\"Active\",\"cigna\":\"Declined\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"2009-05-18\",\"drs\":\"Others\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(7, 'Management', 'Dr. Jed Lemke', 'burley.dach@example.com', NULL, '+639769543130', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Declined\",\"aia\":\"Declined\",\"partners_life\":\"Declined\",\"nib\":\"No Application\",\"cigna\":\"Pending\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"1978-01-23\",\"drs\":\"Paid\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(8, 'Adviser', 'Audreanne Emmerich DDS', 'adickens@example.com', 270374, '+639545080833', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Active\",\"aia\":\"Declined\",\"partners_life\":\"Pending\",\"nib\":\"Active\",\"cigna\":\"No Application\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"1977-07-24\",\"drs\":\"Not Paid\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(9, 'Staff', 'Dean Collins', 'jean77@example.com', NULL, '+639118672803', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"Active\",\"aia\":\"No Application\",\"partners_life\":\"No Application\",\"nib\":\"Active\",\"cigna\":\"No Application\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"2021-03-21\",\"drs\":\"Others\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(10, 'Staff', 'Graham Brekke', 'jarret88@example.net', NULL, '+639993355120', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"No Application\",\"aia\":\"Pending\",\"partners_life\":\"Active\",\"nib\":\"Declined\",\"cigna\":\"Pending\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"2020-04-30\",\"drs\":\"Partial\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(11, 'Management', 'Brandyn Flatley', 'nola96@example.com', NULL, '+639087483349', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"No Application\",\"aia\":\"No Application\",\"partners_life\":\"Active\",\"nib\":\"No Application\",\"cigna\":\"Declined\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2005-03-08\",\"drs\":\"Not Paid\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"GST\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(12, 'Adviser', 'Jeffrey Volkman', 'considine.ceasar@example.com', 140153, '+639406970702', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Declined\",\"aia\":\"Active\",\"partners_life\":\"Declined\",\"nib\":\"No Application\",\"cigna\":\"No Application\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"1982-02-26\",\"drs\":\"Partial\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(13, 'Staff', 'Miss Iliana Baumbach', 'lockman.erika@example.com', NULL, '+639956846962', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"Pending\",\"aia\":\"No Application\",\"partners_life\":\"Declined\",\"nib\":\"Pending\",\"cigna\":\"Active\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"2004-11-09\",\"drs\":\"Others\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"GST\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(14, 'Staff', 'Keara Blanda', 'isaac06@example.net', NULL, '+639735592807', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Declined\",\"aia\":\"Active\",\"partners_life\":\"No Application\",\"nib\":\"Pending\",\"cigna\":\"Declined\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2018-01-27\",\"drs\":\"Not Paid\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(15, 'Management', 'Gavin Koepp', 'ikreiger@example.com', NULL, '+639131667616', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"No Application\",\"aia\":\"Declined\",\"partners_life\":\"No Application\",\"nib\":\"Pending\",\"cigna\":\"Pending\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"1984-12-18\",\"drs\":\"Partial\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(16, 'Management', 'Emelie Kihn', 'rebekah.krajcik@example.net', NULL, '+639695144639', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Declined\",\"aia\":\"Active\",\"partners_life\":\"Active\",\"nib\":\"Pending\",\"cigna\":\"Declined\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"1988-07-26\",\"drs\":\"Others\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(17, 'Adviser', 'Stuart Kunde', 'delmer11@example.org', 47369, '+639681012930', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"No Application\",\"aia\":\"Active\",\"partners_life\":\"No Application\",\"nib\":\"Active\",\"cigna\":\"Pending\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"1990-07-11\",\"drs\":\"Partial\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(18, 'Management', 'Prof. Matt Flatley', 'adalberto21@example.org', NULL, '+639488942796', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"No Application\",\"aia\":\"No Application\",\"partners_life\":\"Pending\",\"nib\":\"Declined\",\"cigna\":\"Pending\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2013-10-19\",\"drs\":\"Others\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(19, 'Management', 'Dandre Prohaska', 'unolan@example.org', NULL, '+639341398345', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"Declined\",\"aia\":\"Active\",\"partners_life\":\"Pending\",\"nib\":\"No Application\",\"cigna\":\"Active\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2004-04-05\",\"drs\":\"Partial\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(20, 'Management', 'Kory Ziemann', 'barbara93@example.net', NULL, '+639905126729', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"Active\",\"aia\":\"Active\",\"partners_life\":\"Pending\",\"nib\":\"Declined\",\"cigna\":\"Active\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"1999-12-28\",\"drs\":\"Partial\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(21, 'Staff', 'Miss Cheyenne Rice', 'hazle12@example.net', NULL, '+639047355371', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"No Application\",\"aia\":\"No Application\",\"partners_life\":\"Declined\",\"nib\":\"Pending\",\"cigna\":\"Pending\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"1988-05-10\",\"drs\":\"Others\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(22, 'Management', 'Dandre Sanford II', 'trace20@example.org', NULL, '+639877900832', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Declined\",\"aia\":\"Pending\",\"partners_life\":\"Pending\",\"nib\":\"No Application\",\"cigna\":\"Pending\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"1986-02-08\",\"drs\":\"Paid\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(23, 'Management', 'Jacquelyn O\'Keefe', 'green08@example.com', NULL, '+639122759713', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Pending\",\"aia\":\"Active\",\"partners_life\":\"No Application\",\"nib\":\"Pending\",\"cigna\":\"Active\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2018-07-28\",\"drs\":\"Paid\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(24, 'Staff', 'Dr. Gabrielle Rice IV', 'ruben.von@example.org', NULL, '+639925247465', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"No Application\",\"aia\":\"Active\",\"partners_life\":\"No Application\",\"nib\":\"No Application\",\"cigna\":\"Declined\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2009-12-01\",\"drs\":\"Others\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"GST\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(25, 'Adviser', 'Prof. Anissa Hintz Sr.', 'genevieve.wyman@example.net', 397982, '+639175542340', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Pending\",\"aia\":\"Pending\",\"partners_life\":\"Declined\",\"nib\":\"Declined\",\"cigna\":\"Active\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"1976-06-09\",\"drs\":\"Others\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(26, 'Adviser', 'Armand Carter III', 'kwelch@example.com', 993240, '+639587051042', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Declined\",\"aia\":\"Active\",\"partners_life\":\"Pending\",\"nib\":\"No Application\",\"cigna\":\"Active\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"2005-01-07\",\"drs\":\"Others\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(27, 'Management', 'Garrick Ryan', 'rempel.gloria@example.net', NULL, '+639478809530', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Pending\",\"aia\":\"Active\",\"partners_life\":\"Active\",\"nib\":\"Active\",\"cigna\":\"No Application\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"2020-05-24\",\"drs\":\"Others\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(28, 'Adviser', 'Dr. Randy Borer', 'crona.pietro@example.com', 536751, '+639272270465', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Declined\",\"aia\":\"Active\",\"partners_life\":\"No Application\",\"nib\":\"Pending\",\"cigna\":\"Active\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"1973-08-24\",\"drs\":\"Others\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(29, 'Staff', 'Rosie Barrows DVM', 'ignatius09@example.org', NULL, '+639905369269', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"Active\",\"aia\":\"Declined\",\"partners_life\":\"Active\",\"nib\":\"Active\",\"cigna\":\"Pending\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"1995-02-01\",\"drs\":\"Partial\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(30, 'Staff', 'Fausto Rowe', 'michele.walter@example.net', NULL, '+639940750432', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"No Application\",\"aia\":\"No Application\",\"partners_life\":\"Active\",\"nib\":\"Active\",\"cigna\":\"Pending\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"1983-02-14\",\"drs\":\"Partial\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(31, 'Staff', 'Madelyn Abbott', 'cortney72@example.org', NULL, '+639983659896', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"Declined\",\"aia\":\"Declined\",\"partners_life\":\"Declined\",\"nib\":\"Pending\",\"cigna\":\"Active\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"2009-02-11\",\"drs\":\"Not Paid\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(32, 'Adviser', 'Mr. Ibrahim Auer DDS', 'collin.glover@example.org', 613885, '+639826423694', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"Active\",\"aia\":\"No Application\",\"partners_life\":\"No Application\",\"nib\":\"Declined\",\"cigna\":\"Declined\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2004-12-12\",\"drs\":\"Not Paid\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(33, 'Adviser', 'Audra Boyer', 'dulce.emard@example.net', 258216, '+639613682825', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"Pending\",\"aia\":\"Pending\",\"partners_life\":\"Declined\",\"nib\":\"Pending\",\"cigna\":\"Active\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"1973-04-25\",\"drs\":\"Partial\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(34, 'Management', 'Wilber Ernser', 'vickie16@example.net', NULL, '+639830822118', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"Active\",\"aia\":\"Active\",\"partners_life\":\"Pending\",\"nib\":\"No Application\",\"cigna\":\"Active\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"1970-08-02\",\"drs\":\"Paid\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"GST\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(35, 'Management', 'Mrs. Francesca Mills DDS', 'ehirthe@example.org', NULL, '+639702441792', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"Declined\",\"aia\":\"Declined\",\"partners_life\":\"Active\",\"nib\":\"Active\",\"cigna\":\"Active\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"1982-02-02\",\"drs\":\"Paid\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(36, 'Management', 'Dylan Block', 'balistreri.dessie@example.org', NULL, '+639228845935', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Pending\",\"aia\":\"No Application\",\"partners_life\":\"No Application\",\"nib\":\"Declined\",\"cigna\":\"Active\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"2008-12-15\",\"drs\":\"Not Paid\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(37, 'Staff', 'Torrance Hilpert', 'veum.baby@example.net', NULL, '+639038783890', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Pending\",\"aia\":\"Pending\",\"partners_life\":\"Pending\",\"nib\":\"Active\",\"cigna\":\"Declined\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"1995-03-06\",\"drs\":\"Others\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"GST\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(38, 'Management', 'Miss Margret Anderson IV', 'uyundt@example.com', NULL, '+639608022643', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Active\",\"aia\":\"Active\",\"partners_life\":\"Pending\",\"nib\":\"Active\",\"cigna\":\"Pending\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"2005-12-31\",\"drs\":\"Partial\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(39, 'Staff', 'Prof. Malika Bernhard', 'wisozk.rosa@example.com', NULL, '+639788434826', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Declined\",\"aia\":\"Declined\",\"partners_life\":\"Declined\",\"nib\":\"Declined\",\"cigna\":\"Active\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"1988-03-19\",\"drs\":\"Partial\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(40, 'Management', 'Mrs. Celine Bernhard MD', 'nathaniel15@example.com', NULL, '+639253016314', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"No Application\",\"aia\":\"Pending\",\"partners_life\":\"Declined\",\"nib\":\"Active\",\"cigna\":\"Pending\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2015-07-08\",\"drs\":\"Paid\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(41, 'Management', 'Andy Emmerich', 'yondricka@example.net', NULL, '+639723238396', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"Declined\",\"aia\":\"Active\",\"partners_life\":\"No Application\",\"nib\":\"No Application\",\"cigna\":\"Declined\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"1998-03-13\",\"drs\":\"Not Paid\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"GST\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(42, 'Staff', 'Adriana Bahringer', 'nia32@example.org', NULL, '+639333679955', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"No Application\",\"aia\":\"Active\",\"partners_life\":\"Pending\",\"nib\":\"No Application\",\"cigna\":\"Pending\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"2021-08-31\",\"drs\":\"Paid\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"GST\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:23'),
(43, 'Adviser', 'Marques Pouros', 'napoleon.stiedemann@example.com', 928153, '+639114364553', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"No Application\",\"aia\":\"No Application\",\"partners_life\":\"No Application\",\"nib\":\"No Application\",\"cigna\":\"Pending\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2004-04-08\",\"drs\":\"Not Paid\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(44, 'Adviser', 'Oren Thompson', 'gregory94@example.net', 769513, '+639814712803', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"Declined\",\"aia\":\"Active\",\"partners_life\":\"Active\",\"nib\":\"No Application\",\"cigna\":\"Active\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"2013-04-15\",\"drs\":\"Partial\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(45, 'Adviser', 'Ena Ritchie', 'julio.prohaska@example.org', 698236, '+639257371812', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"No Application\",\"aia\":\"No Application\",\"partners_life\":\"Active\",\"nib\":\"Active\",\"cigna\":\"Declined\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2004-08-02\",\"drs\":\"Partial\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(46, 'Adviser', 'Roberta Jast', 'nikolas77@example.org', 593196, '+639721043038', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Active\",\"aia\":\"No Application\",\"partners_life\":\"Declined\",\"nib\":\"Declined\",\"cigna\":\"No Application\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"1982-06-07\",\"drs\":\"Others\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(47, 'Staff', 'Miss Ines Beahan V', 'lionel94@example.org', NULL, '+639613935490', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Active\",\"aia\":\"Active\",\"partners_life\":\"Declined\",\"nib\":\"Declined\",\"cigna\":\"Pending\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"1997-03-08\",\"drs\":\"Not Paid\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(48, 'Management', 'Briana Armstrong', 'batz.rae@example.com', NULL, '+639063799052', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Pending\",\"aia\":\"Declined\",\"partners_life\":\"Declined\",\"nib\":\"Declined\",\"cigna\":\"Pending\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"1991-02-03\",\"drs\":\"Others\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(49, 'Management', 'Mr. Everett Stehr', 'jenifer11@example.com', NULL, '+639112708026', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"No Application\",\"aia\":\"Active\",\"partners_life\":\"Pending\",\"nib\":\"No Application\",\"cigna\":\"Declined\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"2002-08-16\",\"drs\":\"Not Paid\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"GST\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(50, 'Staff', 'Tom Thompson DDS', 'kessler.dax@example.com', NULL, '+639244046420', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Active\",\"aia\":\"Active\",\"partners_life\":\"Declined\",\"nib\":\"Active\",\"cigna\":\"No Application\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"2001-06-08\",\"drs\":\"Partial\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(51, 'Management', 'Graciela Mayert DVM', 'wava40@example.com', NULL, '+639651024953', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"Declined\",\"aia\":\"Active\",\"partners_life\":\"Pending\",\"nib\":\"Active\",\"cigna\":\"Declined\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"1979-02-11\",\"drs\":\"Paid\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(52, 'Adviser', 'Dr. Augustus Adams DDS', 'hulda23@example.org', 717752, '+639686971692', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"Declined\",\"aia\":\"Declined\",\"partners_life\":\"Pending\",\"nib\":\"Pending\",\"cigna\":\"Pending\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"2009-02-06\",\"drs\":\"Others\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(53, 'Management', 'Eda Jerde', 'eve.cummerata@example.org', NULL, '+639593885331', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"Pending\",\"aia\":\"Declined\",\"partners_life\":\"No Application\",\"nib\":\"Pending\",\"cigna\":\"Declined\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"1992-12-06\",\"drs\":\"Partial\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"GST\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(54, 'Adviser', 'Leonie Crooks', 'tsporer@example.org', 624013, '+639261837675', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Declined\",\"aia\":\"Declined\",\"partners_life\":\"Pending\",\"nib\":\"No Application\",\"cigna\":\"Declined\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"2000-10-11\",\"drs\":\"Others\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(55, 'Adviser', 'Christy Larson', 'okon.lacey@example.net', 156421, '+639049335974', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"Active\",\"aia\":\"Declined\",\"partners_life\":\"Declined\",\"nib\":\"Declined\",\"cigna\":\"Pending\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"1980-08-24\",\"drs\":\"Not Paid\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"GST\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(56, 'Staff', 'Prof. Shanna Bartell', 'bcrooks@example.net', NULL, '+639528977917', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"Active\",\"aia\":\"Active\",\"partners_life\":\"No Application\",\"nib\":\"Active\",\"cigna\":\"Declined\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"1999-09-06\",\"drs\":\"Not Paid\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(57, 'Management', 'Freida Osinski', 'danny07@example.net', NULL, '+639456273524', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"No Application\",\"aia\":\"Pending\",\"partners_life\":\"Declined\",\"nib\":\"No Application\",\"cigna\":\"Active\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"1975-10-07\",\"drs\":\"Partial\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(58, 'Management', 'Alison Mills IV', 'medhurst.ed@example.net', NULL, '+639896511435', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Active\",\"aia\":\"Declined\",\"partners_life\":\"Active\",\"nib\":\"Active\",\"cigna\":\"Active\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"1989-11-01\",\"drs\":\"Partial\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(59, 'Management', 'Dr. Morris Fay DDS', 'igerlach@example.org', NULL, '+639168365383', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"Pending\",\"aia\":\"No Application\",\"partners_life\":\"No Application\",\"nib\":\"No Application\",\"cigna\":\"Active\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"2006-06-11\",\"drs\":\"Partial\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(60, 'Staff', 'Ernestina Wolff', 'laurianne.lang@example.org', NULL, '+639512395962', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"No Application\",\"aia\":\"Active\",\"partners_life\":\"Active\",\"nib\":\"Pending\",\"cigna\":\"Active\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"1991-01-31\",\"drs\":\"Others\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23');
INSERT INTO `advisers` (`id`, `type`, `name`, `email`, `fsp_no`, `contact_number`, `status`, `requirements`, `created_at`, `updated_at`) VALUES
(61, 'Management', 'Burdette Keebler', 'leif36@example.net', NULL, '+639123779470', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Pending\",\"accuro\":\"Active\",\"aia\":\"Pending\",\"partners_life\":\"No Application\",\"nib\":\"No Application\",\"cigna\":\"Active\",\"kiwisaver\":\"Declined\"},\"adviser_requirements\":{\"fspr\":\"2019-01-14\",\"drs\":\"Others\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"GST\",\"business_photo\":\"Not Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(62, 'Staff', 'Ms. Adelia Pagac V', 'elton.stamm@example.net', NULL, '+639822199910', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"No Application\",\"aia\":\"No Application\",\"partners_life\":\"Active\",\"nib\":\"Declined\",\"cigna\":\"No Application\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"1990-06-01\",\"drs\":\"Not Paid\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Not Active\",\"website\":\"No\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(63, 'Staff', 'Prof. Tyrique Labadie', 'fmarquardt@example.com', NULL, '+639186516731', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Active\",\"aia\":\"No Application\",\"partners_life\":\"Active\",\"nib\":\"Declined\",\"cigna\":\"Declined\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"1979-12-18\",\"drs\":\"Others\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"GST\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"No\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(64, 'Management', 'Sandrine Mraz', 'cronin.lisa@example.org', NULL, '+639978169780', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"No Application\",\"accuro\":\"Declined\",\"aia\":\"Pending\",\"partners_life\":\"No Application\",\"nib\":\"No Application\",\"cigna\":\"Active\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"1981-08-09\",\"drs\":\"Paid\",\"pi_cover\":\"Agreement\",\"lvl_5\":\"Finished\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Pending\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Not Active\",\"lead_tracker\":\"Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(65, 'Management', 'Brennon Schroeder', 'keyshawn.murray@example.org', NULL, '+639742599972', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"Active\",\"aia\":\"Pending\",\"partners_life\":\"Active\",\"nib\":\"Declined\",\"cigna\":\"Pending\",\"kiwisaver\":\"Active\"},\"adviser_requirements\":{\"fspr\":\"2006-10-24\",\"drs\":\"Partial\",\"pi_cover\":\"Paid\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Non-Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Not Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Not Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(66, 'Staff', 'Coby Roberts', 'trantow.lillian@example.org', NULL, '+639941908745', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Declined\",\"accuro\":\"No Application\",\"aia\":\"Active\",\"partners_life\":\"Declined\",\"nib\":\"No Application\",\"cigna\":\"No Application\",\"kiwisaver\":\"Pending\"},\"adviser_requirements\":{\"fspr\":\"2010-12-14\",\"drs\":\"Partial\",\"pi_cover\":\"Partial\",\"lvl_5\":\"Not Enrolled\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"WHT\",\"business_photo\":\"Received\",\"id\":\"Received\"},\"software\":{\"email\":\"Active\",\"pipedrive\":\"Not Active\",\"training\":\"Not Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(67, 'Adviser', 'Ms. Martina Nader IV', 'mike.graham@example.org', 85077, '+639722416360', 'Active', '{\"sub_agencies\":{\"fidelity_life\":\"Active\",\"accuro\":\"Active\",\"aia\":\"Active\",\"partners_life\":\"Declined\",\"nib\":\"Active\",\"cigna\":\"Active\",\"kiwisaver\":\"No Application\"},\"adviser_requirements\":{\"fspr\":\"1978-10-02\",\"drs\":\"Paid\",\"pi_cover\":\"Not Paid\",\"lvl_5\":\"Ongoing\"},\"documentary_requirements\":{\"bank_acct_aml\":\"Compliant\",\"tax\":\"Non-GST\",\"business_photo\":\"Received\",\"id\":\"Not Received\"},\"software\":{\"email\":\"Not Active\",\"pipedrive\":\"Active\",\"training\":\"Active\",\"advice_process\":\"Active\",\"website\":\"Yes\",\"client_feedback_report\":\"Active\",\"lead_tracker\":\"Not Active\"}}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(68, 'Staff', 'Allan Aranda', 'allan@eliteinsure.co.nz', NULL, '09502329871', 'Active', NULL, '2021-11-04 04:14:32', '2021-11-04 04:14:32'),
(69, 'Staff', 'Tom Cruise', 'tom@eliteinsure.co.nz', NULL, '3214568', 'Active', NULL, '2021-11-08 08:16:55', '2021-11-08 08:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `claims`
--

CREATE TABLE `claims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adviser_id` bigint(20) UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `policy_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `claims`
--

INSERT INTO `claims` (`id`, `adviser_id`, `client_name`, `insurer`, `policy_number`, `nature`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 'Flo Bartell', 'CIGNA', '18114', 'Pre-approval', '[\"Life\",\"Medical\",\"Trauma\",\"TPD\",\"IP\"]', 'Disapproved', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(2, 8, 'Oma Ruecker', 'Fidelity Life', '71905', 'Pre-approval', '[\"Medical\",\"Trauma\"]', 'Disapproved', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(3, 12, 'Hannah Hoeger', 'N/A', '62226', 'Claim', '[\"IP\",\"Medical\"]', 'Continuing', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(4, 8, 'Sibyl Bradtke', 'CIGNA', '73972', 'Claim', '[\"TPD\",\"Trauma\"]', 'Continuing', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(5, 6, 'Lillie Johns', 'NZFunds', '19428', 'Claim', '[\"IP\",\"Life\",\"Trauma\",\"Medical\"]', 'Partially Approved', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(6, 8, 'Jevon Smith', 'Fidelity Life', '14364', 'Pre-approval', '[\"Trauma\",\"IP\",\"TPD\",\"Medical\",\"Life\"]', 'In Progress', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(7, 8, 'Aliya Ullrich', 'CIGNA', '72719', 'Claim', '[\"Life\",\"Trauma\"]', 'In Progress', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(8, 6, 'Royal Bashirian', 'Partners Life', '30843', 'Pre-approval', '[\"Medical\",\"Trauma\",\"TPD\"]', 'Continuing', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(9, 6, 'Dr. Evalyn Botsford IV', 'Accuro', '42149', 'Claim', '[\"Trauma\",\"Medical\",\"Life\"]', 'Approved', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(10, 12, 'Libbie Bashirian I', 'N/A', '95465', 'Pre-approval', '[\"Life\",\"TPD\",\"Medical\",\"Trauma\"]', 'Continuing', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(11, 8, 'Georgiana Kassulke', 'NIB', '07974', 'Pre-approval', '[\"Trauma\",\"Medical\",\"IP\"]', 'Disapproved', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(12, 12, 'Elinore Kshlerin Sr.', 'Partners Life', '87188', 'Pre-approval', '[\"Trauma\",\"Life\",\"TPD\",\"Medical\",\"IP\"]', 'Continuing', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(13, 8, 'Miss Oceane Hudson DDS', 'CIGNA', '90645', 'Pre-approval', '[\"Trauma\",\"Life\"]', 'Approved', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(14, 4, 'Clemmie Ziemann', 'CIGNA', '12467', 'Pre-approval', '[\"Trauma\",\"IP\",\"Life\",\"Medical\",\"TPD\"]', 'Continuing', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(15, 4, 'Rhea Jacobson', 'N/A', '79096', 'Pre-approval', '[\"IP\"]', 'Partially Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(16, 4, 'Daphnee Fahey', 'Partners Life', '65173', 'Claim', '[\"IP\",\"TPD\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(17, 12, 'Dr. Roslyn Heller', 'Fidelity Life', '81450', 'Claim', '[\"Medical\",\"TPD\",\"IP\"]', 'Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(18, 12, 'Prof. Muhammad Feil', 'AIA', '60411', 'Pre-approval', '[\"Trauma\",\"IP\",\"Medical\",\"Life\",\"TPD\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(19, 8, 'Miss Nedra Heaney II', 'Accuro', '81771', 'Claim', '[\"Life\",\"TPD\",\"IP\",\"Medical\",\"Trauma\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(20, 17, 'Dr. Cheyanne Marquardt III', 'NZFunds', '51266', 'Pre-approval', '[\"Life\",\"Trauma\",\"IP\",\"TPD\",\"Medical\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(21, 8, 'Della Kris DDS', 'Partners Life', '34008', 'Pre-approval', '[\"Trauma\",\"Life\",\"Medical\",\"TPD\",\"IP\"]', 'Continuing', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(22, 12, 'Prof. Gwendolyn Grady', 'Partners Life', '69879', 'Claim', '[\"TPD\",\"Medical\",\"IP\",\"Trauma\",\"Life\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(23, 12, 'Lilian Von PhD', 'N/A', '44718', 'Claim', '[\"Medical\",\"IP\",\"Life\"]', 'Partially Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(24, 25, 'Clark Price', 'NIB', '36098', 'Pre-approval', '[\"Life\"]', 'Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(25, 17, 'Ms. Orpha Murazik DVM', 'Partners Life', '49721', 'Pre-approval', '[\"Trauma\",\"Medical\",\"IP\"]', 'Continuing', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(26, 8, 'Ruby Cummerata', 'NIB', '66860', 'Claim', '[\"Life\",\"TPD\",\"Trauma\"]', 'Disapproved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(27, 3, 'Norma Haag', 'NZFunds', '92138', 'Pre-approval', '[\"IP\",\"TPD\"]', 'Disapproved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(28, 17, 'Mariela Koepp', 'N/A', '56639', 'Pre-approval', '[\"TPD\"]', 'Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(29, 28, 'Prof. Hilbert Homenick', 'NZFunds', '68665', 'Claim', '[\"TPD\"]', 'Continuing', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(30, 28, 'Mrs. Aglae Turner Jr.', 'Fidelity Life', '70889', 'Claim', '[\"IP\"]', 'Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(31, 12, 'Bernardo Gusikowski', 'NZFunds', '16584', 'Pre-approval', '[\"Trauma\",\"TPD\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(32, 4, 'Rasheed Baumbach', 'Accuro', '22820', 'Pre-approval', '[\"Life\",\"IP\",\"Trauma\",\"Medical\",\"TPD\"]', 'Partially Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(33, 25, 'Kristian Hayes', 'N/A', '23685', 'Claim', '[\"IP\",\"Trauma\"]', 'Disapproved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(34, 28, 'Anibal Leannon', 'NIB', '62089', 'Pre-approval', '[\"Trauma\",\"IP\",\"Medical\",\"TPD\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(35, 33, 'Prof. Christa Botsford I', 'Accuro', '98409', 'Pre-approval', '[\"TPD\",\"Trauma\"]', 'Disapproved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(36, 33, 'Freeman Harris', 'NIB', '52046', 'Claim', '[\"TPD\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(37, 4, 'Prof. Oscar Runte MD', 'CIGNA', '87083', 'Claim', '[\"Medical\",\"Trauma\",\"IP\",\"Life\",\"TPD\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(38, 4, 'Marcellus Kling MD', 'Accuro', '30800', 'Pre-approval', '[\"Medical\",\"Trauma\",\"Life\"]', 'Disapproved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(39, 12, 'Ericka McDermott', 'Partners Life', '68230', 'Pre-approval', '[\"TPD\",\"Life\",\"IP\",\"Trauma\"]', 'Partially Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(40, 3, 'Miss Nora Gerhold', 'Fidelity Life', '57854', 'Pre-approval', '[\"Life\",\"TPD\",\"Trauma\",\"Medical\"]', 'Continuing', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(41, 28, 'Melisa Klein', 'NIB', '16968', 'Claim', '[\"Life\",\"Medical\",\"Trauma\",\"IP\",\"TPD\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(42, 12, 'Mrs. Kasey Daniel', 'CIGNA', '62572', 'Claim', '[\"Life\"]', 'Partially Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(43, 28, 'Zoila Jenkins', 'N/A', '64281', 'Pre-approval', '[\"Medical\",\"IP\"]', 'Continuing', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(44, 33, 'Flo Jast PhD', 'AIA', '20392', 'Pre-approval', '[\"TPD\"]', 'Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(45, 33, 'Mrs. Audie Collins DDS', 'NIB', '65099', 'Claim', '[\"IP\",\"Medical\",\"TPD\",\"Life\",\"Trauma\"]', 'Partially Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(46, 25, 'Glenda Brekke', 'CIGNA', '62929', 'Claim', '[\"Life\",\"Medical\",\"IP\"]', 'Continuing', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(47, 28, 'Maia Kreiger', 'N/A', '97668', 'Claim', '[\"IP\",\"Trauma\"]', 'Disapproved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(48, 25, 'Freddie Wunsch', 'N/A', '64874', 'Pre-approval', '[\"Medical\",\"IP\",\"Trauma\",\"Life\",\"TPD\"]', 'Disapproved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(49, 26, 'Tania McKenzie', 'AIA', '95418', 'Claim', '[\"Medical\"]', 'Disapproved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(50, 4, 'Major Monahan V', 'CIGNA', '32740', 'Pre-approval', '[\"IP\",\"TPD\",\"Medical\",\"Life\",\"Trauma\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(51, 25, 'Green Hansen', 'NZFunds', '25341', 'Claim', '[\"IP\",\"Life\",\"Trauma\",\"Medical\"]', 'Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(52, 28, 'Aiyana Boehm DVM', 'NZFunds', '80670', 'Claim', '[\"Life\",\"IP\"]', 'Disapproved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(53, 3, 'Prof. Sigmund Bins', 'CIGNA', '79198', 'Pre-approval', '[\"Life\",\"TPD\",\"Medical\",\"Trauma\"]', 'Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(54, 26, 'Tressie Rempel Jr.', 'NIB', '48894', 'Pre-approval', '[\"IP\",\"TPD\",\"Life\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(55, 4, 'Maeve Rath', 'NZFunds', '52903', 'Pre-approval', '[\"Life\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(56, 32, 'Miss Lia Quigley MD', 'AIA', '57188', 'Pre-approval', '[\"IP\",\"Medical\",\"Trauma\"]', 'In Progress', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(57, 25, 'Mr. Ottis Herzog', 'Fidelity Life', '36489', 'Pre-approval', '[\"Life\",\"TPD\"]', 'Partially Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(58, 12, 'Hester Kertzmann', 'N/A', '15408', 'Claim', '[\"IP\",\"Life\",\"TPD\"]', 'Partially Approved', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(59, 4, 'Rachelle Funk DVM', 'Accuro', '54099', 'Pre-approval', '[\"TPD\",\"Life\"]', 'Partially Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(60, 32, 'Carlee Langworth', 'N/A', '28811', 'Pre-approval', '[\"Life\",\"Trauma\",\"IP\",\"Medical\",\"TPD\"]', 'Disapproved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(61, 4, 'Dr. Sunny Erdman', 'NIB', '10875', 'Pre-approval', '[\"TPD\"]', 'Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(62, 26, 'Dandre Runolfsdottir', 'Partners Life', '90864', 'Claim', '[\"Trauma\",\"IP\"]', 'Continuing', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(63, 12, 'Kendra Rohan', 'AIA', '91396', 'Pre-approval', '[\"Trauma\",\"TPD\",\"Medical\",\"Life\"]', 'Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(64, 6, 'Norene Johnson II', 'N/A', '60050', 'Pre-approval', '[\"IP\",\"Medical\",\"Life\",\"TPD\",\"Trauma\"]', 'Continuing', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(65, 3, 'Jade Thompson', 'NIB', '22260', 'Pre-approval', '[\"Medical\",\"Trauma\",\"Life\",\"TPD\",\"IP\"]', 'Partially Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(66, 25, 'Alex Sipes', 'Partners Life', '97632', 'Pre-approval', '[\"Medical\",\"Trauma\",\"Life\",\"TPD\",\"IP\"]', 'In Progress', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(67, 43, 'Dr. Faye McDermott I', 'Fidelity Life', '77157', 'Pre-approval', '[\"Medical\",\"Trauma\",\"Life\",\"TPD\",\"IP\"]', 'Continuing', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(68, 45, 'Gunnar Walker', 'NZFunds', '09662', 'Pre-approval', '[\"TPD\",\"Trauma\",\"IP\"]', 'Disapproved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(69, 25, 'Mr. Jaeden McKenzie', 'Fidelity Life', '20065', 'Claim', '[\"Life\"]', 'In Progress', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(70, 12, 'Palma Kertzmann', 'CIGNA', '41402', 'Pre-approval', '[\"Life\",\"Trauma\"]', 'Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(71, 28, 'Tyler O\'Kon DDS', 'Partners Life', '86105', 'Claim', '[\"TPD\",\"Life\",\"IP\",\"Trauma\"]', 'Disapproved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(72, 43, 'Prof. Jaquan Kuhlman II', 'Partners Life', '61927', 'Pre-approval', '[\"TPD\",\"Life\",\"Medical\"]', 'Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(73, 32, 'Vida Denesik', 'NZFunds', '54217', 'Claim', '[\"Trauma\",\"Medical\",\"TPD\",\"IP\"]', 'Continuing', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(74, 12, 'Julian Willms', 'CIGNA', '76080', 'Claim', '[\"Trauma\",\"TPD\"]', 'Continuing', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(75, 6, 'Marcia Cassin', 'NIB', '60919', 'Claim', '[\"Medical\",\"Trauma\",\"Life\"]', 'In Progress', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(76, 46, 'Ed McKenzie', 'AIA', '69320', 'Pre-approval', '[\"Life\",\"Medical\",\"TPD\"]', 'Disapproved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(77, 4, 'Cecilia Abbott', 'Accuro', '75874', 'Claim', '[\"IP\",\"Medical\"]', 'Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(78, 28, 'Ruth Rath', 'Partners Life', '87490', 'Claim', '[\"Trauma\",\"Medical\",\"Life\"]', 'In Progress', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(79, 8, 'Dr. Ladarius Heathcote MD', 'Partners Life', '64262', 'Pre-approval', '[\"Trauma\",\"Life\",\"IP\",\"TPD\"]', 'Partially Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(80, 4, 'Noemy Hartmann', 'Partners Life', '31669', 'Claim', '[\"Life\",\"IP\",\"Trauma\"]', 'Partially Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(81, 25, 'Marisol Conn', 'NZFunds', '96162', 'Claim', '[\"TPD\",\"IP\",\"Medical\",\"Trauma\",\"Life\"]', 'In Progress', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(82, 44, 'Tressie Bayer MD', 'NIB', '00584', 'Claim', '[\"Trauma\",\"IP\"]', 'In Progress', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(83, 4, 'Winifred O\'Kon', 'AIA', '08417', 'Pre-approval', '[\"Trauma\",\"Medical\"]', 'Disapproved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(84, 43, 'Mr. Heber Hauck IV', 'AIA', '98830', 'Pre-approval', '[\"Trauma\",\"IP\",\"TPD\",\"Life\"]', 'Partially Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(85, 12, 'Elwin Harris', 'Partners Life', '33502', 'Claim', '[\"Trauma\",\"Life\",\"IP\"]', 'Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(86, 43, 'Prof. Henriette Legros', 'AIA', '19410', 'Claim', '[\"IP\",\"Trauma\",\"TPD\"]', 'Partially Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(87, 55, 'Paige DuBuque', 'Partners Life', '64011', 'Pre-approval', '[\"IP\",\"Medical\"]', 'Disapproved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(88, 43, 'Loma Hansen', 'AIA', '93106', 'Claim', '[\"TPD\",\"Trauma\",\"Life\"]', 'Continuing', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(89, 8, 'Ms. Velma Windler', 'AIA', '84840', 'Pre-approval', '[\"TPD\",\"Life\",\"IP\"]', 'In Progress', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(90, 25, 'Prof. Everardo Klein III', 'AIA', '64119', 'Claim', '[\"IP\",\"TPD\",\"Medical\",\"Trauma\"]', 'Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(91, 44, 'Prof. Kody Fahey', 'CIGNA', '35119', 'Claim', '[\"Medical\",\"Trauma\",\"IP\"]', 'Continuing', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(92, 54, 'Mr. Kendall O\'Reilly Jr.', 'Fidelity Life', '88215', 'Claim', '[\"TPD\",\"Medical\",\"Life\",\"IP\"]', 'Disapproved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(93, 44, 'Tania Durgan', 'CIGNA', '35886', 'Claim', '[\"Medical\",\"TPD\"]', 'Disapproved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(94, 6, 'Nia Cummings', 'Partners Life', '89226', 'Claim', '[\"IP\",\"Trauma\"]', 'Partially Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(95, 32, 'Horacio Mraz', 'N/A', '11359', 'Pre-approval', '[\"IP\",\"Trauma\",\"Life\"]', 'In Progress', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(96, 4, 'Demarco Batz', 'NIB', '71674', 'Claim', '[\"IP\",\"TPD\",\"Medical\",\"Life\"]', 'Disapproved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(97, 54, 'Ms. Emmanuelle Simonis', 'NIB', '33209', 'Claim', '[\"Medical\",\"Life\",\"TPD\"]', 'Continuing', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(98, 28, 'Arnoldo Runolfsson', 'NZFunds', '37487', 'Claim', '[\"Medical\",\"Life\"]', 'Disapproved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(99, 55, 'Arden Wilderman', 'Accuro', '77274', 'Claim', '[\"TPD\",\"IP\",\"Trauma\"]', 'Disapproved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(100, 28, 'Lolita Lueilwitz DDS', 'Partners Life', '65972', 'Pre-approval', '[\"Trauma\",\"Medical\",\"IP\"]', 'Partially Approved', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(101, 26, 'Aiyana Boehm DVM', 'AIA', '123', 'Claim', '[\"Life\"]', 'In Progress', '2021-10-13 06:07:12', '2021-10-13 06:07:12'),
(102, 26, 'Sample Sample', 'AIA', '23131', 'Pre-approval', '[\"Life\"]', 'In Progress', '2021-10-20 05:49:06', '2021-10-20 05:49:06'),
(103, 26, 'Juan dela Cruz', 'AIA', '000', 'Pre-approval', '[\"Life\"]', 'In Progress', '2021-10-21 06:17:04', '2021-10-21 06:17:04'),
(104, 26, 'Jose Rizel', 'AIA', '000', 'Pre-approval', '[\"Life\",\"Trauma\",\"Medical\"]', 'In Progress', '2021-10-22 03:32:05', '2021-10-22 03:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `claim_notes`
--

CREATE TABLE `claim_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `claim_notes`
--

INSERT INTO `claim_notes` (`id`, `claim_id`, `created_by`, `notes`, `created_at`, `updated_at`) VALUES
(1, 59, 1, 'Test notes 1', '2021-10-11 08:25:26', '2021-10-11 08:25:26'),
(3, 101, 1, 'Test', '2021-10-13 06:07:12', '2021-10-13 06:07:12'),
(4, 101, 1, 'Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - v', '2021-10-13 06:26:59', '2021-10-13 06:26:59'),
(5, 101, 1, 'Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - ', '2021-10-13 06:27:04', '2021-10-13 06:27:04'),
(6, 101, 1, 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ', '2021-10-14 00:02:14', '2021-10-14 00:02:14'),
(7, 102, 1, 'Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - ', '2021-10-20 05:49:07', '2021-10-20 05:49:07'),
(8, 102, 1, 'Sample - Sample - Sample - Sample - Sample - Sample - Sample - ', '2021-10-20 05:50:03', '2021-10-20 05:50:03'),
(9, 103, 1, 'Test note', '2021-10-21 06:17:04', '2021-10-21 06:17:04'),
(10, 104, 1, 'The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. ', '2021-10-22 03:32:05', '2021-10-22 03:32:05'),
(11, 104, 1, 'The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. ', '2021-10-22 03:32:25', '2021-10-22 03:32:25'),
(12, 104, 1, 'The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. ', '2021-10-22 03:32:31', '2021-10-22 03:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complainant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complainee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complainee_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `policy_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_at` date NOT NULL,
  `acknowledged_at` date NOT NULL,
  `nature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tier` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `complainant`, `label`, `complainee`, `complainee_label`, `policy_number`, `insurer`, `received_at`, `acknowledged_at`, `nature`, `tier`, `created_at`, `updated_at`) VALUES
(1, 'Lemuel Daugherty', 'External Broker', '', '', NULL, NULL, '1977-05-25', '1995-04-30', 'Service (Management)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Resolved\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(2, 'Andrew Bogan', 'Business Partner', '', '', NULL, NULL, '2004-04-21', '2021-09-08', 'Contract', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Invalid\",\"adviser_id\":\"11\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(3, 'Nathan Abbott', 'Prospect', '', '', NULL, 'NIB', '2019-12-05', '2010-07-03', 'Conduct', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(4, 'Shayne Zemlak', 'Others', '', '', NULL, NULL, '1972-03-23', '1985-03-15', 'Conduct', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Failed\",\"adviser_id\":\"12\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(5, 'Kaley Hessel', 'Others', '', '', NULL, NULL, '2017-11-02', '2005-02-06', 'Contract', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(6, 'Gaetano Orn PhD', 'Client', '', '', '83947', 'AIA', '1972-07-23', '2011-08-19', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"13\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(7, 'Krista King', 'Business Partner', '', '', NULL, NULL, '2015-05-01', '2006-06-24', 'Conduct', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"14\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(8, 'Prof. Una Feeney Jr.', 'Contractor', '', '', NULL, NULL, '2016-09-02', '1970-01-27', 'Service (Management)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Retracted\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(9, 'Walter Halvorson', 'Contractor', '', '', NULL, NULL, '1971-12-12', '2005-07-15', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(10, 'Rylee Carter', 'Client', '', '', '53859', 'N/A', '1993-12-05', '2019-10-11', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Pending\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(11, 'Mr. Rodrigo Boyer DDS', 'Client', '', '', '95870', 'N/A', '2010-04-15', '1986-04-03', 'Conduct', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(12, 'Roxane Breitenberg', 'Prospect', '', '', NULL, 'AIA', '1975-01-24', '1979-09-17', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(13, 'Dr. Clementina Weimann', 'Prospect', '', '', NULL, 'AIA', '1997-02-28', '2010-06-15', 'Conduct', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Pending\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(14, 'Jasmin Balistreri II', 'Client', '', '', '52246', 'CIGNA', '1991-08-22', '1986-05-22', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Failed\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(15, 'Prof. Eve Koss Jr.', 'Government', '', '', NULL, NULL, '2002-03-31', '2016-07-15', 'Service (Management)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Invalid\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(16, 'Sanford Kunde', 'Business Partner', '', '', NULL, NULL, '1985-06-16', '2014-01-17', 'Conduct', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Retracted\",\"adviser_id\":\"15\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(17, 'Vern Vandervort DDS', 'N/A', '', '', NULL, NULL, '1979-06-28', '2005-11-10', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Retracted\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(18, 'Newton Pagac', 'Prospect', '', '', NULL, 'AIA', '2018-10-25', '2019-10-31', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Pending\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(19, 'Karli Bednar', 'Client', '', '', '46449', 'NIB', '2009-11-16', '1998-07-18', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"16\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(20, 'Helen Borer II', 'Business Partner', '', '', NULL, NULL, '2003-04-26', '1973-12-09', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Retracted\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(21, 'Miss Mittie Kassulke Jr.', 'Contractor', '', '', NULL, NULL, '1982-07-11', '2020-01-21', 'Conduct', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Invalid\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(22, 'Prof. Jabari Durgan II', 'Client', '', '', '12534', 'N/A', '1973-01-04', '1982-01-09', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"17\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(23, 'Ms. Breanna Lemke', 'Client', '', '', '80615', 'N/A', '2015-08-24', '1984-03-16', 'Service (Management)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"18\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(24, 'Yolanda Baumbach', 'Government', '', '', NULL, NULL, '2005-02-15', '2011-08-22', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Retracted\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(25, 'Laurianne Cremin DDS', 'Others', '', '', NULL, NULL, '2020-05-28', '2021-05-28', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(26, 'Amelie Lynch', 'Employee', '', '', NULL, NULL, '1979-03-27', '2002-10-02', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(27, 'Emelie Metz', 'Adviser', '', '', NULL, NULL, '1996-12-14', '1981-11-25', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(28, 'Arden Bergnaum', 'Others', '', '', NULL, NULL, '2017-06-29', '1980-06-20', 'Conduct', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Failed\",\"adviser_id\":\"19\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(29, 'Micah Abbott', 'Client', '', '', '56270', 'NIB', '1983-01-09', '1974-11-26', 'Contract', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"20\"}', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(30, 'Dock Lowe', 'N/A', '', '', NULL, NULL, '1997-05-11', '2020-07-04', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(31, 'Gladys Graham', 'Adviser', '', '', NULL, NULL, '1981-11-20', '2003-01-20', 'Conduct', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(32, 'Dr. Gabriella Hagenes MD', 'Others', '', '', NULL, NULL, '1976-10-19', '1996-01-06', 'Service (Management)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(33, 'Mr. Hilton Hudson II', 'Others', '', '', NULL, NULL, '2003-11-22', '2002-04-23', 'Service (Management)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"21\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(34, 'Miss Juana Osinski Sr.', 'Adviser', '', '', NULL, NULL, '1994-08-01', '1989-06-24', 'Conduct', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(35, 'Dr. Rosario Jerde I', 'Adviser', '', '', NULL, NULL, '1983-08-09', '2002-01-14', 'Contract', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Pending\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(36, 'Ryleigh Abernathy DVM', 'Employee', '', '', NULL, NULL, '2009-02-24', '1981-01-25', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Retracted\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(37, 'Martine Powlowski', 'Client', '', '', '20006', 'AIA', '1998-12-01', '2008-10-16', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(38, 'Wilfred Monahan', 'External Broker', '', '', NULL, NULL, '1985-05-13', '1972-07-26', 'Contract', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Pending\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(39, 'Patsy Yundt', 'Prospect', '', '', NULL, 'Accuro', '2015-10-03', '2010-10-07', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(40, 'Abraham Goldner', 'Employee', '', '', NULL, NULL, '1979-12-15', '1971-10-30', 'Service (Management)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"22\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(41, 'Ms. Jodie Towne', 'Employee', '', '', NULL, NULL, '1987-11-07', '2005-12-27', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(42, 'Seamus Bernhard III', 'External Broker', '', '', NULL, NULL, '2013-01-27', '2017-03-25', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"23\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(43, 'Bridgette Kuvalis II', 'Prospect', '', '', NULL, 'CIGNA', '1986-12-19', '1990-03-31', 'Contract', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(44, 'Dr. Kris Stroman Jr.', 'N/A', '', '', NULL, NULL, '1975-12-02', '1996-05-25', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(45, 'Murray Kutch', 'Others', '', '', NULL, NULL, '2014-02-05', '2000-11-02', 'Conduct', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Pending\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(46, 'Ally Dickinson', 'Government', '', '', NULL, NULL, '1992-06-15', '2004-02-10', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Invalid\",\"adviser_id\":\"24\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(47, 'Lucienne Konopelski', 'Client', '', '', '64812', 'Fidelity Life', '1975-02-14', '1976-07-08', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"25\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(48, 'Xavier Oberbrunner', 'Client', '', '', '60355', 'CIGNA', '2012-02-22', '2017-10-17', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Invalid\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(49, 'Phoebe Bednar', 'Business Partner', '', '', NULL, NULL, '1988-01-27', '1973-01-16', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Invalid\",\"adviser_id\":\"26\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(50, 'Mr. Vince Heaney II', 'External Broker', '', '', NULL, NULL, '1984-06-18', '1996-08-02', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Invalid\",\"adviser_id\":\"27\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(51, 'Julien Heller', 'Contractor', '', '', NULL, NULL, '1999-03-08', '1994-07-26', 'Conduct', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Failed\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(52, 'Ole Luettgen DVM', 'Contractor', '', '', NULL, NULL, '1986-05-11', '1976-09-11', 'Conduct', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"28\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(53, 'Junius Weber', 'Business Partner', '', '', NULL, NULL, '2000-04-05', '1996-08-24', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(54, 'Donny Gusikowski', 'Business Partner', '', '', NULL, NULL, '1977-11-09', '2002-07-20', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"29\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(55, 'Ms. Elsie Gorczany MD', 'Business Partner', '', '', NULL, NULL, '2016-04-28', '1997-12-22', 'Conduct', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Invalid\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(56, 'Myrtis Hirthe', 'Government', '', '', NULL, NULL, '1975-11-09', '1984-10-23', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"30\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(57, 'Clare Connelly', 'Others', '', '', NULL, NULL, '1987-05-27', '2003-06-19', 'Conduct', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"31\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(58, 'Tremayne Ankunding', 'Contractor', '', '', NULL, NULL, '2015-11-24', '2005-03-20', 'Service (Management)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(59, 'Georgiana Stokes', 'N/A', '', '', NULL, NULL, '1986-03-15', '2009-05-11', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(60, 'Gene Cummerata', 'N/A', '', '', NULL, NULL, '1978-06-17', '2000-07-20', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(61, 'Cletus Wilkinson', 'Contractor', '', '', NULL, NULL, '2005-04-29', '1972-04-15', 'Contract', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(62, 'Dr. Parker Rowe', 'Contractor', '', '', NULL, NULL, '1983-11-06', '1994-08-31', 'Contract', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(63, 'Arnulfo Heller', 'Business Partner', '', '', NULL, NULL, '2007-08-01', '1983-02-18', 'Service (Management)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Retracted\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(64, 'Mrs. Diana Kub', 'Others', '', '', NULL, NULL, '1980-01-24', '1971-10-18', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"32\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(65, 'Dr. Moises Dooley DDS', 'External Broker', '', '', NULL, NULL, '1992-12-13', '1994-04-17', 'Conduct', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Invalid\",\"adviser_id\":\"33\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(66, 'Hailie Armstrong DDS', 'Government', '', '', NULL, NULL, '2001-05-19', '2017-11-12', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"34\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(67, 'Kira Pollich IV', 'Others', '', '', NULL, NULL, '2000-05-27', '2015-11-26', 'Conduct', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(68, 'Eudora McKenzie MD', 'Others', '', '', NULL, NULL, '1997-05-27', '1989-10-30', 'Contract', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Failed\",\"adviser_id\":\"35\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(69, 'Felix Padberg V', 'External Broker', '', '', NULL, NULL, '1976-11-12', '2011-09-28', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(70, 'Ms. Treva Toy Sr.', 'External Broker', '', '', NULL, NULL, '1993-06-17', '1997-09-10', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(71, 'Dr. Lynn Lowe DVM', 'Contractor', '', '', NULL, NULL, '2021-02-02', '1999-06-24', 'Service (Management)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(72, 'Elfrieda Trantow', 'Employee', '', '', NULL, NULL, '1977-11-09', '1972-03-22', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(73, 'Lauren Upton', 'External Broker', '', '', NULL, NULL, '1992-07-16', '1978-03-23', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(74, 'Dr. Jayson Windler MD', 'Client', '', '', '83175', 'N/A', '2012-09-21', '1981-12-27', 'Conduct', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Retracted\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(75, 'Dr. Holly Metz', 'Adviser', '', '', NULL, NULL, '1989-05-14', '2017-11-20', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Failed\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(76, 'Alec Larkin', 'Government', '', '', NULL, NULL, '1990-09-25', '1992-03-17', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Invalid\",\"adviser_id\":\"36\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(77, 'Eloisa Kulas', 'N/A', '', '', NULL, NULL, '2020-05-07', '2008-05-17', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(78, 'Mr. George Lehner V', 'Others', '', '', NULL, NULL, '2004-12-15', '2000-08-13', 'Service (Management)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(79, 'Dr. Alexzander Ryan', 'Others', '', '', NULL, NULL, '1989-04-10', '1977-07-23', 'Contract', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Failed\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(80, 'Adriana Thompson', 'Contractor', '', '', NULL, NULL, '1992-11-17', '1999-05-13', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Retracted\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(81, 'Mrs. Helga Lesch', 'Adviser', '', '', NULL, NULL, '1995-09-27', '1997-03-13', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(82, 'Erwin Zemlak', 'Government', '', '', NULL, NULL, '2019-07-04', '2021-06-07', 'Contract', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(83, 'Imogene McLaughlin', 'Client', '', '', '19028', 'NZFunds', '2012-05-21', '1998-03-23', 'Conduct', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"37\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(84, 'Rozella Jacobi', 'Client', '', '', '38123', 'CIGNA', '2003-06-29', '2020-09-10', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Pending\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(85, 'Anais Hills', 'Business Partner', '', '', NULL, NULL, '1984-03-26', '2005-07-06', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(86, 'Kristopher Rodriguez', 'Client', '', '', '53140', 'CIGNA', '1984-02-06', '2010-06-20', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(87, 'Moshe O\'Kon', 'Others', '', '', NULL, NULL, '2011-10-27', '1988-12-12', 'Contract', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(88, 'Dr. Alberto Pollich III', 'Business Partner', '', '', NULL, NULL, '1976-02-27', '1992-01-02', 'Service (Management)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(89, 'Dr. Ransom Zemlak', 'Client', '', '', '04808', 'Fidelity Life', '2007-06-26', '2004-01-23', 'Service (Management)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(90, 'Jeff Macejkovic', 'N/A', '', '', NULL, NULL, '1974-01-27', '1977-07-03', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(91, 'Autumn Schoen', 'Government', '', '', NULL, NULL, '1982-10-09', '1977-03-27', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(92, 'Iliana Hamill', 'N/A', '', '', NULL, NULL, '1998-08-08', '2010-09-24', 'Contract', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(93, 'Destini Schulist', 'External Broker', '', '', NULL, NULL, '2003-10-08', '2007-06-20', 'Service (Management)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"38\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(94, 'Russ Effertz', 'Employee', '', '', NULL, NULL, '1990-02-12', '2004-03-10', 'Service (Management)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"39\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(95, 'Franco Fritsch', 'Others', '', '', NULL, NULL, '1987-11-05', '1972-04-27', 'Contract', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(96, 'Beaulah Hermiston', 'Employee', '', '', NULL, NULL, '1984-11-28', '1992-01-28', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(97, 'Petra Jacobson', 'Prospect', '', '', NULL, 'Partners Life', '2010-06-09', '1983-07-06', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Failed\",\"adviser_id\":\"40\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(98, 'Rhoda Grant', 'Employee', '', '', NULL, NULL, '2006-09-24', '2009-09-21', 'Service (Management)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(99, 'Prof. Dorcas Powlowski III', 'Employee', '', '', NULL, NULL, '1982-04-25', '1977-01-15', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Failed\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(100, 'Asa Kub', 'External Broker', '', '', NULL, NULL, '2006-01-13', '2007-05-08', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Retracted\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(101, 'Buster Funk V', 'Employee', '', '', NULL, NULL, '1994-09-24', '1990-12-02', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(102, 'Graciela Jaskolski II', 'Government', '', '', NULL, NULL, '1991-06-03', '1970-12-14', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Retracted\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(103, 'Stefan Bins', 'Business Partner', '', '', NULL, NULL, '1970-11-29', '1988-09-21', 'Contract', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(104, 'Mikel Casper', 'External Broker', '', '', NULL, NULL, '2018-07-15', '1988-03-08', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"41\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(105, 'Mr. Brendan Kautzer', 'Government', '', '', NULL, NULL, '2002-11-24', '2007-08-17', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(106, 'Enrique Carroll', 'Government', '', '', NULL, NULL, '1993-12-12', '1981-07-04', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Retracted\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(107, 'Demetrius Schamberger', 'Business Partner', '', '', NULL, NULL, '1978-01-03', '2001-09-25', 'Contract', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(108, 'Carlotta Conn', 'N/A', '', '', NULL, NULL, '2000-05-23', '1981-10-11', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"42\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(109, 'Davon Champlin', 'Adviser', '', '', NULL, NULL, '1982-03-18', '1976-07-26', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(110, 'Prof. Theo Ferry', 'Adviser', '', '', NULL, NULL, '2021-01-23', '1997-06-27', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(111, 'Daphney Lesch III', 'Business Partner', '', '', NULL, NULL, '1980-02-07', '2020-11-17', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Resolved\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(112, 'Miss Marilyne Jacobs', 'Employee', '', '', NULL, NULL, '1974-09-04', '1974-12-20', 'Conduct', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(113, 'Prof. Carlo Olson I', 'Others', '', '', NULL, NULL, '1970-12-12', '1999-09-28', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Retracted\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(114, 'Myriam Vandervort DDS', 'External Broker', '', '', NULL, NULL, '1988-05-22', '1990-11-28', 'Service (Management)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"43\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(115, 'Reymundo Lowe DDS', 'Employee', '', '', NULL, NULL, '1970-11-16', '1996-01-17', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Retracted\",\"adviser_id\":\"44\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(116, 'Mariana Johns Jr.', 'Government', '', '', NULL, NULL, '2021-05-30', '1997-11-17', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(117, 'Abraham Morissette', 'Adviser', '', '', NULL, NULL, '1990-09-21', '2012-07-22', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"45\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(118, 'Buster Zulauf', 'Client', '', '', '69007', 'NZFunds', '1974-11-01', '1998-05-08', 'Conduct', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(119, 'Rico Nader', 'Employee', '', '', NULL, NULL, '1981-03-08', '2013-04-28', 'Conduct', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Retracted\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(120, 'Dr. Cassidy Lakin DVM', 'Business Partner', '', '', NULL, NULL, '1989-11-10', '1994-02-10', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(121, 'Margarett Von', 'External Broker', '', '', NULL, NULL, '1970-01-08', '1978-11-13', 'Service (Management)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Retracted\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(122, 'Dr. Alexzander Kris PhD', 'N/A', '', '', NULL, NULL, '2006-02-11', '1971-03-06', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(123, 'Kali Lynch I', 'Contractor', '', '', NULL, NULL, '2010-09-17', '1985-02-20', 'Contract', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(124, 'Margret Schamberger', 'Government', '', '', NULL, NULL, '2014-03-16', '1980-12-24', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Failed\",\"adviser_id\":\"46\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(125, 'Cordie Rolfson', 'Business Partner', '', '', NULL, NULL, '2008-03-20', '1990-02-26', 'Contract', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"47\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(126, 'Dr. Margaret Cronin DDS', 'Contractor', '', '', NULL, NULL, '2004-04-07', '1993-06-18', 'Conduct', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(127, 'Mr. Josh Jones', 'Employee', '', '', NULL, NULL, '1998-12-03', '1989-11-17', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(128, 'Velma Bode', 'Contractor', '', '', NULL, NULL, '1988-05-27', '2002-09-01', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Failed\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(129, 'Macie Shields', 'Contractor', '', '', NULL, NULL, '2008-10-07', '1971-03-17', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Failed\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(130, 'Prof. Cole Okuneva', 'Prospect', '', '', NULL, 'Partners Life', '1991-10-14', '2003-11-03', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Invalid\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(131, 'Prof. Grace Bradtke PhD', 'Contractor', '', '', NULL, NULL, '1975-03-17', '1996-10-11', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(132, 'Ms. Winona Hyatt PhD', 'Prospect', '', '', NULL, 'Partners Life', '2014-06-13', '2014-03-27', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(133, 'Prof. Berta Gulgowski', 'Business Partner', '', '', NULL, NULL, '2018-03-12', '1984-08-25', 'Contract', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(134, 'Gunner Crooks', 'N/A', '', '', NULL, NULL, '2000-05-22', '1988-07-12', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(135, 'Laurine Jacobi', 'Others', '', '', NULL, NULL, '2006-01-16', '2013-07-28', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"48\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(136, 'Newton Hamill', 'Adviser', '', '', NULL, NULL, '1996-05-09', '1986-02-27', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(137, 'Dr. Issac Kozey Jr.', 'N/A', '', '', NULL, NULL, '2003-07-15', '2017-07-09', 'Contract', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Invalid\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(138, 'Cloyd Okuneva', 'External Broker', '', '', NULL, NULL, '2007-09-11', '1974-03-18', 'Contract', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Retracted\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(139, 'Palma Johnston', 'Adviser', '', '', NULL, NULL, '1995-05-19', '2009-09-15', 'Service (Management)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"49\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(140, 'Erin Feil DDS', 'N/A', '', '', NULL, NULL, '1992-10-06', '2015-10-25', 'Contract', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Retracted\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(141, 'Sylvester Rodriguez III', 'Adviser', '', '', NULL, NULL, '2017-07-13', '2004-05-13', 'Contract', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(142, 'Mr. Lucas Christiansen', 'Client', '', '', '81898', 'AIA', '1998-06-30', '2002-11-13', 'Conduct', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"50\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(143, 'Madie Kulas DVM', 'Prospect', '', '', NULL, 'CIGNA', '2016-11-16', '2004-12-23', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Retracted\",\"adviser_id\":\"51\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(144, 'Dereck Swift', 'Contractor', '', '', NULL, NULL, '2014-06-07', '2016-04-29', 'Service (Management)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(145, 'Benny Hintz', 'Employee', '', '', NULL, NULL, '2005-05-19', '1999-11-29', 'Conduct', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(146, 'Lera Kutch', 'N/A', '', '', NULL, NULL, '1977-08-05', '2005-12-02', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Retracted\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(147, 'Wilson Adams', 'Others', '', '', NULL, NULL, '1985-04-23', '2000-04-23', 'Conduct', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Resolved\",\"adviser_id\":\"52\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(148, 'Alaina Grant', 'Contractor', '', '', NULL, NULL, '1972-11-08', '2012-01-19', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(149, 'Tavares Wintheiser III', 'Employee', '', '', NULL, NULL, '1983-08-26', '1970-03-24', 'Contract', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(150, 'Dusty Hoppe', 'N/A', '', '', NULL, NULL, '1994-11-06', '1972-11-23', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"53\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(151, 'Bettie Olson', 'Others', '', '', NULL, NULL, '1991-02-19', '1971-04-27', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(152, 'Gabrielle Rohan DDS', 'Government', '', '', NULL, NULL, '2013-06-30', '1976-09-22', 'Service (Management)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(153, 'Laila Medhurst I', 'N/A', '', '', NULL, NULL, '1983-03-25', '2010-07-19', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Pending\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(154, 'Janice Eichmann', 'N/A', '', '', NULL, NULL, '1989-10-15', '2021-05-09', 'Service (Management)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(155, 'Domenica Towne Sr.', 'External Broker', '', '', NULL, NULL, '1997-06-13', '1994-05-31', 'Service (Management)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"54\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(156, 'Darren Hoppe', 'Adviser', '', '', NULL, NULL, '2004-03-11', '1985-07-04', 'Contract', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(157, 'Lonzo Heller DVM', 'External Broker', '', '', NULL, NULL, '1984-01-24', '1998-02-22', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(158, 'Allan Wolff V', 'Client', '', '', '86915', 'AIA', '2009-07-03', '2012-12-03', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"55\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(159, 'Michelle Stanton', 'External Broker', '', '', NULL, NULL, '1975-08-06', '1989-10-15', 'Conduct', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(160, 'Miss Jacklyn Hartmann II', 'N/A', '', '', NULL, NULL, '1975-03-07', '1997-03-12', 'Conduct', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Invalid\",\"adviser_id\":\"56\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(161, 'Bernice Schroeder', 'External Broker', '', '', NULL, NULL, '1994-03-15', '2018-10-20', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(162, 'Prof. Felipa Parker', 'Business Partner', '', '', NULL, NULL, '1981-07-25', '1986-07-06', 'Contract', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Failed\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(163, 'Caterina Considine', 'Adviser', '', '', NULL, NULL, '2008-01-15', '2021-04-08', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(164, 'Kareem Schaden', 'Prospect', '', '', NULL, 'NZFunds', '1991-02-03', '1989-12-01', 'Contract', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Failed\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(165, 'Georgette Bernhard', 'Employee', '', '', NULL, NULL, '2016-08-25', '2018-01-11', 'Conduct', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"57\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(166, 'Mrs. Carrie Lehner', 'External Broker', '', '', NULL, NULL, '2016-11-30', '2017-06-26', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"58\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(167, 'Eulah Robel', 'Prospect', '', '', NULL, 'AIA', '2002-05-17', '1975-01-31', 'Conduct', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"59\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(168, 'Prof. Llewellyn Gerhold', 'Client', '', '', '47423', 'CIGNA', '1987-12-23', '1997-05-18', 'Contract', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(169, 'Dr. Delphine Haley DVM', 'Business Partner', '', '', NULL, NULL, '2001-12-17', '1987-08-30', 'Conduct', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Failed\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(170, 'Mr. Turner Goldner', 'Government', '', '', NULL, NULL, '1986-04-06', '1974-10-30', 'Contract', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Retracted\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(171, 'Kim Terry DVM', 'Adviser', '', '', NULL, NULL, '1984-02-01', '2013-11-02', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(172, 'Mrs. Josephine Koelpin II', 'Others', '', '', NULL, NULL, '1981-01-25', '2016-08-10', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Pending\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(173, 'Alyson Sporer DDS', 'Employee', '', '', NULL, NULL, '1998-10-05', '1989-12-27', 'Service (Management)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(174, 'Dallin Rogahn', 'Government', '', '', NULL, NULL, '1988-06-01', '2018-01-09', 'Conduct', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Invalid\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(175, 'William Lebsack', 'External Broker', '', '', NULL, NULL, '1985-02-10', '2006-07-03', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"60\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(176, 'Wilbert Jones Sr.', 'Prospect', '', '', NULL, 'NZFunds', '2008-07-22', '1987-07-03', 'Service (Management)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Invalid\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(177, 'Zora Ryan II', 'Government', '', '', NULL, NULL, '2008-05-23', '1970-11-01', 'Contract', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Pending\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(178, 'Elta Hermiston', 'Others', '', '', NULL, NULL, '1981-01-31', '1974-10-13', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(179, 'Katelyn Von', 'Prospect', '', '', NULL, 'NIB', '2002-01-24', '2016-12-02', 'Service (Management)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(180, 'Mr. John Bradtke DDS', 'Government', '', '', NULL, NULL, '2008-06-21', '1983-12-18', 'Service (Marketer)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(181, 'Prof. Agustin Morar PhD', 'Client', '', '', '94840', 'Partners Life', '2014-12-22', '2011-01-20', 'Contract', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"61\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(182, 'Prof. Lillian Zemlak DDS', 'Client', '', '', '61245', 'NZFunds', '2008-09-01', '1974-12-12', 'Contract', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(183, 'Mr. Jakob Ferry', 'Adviser', '', '', NULL, NULL, '1973-11-24', '2018-04-14', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"62\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(184, 'Dr. Oceane Kunde I', 'External Broker', '', '', NULL, NULL, '1989-08-27', '2020-01-10', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Retracted\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(185, 'Dr. Anastacio DuBuque DVM', 'External Broker', '', '', NULL, NULL, '2006-10-28', '2003-07-30', 'Service (Management)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(186, 'Jedidiah Pouros', 'Prospect', '', '', NULL, 'Accuro', '1993-10-13', '2001-05-19', 'Service (Management)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Pending\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(187, 'Prof. Elouise Wilderman', 'N/A', '', '', NULL, NULL, '1970-08-01', '1970-02-10', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Deadlock\",\"adviser_id\":\"63\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(188, 'Amir Walsh Sr.', 'Others', '', '', NULL, NULL, '2000-09-24', '2014-10-25', 'Service (Marketer)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Failed\",\"adviser_id\":\"64\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(189, 'Deondre Ruecker', 'Client', '', '', '23046', 'NZFunds', '1986-03-27', '1997-03-12', 'Service (Adviser)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(190, 'Vivian Brekke', 'Contractor', '', '', NULL, NULL, '2002-06-06', '2005-11-27', 'Conduct', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(191, 'Dr. Jalon Wuckert PhD', 'Adviser', '', '', NULL, NULL, '1999-12-21', '2004-02-07', 'Service (Admin)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(192, 'Llewellyn Kulas', 'Client', '', '', '00903', 'NZFunds', '1995-09-20', '2019-05-17', 'Service (Management)', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Pending\",\"adviser_id\":\"65\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(193, 'Shanelle Turner', 'Business Partner', '', '', NULL, NULL, '1991-03-26', '1981-12-15', 'Service (Admin)', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Resolved\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(194, 'Roberta Greenholt', 'Prospect', '', '', NULL, 'CIGNA', '1981-02-22', '1997-07-12', 'Service (Adviser)', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Invalid\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(195, 'Kameron Rau', 'Employee', '', '', NULL, NULL, '1978-03-05', '2001-05-30', 'Conduct', '{\"tier\":2,\"handler\":\"Staff\",\"status\":\"Failed\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(196, 'Fanny Batz', 'External Broker', '', '', NULL, NULL, '2004-07-12', '2017-06-16', 'Service (Management)', '{\"tier\":1,\"handler\":\"Management\",\"status\":\"Pending\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(197, 'Shany Kuphal', 'Contractor', '', '', NULL, NULL, '1983-01-02', '2012-03-20', 'Contract', '{\"tier\":1,\"handler\":\"Staff\",\"status\":\"Failed\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(198, 'Ms. Roberta Ratke', 'Client', '', '', '99342', 'AIA', '1972-02-03', '1993-03-03', 'Service (Management)', '{\"tier\":2,\"handler\":\"Management\",\"status\":\"Deadlock\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(199, 'Ms. Summer Mayer', 'External Broker', '', '', NULL, NULL, '1976-03-03', '2006-09-08', 'Conduct', '{\"tier\":1,\"handler\":\"Adviser\",\"status\":\"Failed\",\"adviser_id\":\"66\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(200, 'Cayla Hane', 'N/A', '', '', NULL, NULL, '2019-03-14', '2013-07-26', 'Conduct', '{\"tier\":2,\"handler\":\"Adviser\",\"status\":\"Invalid\",\"adviser_id\":\"67\"}', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(201, 'Abraham Goldner', 'Client', 'Test Complainee', 'Client', '123456', 'AIA', '2021-09-21', '2021-09-22', 'Service (Adviser)', '{\"completed_at\":\"\",\"tier\":\"1\",\"handler\":\"Management\",\"status\":\"Pending\",\"adviser_id\":\"1\",\"summary\":\"test summary\"}', '2021-09-21 07:07:14', '2021-10-06 00:36:36'),
(202, 'Abraham Goldner', 'Client', 'Compliant Test', 'Adviser', '115556', 'AIA', '2021-10-06', '2021-10-06', 'Service (Adviser)', '{\"completed_at\":\"2021-10-06\",\"handler\":\"Management\",\"tier\":\"1\",\"adviser_id\":\"1\",\"status\":\"Pending\",\"summary\":\"Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test v\"}', '2021-10-06 01:05:24', '2021-10-06 01:05:24'),
(203, 'Noli de Castro', 'Client', 'Test Complainee', 'Client', '111', 'AIA', '2021-10-07', '2021-10-07', 'Service (Adviser)', '{\"completed_at\":\"\",\"handler\":\"Management\",\"tier\":\"1\",\"adviser_id\":\"1\",\"status\":\"Pending\",\"summary\":\"Test Summary\"}', '2021-10-07 04:59:58', '2021-10-07 04:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_notes`
--

CREATE TABLE `complaint_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaint_notes`
--

INSERT INTO `complaint_notes` (`id`, `complaint_id`, `created_by`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Ipsa nesciunt modi aut. Nostrum excepturi voluptatem in fugiat sunt officiis at.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(2, 3, 3, 'Beatae tempora voluptas nulla voluptatibus. Mollitia provident dolore error possimus. Tempore alias modi ut magni libero.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(3, 5, 3, 'Ipsum in voluptatem quaerat nobis animi consectetur. Est eum eum labore quod. Animi nam laborum voluptatem laudantium totam. Officiis consequatur quia dicta quia illum.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(4, 7, 2, 'Molestiae dolorum numquam doloribus et unde nostrum distinctio. Voluptates officia vero ullam ex quia perspiciatis nihil molestiae. Nam rerum dolorem sed omnis et cum molestias. Perspiciatis in autem aliquid quae.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(5, 9, 2, 'Modi sed sint aliquid nisi. Fuga sint libero qui quo occaecati corrupti aut est. Exercitationem libero id quibusdam odio est ut.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(6, 11, 1, 'Ad et dolores ut sit asperiores aut. Cumque sequi voluptatum quasi provident delectus. Non voluptatem occaecati voluptatum perferendis.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(7, 13, 1, 'Ad odio quisquam illum. Consequatur rerum odit et sint eum quis. Quibusdam culpa beatae labore qui.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(8, 15, 1, 'Dolores modi quia eveniet in exercitationem et. Facilis accusamus tenetur rem eum. Quibusdam dolorem sint expedita non delectus. Suscipit porro inventore ratione magnam.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(9, 17, 1, 'Sapiente cum et voluptas facilis magnam nostrum. Velit expedita non hic tenetur earum. Dolor ut qui velit dolorum minus esse repellendus odio.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(10, 19, 2, 'Quod sint qui excepturi similique quae. Voluptatem harum omnis neque occaecati. Molestiae ea dolores dolorem est excepturi modi.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(11, 21, 2, 'Aut molestiae fuga aut adipisci. Labore recusandae nostrum explicabo qui minima ut. Expedita iste ut quaerat. Enim deleniti saepe aut vitae doloremque error.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(12, 23, 3, 'Quam est veniam quia optio sit. Vel itaque repellat reprehenderit. Exercitationem itaque nulla pariatur sed eaque sint. Autem sunt odio est est iusto.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(13, 25, 2, 'Nesciunt animi distinctio dolores quis quasi voluptatum ut. Rem et dolorem harum deleniti ipsum quis. Aspernatur at est neque accusamus eos esse qui.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(14, 27, 1, 'Voluptatem quae id ex deleniti dolores molestiae qui. Error qui repudiandae tenetur unde enim sed vel. Dolorem praesentium accusantium nostrum et blanditiis quia quia aut. Minima nisi saepe aut a. Incidunt et consectetur reprehenderit tenetur in nemo dolorem.', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(15, 29, 2, 'Et libero ut sapiente earum. Accusantium aut maxime natus sit. Voluptatem optio quisquam omnis non molestiae. Quo ad minima et ea. Esse rerum dolorum et officiis ad.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(16, 31, 2, 'Et quaerat eos voluptatem. Aperiam vitae nisi natus id vero. Possimus non nostrum repudiandae natus.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(17, 33, 3, 'Eveniet temporibus magnam placeat molestiae. Aut nam veritatis quis unde voluptas eligendi in quas. Error dolor ut commodi et sed aut voluptatum occaecati.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(18, 35, 1, 'Animi magnam facere amet recusandae. Et non ut dicta sint.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(19, 37, 1, 'Cupiditate et quo dolorem velit quidem minima aut. Consequatur aperiam molestiae illo. Quam qui velit iure dolorum exercitationem quia. Modi omnis fugit minus aut ut.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(20, 39, 2, 'Qui nihil voluptatem nemo culpa mollitia ullam impedit error. Velit ut magni libero aut quis quod qui. Nisi qui ipsum eaque consequuntur nesciunt. Ex modi totam laborum minima consequatur alias inventore.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(21, 41, 1, 'Voluptatem recusandae incidunt odit aut. Quaerat quod aliquid harum. Laboriosam consequatur adipisci molestias velit consectetur accusantium.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(22, 43, 3, 'Optio rerum accusamus omnis nostrum necessitatibus tempore. Officia non pariatur maiores rerum voluptatem. Reiciendis doloremque harum rerum voluptates voluptate accusantium omnis. Ut iure itaque accusamus nihil aut esse.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(23, 45, 2, 'Ducimus illum quod aspernatur in omnis debitis. Minima minima quia vel sit. Assumenda culpa vel maxime qui dolor. Rerum rerum nulla quia delectus.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(24, 47, 2, 'Nesciunt fugit consectetur quibusdam quos. Minus ducimus pariatur est dolor necessitatibus.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(25, 49, 3, 'Veniam minima laboriosam maxime sunt consectetur et. Vitae corporis voluptas temporibus hic repellendus. Enim earum et quo blanditiis voluptas.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(26, 51, 2, 'Ipsam nihil et et voluptatem quia. Reprehenderit dolores autem iste est sapiente voluptate quibusdam veniam. Itaque autem doloribus doloribus voluptatibus qui voluptatem labore.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(27, 53, 1, 'Nostrum repellendus enim voluptatem voluptatibus eaque. Illum sequi architecto laborum maiores at. Et distinctio eveniet optio atque magni.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(28, 55, 2, 'Commodi aspernatur corporis aut aut qui autem. Vel excepturi voluptates voluptatem assumenda vel natus fugit. Voluptatem qui quisquam debitis nihil deserunt aliquid. Perspiciatis odit ut sit neque culpa pariatur placeat iure.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(29, 57, 1, 'Dicta voluptatem a quae enim dolor laborum eius. Labore modi soluta iste doloribus nostrum. Ea dolores voluptates ut modi deserunt.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(30, 59, 2, 'Ut perspiciatis laboriosam odio voluptas. Sed quisquam quibusdam impedit assumenda odio ex quo repudiandae. Adipisci repudiandae officiis vero et omnis.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(31, 61, 3, 'Perspiciatis rerum autem quod quaerat sed. Cupiditate eligendi est laborum sapiente. Dolores qui hic quidem inventore molestiae asperiores quia est. Itaque odit sequi unde dignissimos. Sed ab delectus ipsa ratione veniam.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(32, 63, 1, 'Repudiandae soluta ut ducimus beatae cupiditate animi neque. Dolore et repellendus quod velit officia aliquid voluptatem. Repellat rerum est illo nostrum itaque.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(33, 65, 1, 'Aliquam quisquam doloribus ut fugit dolores qui sint consequatur. Officia ut officiis dignissimos sit totam sint. Rerum consequatur quam temporibus voluptas nihil error blanditiis. Dolores libero ullam sit.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(34, 67, 2, 'Saepe numquam quae id voluptates. Ducimus est dolorem nisi aliquid iusto et. Quia dolor ut ab exercitationem ut. Ea quas quod dolorem voluptatem nesciunt eos.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(35, 69, 2, 'Eius aspernatur corrupti accusantium impedit consectetur. Id et rerum molestiae odio ipsam natus atque facere. Vel eligendi quasi qui minima eveniet qui velit. Excepturi ut quaerat numquam.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(36, 71, 3, 'Vitae et odio et voluptatem dolores. Tempora qui excepturi ipsam possimus omnis maxime. Impedit iste rem eaque non maxime et at voluptates.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(37, 73, 1, 'Reprehenderit quasi numquam quia. Eos repellat omnis et enim. Neque qui optio distinctio quam cum. Eum tenetur nemo quia eligendi consequatur odit fuga natus.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(38, 75, 3, 'Iusto non soluta est delectus. Inventore voluptates sint natus est exercitationem quia. Aut tempore aut dolores quam nesciunt et iure. Asperiores ducimus officia ut cupiditate unde alias.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(39, 77, 2, 'Et est sit sequi qui. Quod et quibusdam doloremque debitis unde. Voluptatem voluptatem repellendus quos neque molestiae. Ex qui voluptas quis tempore temporibus qui natus.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(40, 79, 2, 'Molestiae eius neque rerum enim consequuntur maxime. Cum aut non ut sit reprehenderit. Sequi aut consequuntur sint odio. Sit voluptatum vel harum perspiciatis dolor.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(41, 81, 2, 'Laborum et nesciunt facilis qui nam. Qui rem ratione suscipit voluptatem dolor consectetur quia. Aut molestias voluptatum ea velit.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(42, 83, 2, 'Consequatur enim beatae qui libero. Velit voluptas ratione repellat ipsum aut. Sit quis nulla ducimus soluta.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(43, 85, 1, 'Quia et a nesciunt minima. Quod debitis hic dolorum velit autem velit et animi. Eum sit nostrum vero amet consectetur nostrum eligendi. Facilis in exercitationem suscipit in sint sint. Laudantium deleniti sapiente non est accusantium.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(44, 87, 2, 'Quibusdam fugit dolor libero consequatur. Corporis qui quaerat vel vitae nihil omnis eum. Nostrum eos consequatur illum odio.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(45, 89, 3, 'Earum quibusdam modi quis quia exercitationem. Omnis quia deserunt architecto et voluptas aliquid. Commodi error et impedit minima soluta deleniti facilis explicabo.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(46, 91, 1, 'Eveniet ipsa nisi nobis hic beatae. Aperiam voluptatem autem et quasi ipsam exercitationem tenetur. Qui sed cupiditate delectus ut. Est itaque quia possimus sed qui nisi omnis.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(47, 93, 1, 'A dolor ut qui rerum libero. Labore aliquid est consequuntur cum qui sint et consequuntur.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(48, 95, 2, 'Quod ut temporibus recusandae necessitatibus. Reprehenderit eligendi dignissimos quidem dolor. Expedita consequuntur enim iste quas qui. Et facilis recusandae ipsa velit ab.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(49, 97, 3, 'Pariatur eligendi blanditiis corporis. Rerum dolores odit et qui voluptatem et velit. Itaque et dignissimos temporibus pariatur atque dolorem. Ipsa expedita illum aut rerum.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(50, 99, 1, 'Aperiam sit commodi facere at minima. Maxime quo maxime fugit ab tenetur aut.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(51, 101, 2, 'Dolor iste voluptas nihil qui. A dolor error ut culpa et. Quidem eaque nam quam possimus.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(52, 103, 2, 'Perspiciatis ipsam expedita ex expedita vero repudiandae nihil. Quibusdam iure quas animi blanditiis explicabo quis voluptatem non.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(53, 105, 1, 'Eligendi quia veniam at voluptas rem autem harum qui. Ut dolor tempora sed. Sed fugiat excepturi velit neque omnis exercitationem.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(54, 107, 2, 'Qui dicta ut quam ea inventore. Molestias exercitationem quos eligendi laudantium magni non. Ducimus voluptatem ducimus qui totam voluptatem non. Magnam molestiae quis et quo aperiam et recusandae.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(55, 109, 2, 'Sunt ut veniam a eos aperiam laborum architecto. Optio et exercitationem ex occaecati quod.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(56, 111, 2, 'Alias reprehenderit est qui unde nihil aperiam mollitia. Itaque itaque dolores dolore exercitationem. Deleniti distinctio consequuntur modi amet voluptatem. Autem asperiores dolore rem qui voluptatem.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(57, 113, 1, 'Repellat officia perspiciatis libero. Nemo consequatur molestiae rerum est et possimus. Occaecati eaque aut odio et quaerat quos quo. Beatae fugit et repudiandae ut est.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(58, 115, 1, 'Nihil doloremque totam voluptas nulla consequatur quibusdam qui. Cupiditate quod delectus ipsa sit ipsam voluptas tenetur. Soluta et quo autem aliquid saepe. Officia sint deserunt molestiae nam dicta.', '2021-09-21 02:02:22', '2021-09-21 02:02:22'),
(59, 117, 2, 'Doloremque quibusdam accusantium esse nulla commodi numquam dolor. Numquam maxime ea repudiandae adipisci ducimus libero dolorem cum. Nisi cumque voluptates qui accusantium. Sed velit dolorem ex itaque. Quam voluptatem quibusdam repellendus blanditiis.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(60, 119, 3, 'Magni vero in voluptatem aut et eaque ut. Natus ipsa eveniet dolorem vitae architecto nobis. Qui placeat velit ab atque.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(61, 121, 3, 'Placeat similique aut autem placeat. Voluptatem perspiciatis minima velit velit. Dolorem illo error sit modi.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(62, 123, 2, 'Dolor autem provident id ullam fugiat quia rem quia. Ut repellendus reprehenderit cumque tenetur. Illum ut et consectetur amet sunt voluptatem sit. Qui eveniet ut exercitationem et ut aut nobis. Fugit alias provident sint aliquid distinctio non.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(63, 125, 2, 'Fuga ut et soluta eligendi eum voluptatem modi. Nesciunt aut perferendis aperiam optio qui ex. Quia nemo unde repellendus error.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(64, 127, 2, 'Reprehenderit facere praesentium possimus explicabo ut. Deleniti quibusdam delectus et sunt. Est facilis neque sed et asperiores omnis. Sit dolorum quo perspiciatis nam iure.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(65, 129, 1, 'Qui quia repellat ab aut accusamus. Ullam sed atque incidunt aut architecto deleniti aut. Aut laudantium esse officia.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(66, 131, 2, 'Nam accusantium sit dolores natus voluptate non. Ut dolorum quis quis in quia dolor. Quis vero minus saepe veritatis sapiente quod similique eligendi.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(67, 133, 2, 'Nulla aut commodi rerum aut. Fugit quas repudiandae eum. Quia repudiandae adipisci placeat distinctio voluptatibus.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(68, 135, 2, 'Alias blanditiis qui ipsum reprehenderit voluptatem. Modi deserunt aut minus quidem. Nihil in animi dolorum.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(69, 137, 3, 'Sit perspiciatis vero rerum quisquam ipsam nostrum numquam. Fuga quam explicabo sed. Sit eos quasi vero quod.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(70, 139, 1, 'Neque rerum dolorem repudiandae dolorum possimus qui beatae. Explicabo molestiae expedita quibusdam. Rem magnam sapiente accusantium eum adipisci.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(71, 141, 1, 'Libero et commodi praesentium dolor velit magni. Et et aut dolorum.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(72, 143, 2, 'Et dolor aut corporis fugit et. Ipsam quia reiciendis porro esse. Ut aut nam qui fuga qui officia molestias a. Labore voluptas officia exercitationem.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(73, 145, 1, 'Dolorem et nam voluptatem iure et voluptatum quo sunt. Hic necessitatibus enim facilis ipsum dolore sed. Aut quis dolorem aut rerum. Tempore voluptate reprehenderit blanditiis reiciendis magni.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(74, 147, 1, 'Provident doloribus eos quia adipisci accusantium eum voluptate deleniti. Neque id doloremque similique exercitationem voluptatem. Neque ut dolor itaque aut sint voluptatibus animi.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(75, 149, 3, 'Quas necessitatibus est et assumenda. Ullam assumenda ea modi fugit soluta laborum totam animi. Veritatis atque eum adipisci dolor vel.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(76, 151, 2, 'Ducimus ipsa voluptatibus est sapiente maiores. Omnis corporis reiciendis nulla quia ea praesentium rerum. Recusandae officia exercitationem suscipit libero vel est et ut. Unde blanditiis omnis vel illo aut qui.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(77, 153, 3, 'Repudiandae et praesentium qui fugit illo reiciendis at. Nulla et sunt officia velit facere explicabo. Dicta quis ut placeat voluptate aut veniam.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(78, 155, 1, 'Quia ullam sit possimus voluptatum possimus eius. Voluptas modi voluptatem adipisci voluptas. Et facilis est consequuntur quia.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(79, 157, 3, 'Consequatur et eius error aperiam et deleniti tempore facilis. Et aut tempore minima eveniet. Illum a odit sapiente veniam ut doloribus ea. Autem aut dicta voluptatem sunt voluptatem quo.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(80, 159, 3, 'Odio et alias dolores dolorem eum nesciunt sed. Iure qui sed qui eos impedit aut enim. Voluptas voluptate aut fugiat non. Voluptatem est soluta a temporibus.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(81, 161, 1, 'Aliquam ipsa consequatur hic saepe est autem et. Dolorem saepe iure recusandae officia tempore id quis quae.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(82, 163, 3, 'Placeat dolorem dolores explicabo est. Veniam distinctio excepturi nihil dolorem. Omnis quis voluptas vel debitis eum.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(83, 165, 2, 'Dolores debitis magnam nam illum in. Autem eos aut cumque eligendi asperiores adipisci. Quia quia et debitis est similique atque omnis ut.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(84, 167, 1, 'In et quas odit ipsa perspiciatis accusantium. Ut libero consequatur debitis illum rerum id. Ratione dicta aut ut et hic at.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(85, 169, 2, 'Aliquid quas eum libero non. Doloremque quos et quam dolores perferendis officia eos et. Autem quasi rerum nesciunt aperiam reprehenderit autem.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(86, 171, 2, 'Ipsum harum vitae minima nihil consequatur et. Dignissimos qui sapiente tempore saepe. Perferendis quia magnam doloribus consequatur. Error doloribus dolores ut labore totam reiciendis tempore excepturi.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(87, 173, 1, 'In quae sapiente consequatur iure officia dolorem eos asperiores. At dolores harum dolores accusantium dolor est. Voluptate velit pariatur quia dolor.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(88, 175, 1, 'Commodi ducimus et in omnis enim magnam ea. Fuga est consequatur aut et in accusamus aut tenetur. Dolor aut cumque optio et quia. Provident soluta aut aliquid excepturi laudantium omnis sit.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(89, 177, 1, 'Unde ex aut quis a. Tempora consequatur consequatur sunt a totam velit provident. Maxime quis dolorum excepturi.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(90, 179, 2, 'Ut fuga dolorem assumenda beatae. Id consequatur quasi ad et consequuntur ratione autem. A rem ratione eum non sequi ut tempora. Et consequuntur voluptatem vero ullam est.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(91, 181, 3, 'Adipisci aut et ipsam suscipit placeat. Ipsam hic cum nemo perspiciatis nulla. Et impedit ex enim et aperiam est. Fugiat laborum esse libero dolores dignissimos.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(92, 183, 3, 'Voluptatibus corporis praesentium accusamus excepturi ut fuga odit. Rerum sequi illum eligendi recusandae quia dignissimos sequi. Aliquam id sit animi molestias.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(93, 185, 1, 'Vel eos dicta perferendis et. Dolores nostrum suscipit qui rem libero omnis nisi. Aut vel voluptate quasi nesciunt fuga. Incidunt consequatur quia sint qui qui ducimus.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(94, 187, 2, 'Reiciendis sint harum modi in sapiente. Magni voluptate facilis doloribus saepe saepe provident quidem. Velit consequuntur asperiores amet et. Omnis iure veritatis vel omnis dolore.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(95, 189, 1, 'Laudantium eius vitae at voluptatem. Quisquam voluptatem assumenda et eos blanditiis perspiciatis. Expedita voluptas sed explicabo. Est blanditiis minus optio expedita.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(96, 191, 1, 'Dolorem eaque dolor autem. Saepe est distinctio repellendus sapiente rerum. Quaerat magni error nam pariatur voluptatem. Qui incidunt vel eos perspiciatis aliquid.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(97, 193, 3, 'Iste voluptatem officiis quia sint atque fugit recusandae doloremque. Itaque architecto molestiae esse ipsam error saepe et voluptatibus. Nesciunt ex ab impedit aut nisi.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(98, 195, 3, 'Et rerum laborum quidem dolores. Dolores quod nihil id. Voluptas enim labore quia tenetur harum ut dignissimos. Id alias quaerat officiis quo.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(99, 197, 1, 'Voluptatum pariatur placeat quibusdam quis ea. Non natus perferendis amet ea sed. Earum modi est perspiciatis aspernatur eum.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(100, 199, 3, 'Et voluptatum et id dolor repellendus. Deleniti vitae qui aut quia voluptas. Ipsam dignissimos et eius amet facere. Enim omnis consequatur est eligendi aut et atque.', '2021-09-21 02:02:23', '2021-09-21 02:02:23'),
(102, 201, 1, 'Test', '2021-09-21 07:07:29', '2021-09-21 07:07:29'),
(103, 201, 1, 'Test Test Test ', '2021-09-21 07:50:38', '2021-09-21 07:50:38'),
(104, 201, 1, 'TEST ', '2021-09-21 07:50:48', '2021-09-21 07:50:48'),
(105, 201, 1, 'Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - v', '2021-09-22 02:12:11', '2021-09-22 02:12:11'),
(106, 201, 1, 'Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - ', '2021-09-22 02:12:14', '2021-09-22 02:12:14'),
(107, 201, 1, 'Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - ', '2021-09-22 02:12:17', '2021-09-22 02:12:17'),
(108, 201, 1, 'Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - v', '2021-09-22 02:12:24', '2021-09-22 02:12:24'),
(109, 201, 1, 'Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - Notes - Test - v', '2021-09-22 02:12:30', '2021-09-22 02:12:30'),
(110, 201, 1, '!@#$%^&*()_\":;\'}{[]', '2021-09-22 02:13:09', '2021-09-22 02:13:09'),
(111, 201, 1, 'Test Note 1', '2021-09-24 06:31:25', '2021-09-24 06:31:25'),
(112, 201, 1, 'Test NOte 2', '2021-09-24 06:31:28', '2021-09-24 06:31:28'),
(113, 201, 1, 'Test Note 3', '2021-09-24 06:31:32', '2021-09-24 06:31:32'),
(114, 202, 1, 'Test Notes - 1', '2021-10-06 01:05:24', '2021-10-06 01:05:24'),
(115, 202, 1, 'Test Notes - 2', '2021-10-06 01:06:27', '2021-10-06 01:06:27'),
(116, 202, 1, 'Test Notes - 3', '2021-10-06 01:08:01', '2021-10-06 01:08:01'),
(117, 202, 1, 'Test Notes - 4', '2021-10-06 01:08:06', '2021-10-06 01:08:06'),
(118, 202, 1, 'Test Notes - 5', '2021-10-06 01:08:10', '2021-10-06 01:08:10'),
(119, 202, 1, 'Test Notes - 6', '2021-10-06 01:08:14', '2021-10-06 01:08:14'),
(120, 202, 1, 'Test Notes - 7', '2021-10-06 01:08:23', '2021-10-06 01:08:23'),
(121, 202, 1, 'Test Notes - 8', '2021-10-06 01:08:27', '2021-10-06 01:08:27'),
(122, 202, 1, 'Test Notes - 9', '2021-10-06 01:08:34', '2021-10-06 01:08:34'),
(123, 202, 1, 'Test Notes - 10', '2021-10-06 01:08:41', '2021-10-06 01:08:41'),
(124, 202, 1, 'Test Notes - 11', '2021-10-06 01:08:48', '2021-10-06 01:08:48'),
(125, 202, 1, 'Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12Test Notes - 12', '2021-10-06 01:09:01', '2021-10-06 01:09:01'),
(126, 202, 1, 'Test Notes - 13 Test Notes - 13 Test Notes - 13 ', '2021-10-06 01:09:13', '2021-10-06 01:09:13'),
(127, 202, 1, 'Test Notes - 14 Test Notes - 14 ', '2021-10-06 01:09:24', '2021-10-06 01:09:24'),
(128, 202, 1, 'Test Notes - 15 Test Notes - 15 Test Notes - 15 ', '2021-10-06 01:09:46', '2021-10-06 01:09:46'),
(129, 203, 1, 'Test Notes', '2021-10-07 04:59:58', '2021-10-07 04:59:58'),
(130, 203, 1, 'Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 ', '2021-10-07 05:01:42', '2021-10-07 05:01:42'),
(131, 203, 1, 'Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2 Test NOtes 2', '2021-10-07 05:02:46', '2021-10-07 05:02:46'),
(132, 203, 1, 'Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - v', '2021-10-13 06:15:27', '2021-10-13 06:15:27'),
(133, 203, 1, 'Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - Test - ', '2021-10-13 06:15:34', '2021-10-13 06:15:34'),
(134, 203, 1, 'dsafdaf', '2021-12-08 07:03:04', '2021-12-08 07:03:04'),
(135, 203, 1, 'fdasfdsafd', '2021-12-09 09:33:21', '2021-12-09 09:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_07_28_055100_create_sessions_table', 1),
(7, '2021_07_29_065416_create_complaints_table', 1),
(8, '2021_08_09_225441_create_permission_tables', 1),
(9, '2021_08_11_020022_create_advisers_table', 1),
(10, '2021_08_17_021403_create_sites_table', 1),
(11, '2021_08_17_021415_create_site_manuals_table', 1),
(12, '2021_08_23_121840_create_claims_table', 1),
(13, '2021_08_26_122613_create_ta_cir_address_table', 1),
(14, '2021_08_26_122613_create_ta_cir_identified_table', 1),
(15, '2021_08_26_122613_create_ta_cir_table', 1),
(16, '2021_08_27_122515_add_status_columns_to_cir_table', 1),
(17, '2021_08_27_185422_add_requirements_column_to_advisers_table', 1),
(18, '2021_09_13_113640_create_site_histories_table', 1),
(19, '2021_09_16_005319_create_complaint_notes_table', 1),
(20, '2021_09_20_175247_delete_tier_column_from_complaint_notes_table', 1),
(21, '2021_09_20_175350_add_created_by_column_to_complaint_notes_table', 1),
(22, '2021_09_28_140633_add_complainee_columns_to_complaints_table', 2),
(23, '2021_10_11_143502_create_claim_notes_table', 3),
(24, '2021_10_14_121623_create_vulnerable_clients_table', 4),
(25, '2021_10_14_121634_create_vulnerable_client_notes_table', 4),
(26, '2021_11_04_141354_add_type_column_to_ta_cir_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 5),
(4, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 7),
(5, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 6),
(5, 'App\\Models\\User', 7),
(6, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 5),
(6, 'App\\Models\\User', 6),
(6, 'App\\Models\\User', 7),
(7, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 5),
(7, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 7),
(8, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 5),
(8, 'App\\Models\\User', 6),
(8, 'App\\Models\\User', 7),
(9, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 5),
(9, 'App\\Models\\User', 6),
(9, 'App\\Models\\User', 7),
(10, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 5),
(10, 'App\\Models\\User', 6),
(10, 'App\\Models\\User', 7),
(11, 'App\\Models\\User', 1),
(11, 'App\\Models\\User', 5),
(11, 'App\\Models\\User', 6),
(11, 'App\\Models\\User', 7),
(12, 'App\\Models\\User', 1),
(12, 'App\\Models\\User', 2),
(12, 'App\\Models\\User', 5),
(12, 'App\\Models\\User', 6),
(12, 'App\\Models\\User', 7),
(13, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 2),
(13, 'App\\Models\\User', 5),
(13, 'App\\Models\\User', 6),
(13, 'App\\Models\\User', 7),
(14, 'App\\Models\\User', 1),
(14, 'App\\Models\\User', 2),
(14, 'App\\Models\\User', 5),
(14, 'App\\Models\\User', 6),
(14, 'App\\Models\\User', 7),
(15, 'App\\Models\\User', 1),
(15, 'App\\Models\\User', 2),
(15, 'App\\Models\\User', 5),
(15, 'App\\Models\\User', 6),
(15, 'App\\Models\\User', 7),
(16, 'App\\Models\\User', 1),
(16, 'App\\Models\\User', 2),
(16, 'App\\Models\\User', 5),
(16, 'App\\Models\\User', 6),
(16, 'App\\Models\\User', 7),
(17, 'App\\Models\\User', 1),
(17, 'App\\Models\\User', 2),
(17, 'App\\Models\\User', 5),
(17, 'App\\Models\\User', 6),
(17, 'App\\Models\\User', 7),
(18, 'App\\Models\\User', 1),
(18, 'App\\Models\\User', 5),
(18, 'App\\Models\\User', 6),
(18, 'App\\Models\\User', 7),
(19, 'App\\Models\\User', 1),
(19, 'App\\Models\\User', 5),
(19, 'App\\Models\\User', 6),
(19, 'App\\Models\\User', 7),
(20, 'App\\Models\\User', 1),
(20, 'App\\Models\\User', 5),
(20, 'App\\Models\\User', 6),
(20, 'App\\Models\\User', 7),
(21, 'App\\Models\\User', 1),
(21, 'App\\Models\\User', 5),
(21, 'App\\Models\\User', 6),
(21, 'App\\Models\\User', 7),
(22, 'App\\Models\\User', 1),
(22, 'App\\Models\\User', 5),
(22, 'App\\Models\\User', 6),
(22, 'App\\Models\\User', 7),
(23, 'App\\Models\\User', 1),
(23, 'App\\Models\\User', 5),
(23, 'App\\Models\\User', 6),
(23, 'App\\Models\\User', 7),
(24, 'App\\Models\\User', 1),
(24, 'App\\Models\\User', 5),
(24, 'App\\Models\\User', 6),
(24, 'App\\Models\\User', 7),
(25, 'App\\Models\\User', 1),
(25, 'App\\Models\\User', 5),
(25, 'App\\Models\\User', 6),
(25, 'App\\Models\\User', 7),
(26, 'App\\Models\\User', 1),
(26, 'App\\Models\\User', 5),
(26, 'App\\Models\\User', 6),
(26, 'App\\Models\\User', 7),
(27, 'App\\Models\\User', 1),
(27, 'App\\Models\\User', 5),
(27, 'App\\Models\\User', 6),
(27, 'App\\Models\\User', 7),
(28, 'App\\Models\\User', 1),
(28, 'App\\Models\\User', 5),
(28, 'App\\Models\\User', 6),
(28, 'App\\Models\\User', 7),
(29, 'App\\Models\\User', 1),
(29, 'App\\Models\\User', 5),
(29, 'App\\Models\\User', 6),
(29, 'App\\Models\\User', 7),
(30, 'App\\Models\\User', 1),
(30, 'App\\Models\\User', 5),
(30, 'App\\Models\\User', 6),
(30, 'App\\Models\\User', 7),
(31, 'App\\Models\\User', 1),
(31, 'App\\Models\\User', 5),
(31, 'App\\Models\\User', 6),
(31, 'App\\Models\\User', 7),
(32, 'App\\Models\\User', 1),
(32, 'App\\Models\\User', 5),
(32, 'App\\Models\\User', 6),
(32, 'App\\Models\\User', 7),
(33, 'App\\Models\\User', 1),
(33, 'App\\Models\\User', 5),
(33, 'App\\Models\\User', 6),
(33, 'App\\Models\\User', 7),
(34, 'App\\Models\\User', 1),
(34, 'App\\Models\\User', 5),
(34, 'App\\Models\\User', 6),
(34, 'App\\Models\\User', 7),
(35, 'App\\Models\\User', 1),
(35, 'App\\Models\\User', 5),
(35, 'App\\Models\\User', 6),
(35, 'App\\Models\\User', 7),
(36, 'App\\Models\\User', 1),
(36, 'App\\Models\\User', 5),
(36, 'App\\Models\\User', 6),
(36, 'App\\Models\\User', 7),
(37, 'App\\Models\\User', 1),
(37, 'App\\Models\\User', 5),
(37, 'App\\Models\\User', 6),
(37, 'App\\Models\\User', 7),
(38, 'App\\Models\\User', 1),
(38, 'App\\Models\\User', 5),
(38, 'App\\Models\\User', 6),
(38, 'App\\Models\\User', 7),
(39, 'App\\Models\\User', 1),
(39, 'App\\Models\\User', 5),
(39, 'App\\Models\\User', 6),
(39, 'App\\Models\\User', 7),
(40, 'App\\Models\\User', 1),
(40, 'App\\Models\\User', 5),
(40, 'App\\Models\\User', 6),
(40, 'App\\Models\\User', 7),
(41, 'App\\Models\\User', 1),
(41, 'App\\Models\\User', 5),
(41, 'App\\Models\\User', 6),
(41, 'App\\Models\\User', 7),
(42, 'App\\Models\\User', 1),
(42, 'App\\Models\\User', 5),
(42, 'App\\Models\\User', 6),
(42, 'App\\Models\\User', 7),
(43, 'App\\Models\\User', 1),
(43, 'App\\Models\\User', 5),
(43, 'App\\Models\\User', 6),
(43, 'App\\Models\\User', 7),
(44, 'App\\Models\\User', 1),
(44, 'App\\Models\\User', 5),
(44, 'App\\Models\\User', 6),
(44, 'App\\Models\\User', 7),
(45, 'App\\Models\\User', 1),
(45, 'App\\Models\\User', 5),
(45, 'App\\Models\\User', 6),
(45, 'App\\Models\\User', 7),
(46, 'App\\Models\\User', 1),
(46, 'App\\Models\\User', 5),
(46, 'App\\Models\\User', 6),
(46, 'App\\Models\\User', 7),
(47, 'App\\Models\\User', 1),
(47, 'App\\Models\\User', 5),
(47, 'App\\Models\\User', 6),
(47, 'App\\Models\\User', 7),
(48, 'App\\Models\\User', 1),
(48, 'App\\Models\\User', 5),
(48, 'App\\Models\\User', 6),
(48, 'App\\Models\\User', 7),
(49, 'App\\Models\\User', 1),
(49, 'App\\Models\\User', 5),
(49, 'App\\Models\\User', 6),
(49, 'App\\Models\\User', 7),
(50, 'App\\Models\\User', 1),
(50, 'App\\Models\\User', 5),
(50, 'App\\Models\\User', 6),
(50, 'App\\Models\\User', 7),
(51, 'App\\Models\\User', 1),
(51, 'App\\Models\\User', 5),
(51, 'App\\Models\\User', 6),
(51, 'App\\Models\\User', 7),
(52, 'App\\Models\\User', 1),
(52, 'App\\Models\\User', 5),
(52, 'App\\Models\\User', 6),
(52, 'App\\Models\\User', 7),
(53, 'App\\Models\\User', 1),
(53, 'App\\Models\\User', 4),
(53, 'App\\Models\\User', 5),
(53, 'App\\Models\\User', 6),
(53, 'App\\Models\\User', 7),
(54, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'users', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(2, 'complaints', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(3, 'complaints.create', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(4, 'complaints.update', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(5, 'complaints.delete', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(6, 'complaints.view-pdf', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(7, 'complaints.generate-report', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(8, 'complaint-notes', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(9, 'complaint-notes.create', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(10, 'complaint-notes.update', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(11, 'complaint-notes.delete', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(12, 'claims', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(13, 'claims.create', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(14, 'claims.update', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(15, 'claims.delete', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(16, 'claims.view-pdf', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(17, 'claims.generate-report', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(18, 'claim-notes', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(19, 'claim-notes.create', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(20, 'claim-notes.update', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(21, 'claim-notes.delete', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(22, 'cir', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(23, 'vulnerable-clients', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(24, 'vulnerable-clients.create', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(25, 'vulnerable-clients.update', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(26, 'vulnerable-clients.delete', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(27, 'vulnerable-clients.view-pdf', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(28, 'vulnerable-clients.generate-report', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(29, 'vulnerable-client-notes', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(30, 'vulnerable-client-notes.create', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(31, 'vulnerable-client-notes.update', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(32, 'vulnerable-client-notes.delete', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22'),
(33, 'software', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(34, 'software.create', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(35, 'software.update', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(36, 'software.delete', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(37, 'software.generate-report', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(38, 'software-manuals', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(39, 'software-manuals.upload', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(40, 'software-manuals.download', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(41, 'software-manuals.delete', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(42, 'software-history', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(43, 'software-history.create', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(44, 'software-history.update', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(45, 'software-history.delete', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(46, 'advisers', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(47, 'advisers.create', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(48, 'advisers.update', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(49, 'advisers.delete', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(50, 'advisers.view-pdf', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(51, 'adviser-requirements', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(52, 'adviser-requirements.update', 'web', '2021-10-26 16:03:23', '2021-10-26 16:03:23'),
(53, 'ir', 'web', '2021-11-04 00:35:06', '2021-11-04 00:35:06'),
(54, 'policy-and-procedures', 'web', '2021-10-26 16:03:22', '2021-10-26 16:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(21, 'App\\Models\\User', 6, 'cir', '05fbf9e1073017bb83d9de4acae8a45b4e7ab74780d638c8bc9783f3a29472d1', '[\"*\"]', NULL, '2021-11-05 00:08:50', '2021-11-05 00:08:50'),
(24, 'App\\Models\\User', 4, 'cir', '00bf62bc32e24b51b2ba9be418717ff63c8181a24c92e040600970dbc0abe8c1', '[\"*\"]', NULL, '2021-11-08 06:24:35', '2021-11-08 06:24:35'),
(28, 'App\\Models\\User', 5, 'cir', 'bd364cb363fc99d147b3d5c48eb382667f5011535a6a8e3b9be124944c49efca', '[\"*\"]', NULL, '2021-11-08 08:18:43', '2021-11-08 08:18:43'),
(35, 'App\\Models\\User', 1, 'cir', '8ca39641f32d1bef197feab206f4bf4c7f8e3cf5f40174602958ec0dd6531c68', '[\"*\"]', NULL, '2021-12-08 07:59:09', '2021-12-08 07:59:09'),
(45, 'App\\Models\\User', 9, 'cir', '072d9440421a1cf264700d97130816db9da122f0eb64f255a540a71750b5f86c', '[\"*\"]', NULL, '2021-12-10 09:12:27', '2021-12-10 09:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_implemented` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_reviewed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_amended` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `title`, `date_implemented`, `date_reviewed`, `date_amended`) VALUES
(61, 'Dan Ray Lacsi', '11/12/2021', '16/12/2021', '10/12/2021');

-- --------------------------------------------------------

--
-- Table structure for table `policy_notes`
--

CREATE TABLE `policy_notes` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `date_added` varchar(255) NOT NULL,
  `policy_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `policy_notes`
--

INSERT INTO `policy_notes` (`id`, `user_id`, `description`, `date_added`, `policy_id`) VALUES
(20, 9, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium ur?', '1970-01-01 01:00:00', 61),
(21, 9, 'Edited on this day', '2021-12-10 16:36:30', 61);

-- --------------------------------------------------------

--
-- Table structure for table `policy_view`
--

CREATE TABLE `policy_view` (
  `id` bigint(20) NOT NULL,
  `policy_id` bigint(20) NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `policy_view`
--

INSERT INTO `policy_view` (`id`, `policy_id`, `user_type`) VALUES
(103, 61, '1'),
(104, 61, '3'),
(105, 61, '4'),
(106, 61, '2'),
(107, 61, '5'),
(108, 61, '6'),
(109, 61, '9'),
(110, 61, '8'),
(111, 61, '7');

-- --------------------------------------------------------

--
-- Table structure for table `pol_subs`
--

CREATE TABLE `pol_subs` (
  `id` bigint(20) NOT NULL,
  `policy_id` bigint(20) NOT NULL,
  `subtitle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pol_subs`
--

INSERT INTO `pol_subs` (`id`, `policy_id`, `subtitle`, `content`) VALUES
(127, 61, 'section 1', '<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p><ol><li> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</li><li> Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et </li><li>dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex </li><li>ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</li></ol><p><br></p>'),
(128, 61, 'section 2', '<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p><ol><li>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</li><li>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et</li><li>dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex</li><li>ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</li></ol><p><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(2, 'user', 'web', '2021-09-21 02:02:21', '2021-09-21 02:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7nhWWo5iKQfHes13ii0WXzCVs4C9OLS0QbDedFh2', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoibkNCNjBNQkE0b2pWZWx0OUFtYmV1Mk5aeElicmFKdk1sYllMZ2ZCbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jbGFpbXMiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDkySVhVTnBrak8wck9RNWJ5TWkuWWU0b0tvRWEzUm85bGxDLy5vZy9hdDIudWhlV0cvaWdpIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ5MklYVU5wa2pPMHJPUTVieU1pLlllNG9Lb0VhM1JvOWxsQy8ub2cvYXQyLnVoZVdHL2lnaSI7fQ==', 1638942585),
('81O9Db5WBLjmJSQ03UnZ0JkWr7nwgenbdTFKE8Em', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoia3F5ZW1RdjVxYXB2UGVEemg4YWowSnRJSTFGUkcwS2dJeVJGN3dMZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb2xpY3kiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6OTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJERlemVZbTg5V05GbjlYZGJwUGgxUXV5bzl3Ny5XUEZwc3ZqdTJyOUtsQzFOMDdoRnJtQkxTIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCREZXplWW04OVdORm45WGRicFBoMVF1eW85dzcuV1BGcHN2anUycjlLbEMxTjA3aEZybUJMUyI7fQ==', 1639088540),
('mZqyPSTSwRswb4u6ztxf1DuaroWahWQheGpqwelD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS2xGbUFtOFRRUkRrWUs5NUI3ZGJuejdZbTBjUEI5YzJaYjBHNXpBWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638994995),
('OEw2QkPvATkLaf7IvqOPlMD2CJaoYAU5S0lBEzMp', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVmtVT0JuQWRsazRiNWRLNkZUQlhsSlVFMkZZWGdoWERiY2hLUnpBMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb2xpY3kiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo5O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkRGV6ZVltODlXTkZuOVhkYnBQaDFRdXlvOXc3LldQRnBzdmp1MnI5S2xDMU4wN2hGcm1CTFMiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJERlemVZbTg5V05GbjlYZGJwUGgxUXV5bzl3Ny5XUEZwc3ZqdTJyOUtsQzFOMDdoRnJtQkxTIjt9', 1639109547),
('pFUTxz9SqQsukUx3j3TodE7Xk2bxQLXYtcJgbnaE', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiVmlucEpNYlN1R0ViUVZvbVRSd1hFaktPNnppUEttVDluMm9qMHJoRSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvY29tcGxhaW50cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ5MklYVU5wa2pPMHJPUTVieU1pLlllNG9Lb0VhM1JvOWxsQy8ub2cvYXQyLnVoZVdHL2lnaSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkOTJJWFVOcGtqTzByT1E1YnlNaS5ZZTRvS29FYTNSbzlsbEMvLm9nL2F0Mi51aGVXRy9pZ2kiO30=', 1639029409);

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `launch_date` date NOT NULL,
  `update_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `name`, `url`, `launch_date`, `update_date`, `description`, `created_at`, `updated_at`) VALUES
(1, 'test', 'http://test.test', '2021-10-27', NULL, 'adsf', '2021-10-26 16:04:28', '2021-10-26 16:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `site_histories`
--

CREATE TABLE `site_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` bigint(20) UNSIGNED NOT NULL,
  `updates` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_date` date NOT NULL,
  `developer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_manuals`
--

CREATE TABLE `site_manuals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ta_cir`
--

CREATE TABLE `ta_cir` (
  `report_number` int(10) UNSIGNED NOT NULL,
  `send_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investigation_information` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adviser_id` int(11) DEFAULT NULL,
  `rep_response` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_response` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rep_action` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_address` int(11) DEFAULT 0 COMMENT '0 - Not answered 1 - Answered',
  `link_status` int(11) DEFAULT 1 COMMENT '0 - Expired 1 - Active',
  `link_password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_id` int(11) DEFAULT NULL,
  `adv_signature` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rep_signature` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satisfactory` int(11) DEFAULT NULL,
  `if_not` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_response_date` date DEFAULT NULL,
  `rep_response_date` date DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `access_status` int(11) DEFAULT 0,
  `date_created` date NOT NULL DEFAULT current_timestamp(),
  `type` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ta_cir`
--

INSERT INTO `ta_cir` (`report_number`, `send_date`, `due_date`, `investigation_information`, `adviser_id`, `rep_response`, `adv_response`, `rep_action`, `to_address`, `link_status`, `link_password`, `representative_id`, `adv_signature`, `rep_signature`, `satisfactory`, `if_not`, `finalisation`, `adv_response_date`, `rep_response_date`, `status`, `access_status`, `date_created`, `type`) VALUES
(10, '2021-11-08', '2021-11-27', 'Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details Incident Details ', 68, 'Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - v', 'Contractor/Employee Contracted Response Contractor/Employee Contracted Response Contractor/Employee Contracted Response Contractor/Employee Contracted Response Contractor/Employee Contracted Response Contractor/Employee Contracted Response Contractor/Employee Contracted Response Contractor/Employee Contracted Response Contractor/Employee Contracted Response Contractor/Employee Contracted Response Contractor/Employee Contracted Response Contractor/Employee Contracted Response Contractor/Employee Contracted Response ', 'Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - Sample - vvvvv', 1, 1, 'TwWKi', 5, 'data:image/png;base64,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', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAADJCAYAAAANSWRHAAAAAXNSR0IArs4c6QAAGh5JREFUeF7tnb3rRkdWx8+CYCOuERsFXaM2VtloIyLGLRbt4oLYCMYIYmERF/+AKIiNRdZq0cKYTlDIprWJQRQLIW4pgms6u90UgsVq5LO5B4a7z8t95rkvM3M/Az9+b/dl5jPz3O89Z86c+UxYJCABCUhAAhUEPlNxjqdIQAISkIAEQgFxEEhAAhKQQBUBBaQKmydJQAISkIAC4hiQgAQkIIEqAgpIFTZPkoAEJCABBcQxIAEJSEACVQQUkCpsniQBCUhAAgqIY0ACEpCABKoIKCBV2DxJAhKQgARaF5AfmLqI79+KCL7nz/zOl0UCEpCABA4gsLeA/HhEfG4SAX5GDD5fiAR/46umpKD853Qyv//rhZ8/jgiOUXxqKHuOBCQggYnA2gKCICAAL0V8Z5V7CkKKQloPPMDz4T5/mJcP/XsdlRZKihDHz0Up68T/OO6zxUXnIpN14e8pNJ8UPys693rE/0tAAqchUCsg5QObn1+LiA+mhzfw8sFcPpBbevimKyyFLa2h8vccBLQvhS/bhkC+N7WTdmFVfX06gWv8fTGC+D2to7nbLZmkaJ5m4NlQCUigfwKPCMgvRcRvRQTfvza5gfJByYMwXUf9U7ndghSfcl4mRSKtHVikdVRaX3luWkr5nb8jQpyX1hnfS5Eanavtk4AEOiNwT0B4sP1qRLw1Pcz+avZ23Vlzm69uChDfEWrEh++ICaKNpcJXS9Zc81CtoAQksA2BWwLCw+vdiPhosjx8aG3TB0uuWs4lIShp8WEB6v5aQtBjJCCB1QlcExD8/u9HxJcjAqvD0haBdIVhHSIoX5mslbRQ2qqttZGABIYkcE1AcJn8/uQ2GbLhgzUqBeUPZy5GxX+wjrY5EmiJwCUByYcOE+aWfglkwEM5Ka+7q9/+tOYSaI7AXEB4k/1mRLysb725vqqtUE7M4+rC5cULQk7EnyVyrpad50lAAjcIzAUkfek8aCxjEsgJeea5EBVeGN4xum7MzrZVEtiSwFxAeDPlDRUhsZyDQApJRnflRLzhwufof1spgWoCpYCk++oLvo1W8+z9RKyTUlBwcREqbLhw7z1r/SWwAYFSQIi6YsHgCy5U24B0n5fMhaRYJwjLh5OY5Ar5PltlrSUggVUIlALy1Yj45Yj4iVWu7EVGJJBCwnfE5RuTy5M8YC40HbHHbZMEbhAoBYRUGZlCQ2gSuEcgsx5ndBdZjhlDuLuwUCwSkMDgBEoByUlTHggWCTxKIN1dRPC9OhMTw4UfpenxEuiAQCkg7HvxZ9MK9A6qbhUbJ4CQ5IQ8mYaxTLBQtE4a7zirJ4GlBFJAiL7Bn/26ua+WovO4BwiU1skrhZiwh4zWyQMgPVQCLRFIAckImy+Z/6ql7hm2Lmmd8D3nTljMaKqVYbvcho1IIAWEvElvR4RrQEbs5bbbhPVLCDlighsVNxeuVC2TtvvN2kngO/uWU8ji+ua0j7lYJHAUgZwz4YUGMSErAnMmislRPeJ9JXCDQAoIH1QiZ1hEaJFACwSwTBASvsjXxRhlzkQ3Vwu9Yx0kUFgcRMhkXL9gJHCJAA90oqkoH+/8IMcyQUjSzYXFzJyJRQISOJBAWiC5Z4RZeA/sjEZv/RsR8ScR8WOz+rHyHGsgc2UhKvwtv7ZqDmLCOEVQSK2SmYRdCb8Vca8rgSsEUkDwN//RNBciLAkkgcyPVkMkH+hzUUFweGEh/ckz7qjMmoCQYB2xBbORXDU95TkSqCSAgGQIL/ufm8a9EuSAp5GR4N3JtUnz/jIi/mCyMMo0Jrm/CH/7kYj4n4j4vxsT34w3QncpafkiJCkoNRPm1IH65uQ7QuJ2vgMOSpvUFgEEBHcADwrXgLTVN0fXhgfwa1Ml1l5gmrskIiYk7/zNSagQltI1lsLyiKhkbi6+a5UcPYq8/9AEEJB0U7iN7dBd/XDjcDWxavyjyUX08AUePCEtGR78mfWXS5SigqCk1UJE1q0yd3Ex8c4aE4sEJLASAQQk14C8aLz9SlTHuAwP65cmi+Co8O5SVLBW+MpIsHSB5WZXt0J8MyQYaxsR4euZ+ZcxethWSOBJAggIHybWgMy3t33y0p7eOYEUEJrR0iZj8/kXrJVSVDIqDEHh57KkVZLRhmRfuGfJdN6NVl8C2xFANFwDsh3fnq+cLiza0MP8WLq++I7rjcJ8SpkFuAz1xZrBfYuopFViKHDPI9a6704AAclJS/cB2R1/0zf8l4j42amGpBPpbY0Q9U1RSVccYkKEVjkXUm7by2chN8VqunOsnARaIJACwoeGEEiLBJLA30XEF6df/isifrhjNGVaFNxdTMQTZYaYlBFemYsL8cG95Wr3jjvdqm9PAAFxEeH2nHu8w3wRYUvzIM/wLNOilBtdkQG4LASXIDwITVrpz9zXcyUwHIEUkB583MPBb7xBuT4oqznibpWZEoUgEkSChbSlVVKuV+EYsjVgsThX0vjgtXr7EEgBcR+QfXj3dhcelLlqnLqPmq0AocDi4ovMv0SgISZlhFZaLhn+60r33kaz9V2dQAqIa0BWRzvEBXmIvlG05NsR8TuDpwlh4v3XIuL3JiHJfdxTONIqIZEjK/T5u2tKhhjuNuJRAikgo/i3H22/x98nkOuE8kisEiyR0d/Amf9AQBEU5gmJ4JpbJQSe8H+OJR3QfB7lPl2PkEDHBDIKi7cqiwQuEWBsEMb7i7N/MsnMnMDopVzFTjgw1kZGcOVcCO4teLD+BBHh/4/k7xqdoe0blAACwkDnQ2KRwDUCudguF+jlcbyV48Y5w8MyV7EjFAgJBaFAMNKFlRmBmZzPRI7m3/JzNSyBTGXS2yKxYTuk4YZdExHewhGRMz0o+bww4Z6CStsRkkydkpte5aQ8ltroLr+Gh65V24oAAsLAdhHhVoTHui4iwjxApnnP1v1vRPzxCTckS4sjeWCJIRq4/ChY9vye+5TMw4THGh225nQEMhsvZrlFAksJZMhrmcQQS4S38DOOpcyrVQpJuW97CgmWC2HRabEYvbV0xHlckwQUkCa7pYtK8dD824j4yVltR10rsqRTMnKLRYcUBAL3Vbr3ckIeAUZIcHnBSyFZQtdjmiOAgGBe659trmu6qBAigltmPrl+9oWpGZWVQjIPNihdWykkcEzXVxedbyUlgIDgx53vmyAZCSwlwMOSN+zSnXXWOZE5Mz5bvJwlm3noM3NK/C0Xa/I5xGLx87h09HncoQQUkEPxD3NzHpSISJn2hMbpovm0ixGJdFsx0U7UWikS8+AEXFq4thSSYT4iYzYEAWHwmhxuzP7ds1WIyN9ExA9duGkuvDvzAzEz+6a7D5cV1sZ8k6vSJagA7zmCvdfDBNzG9mFknnCDwLUw3zyFN++zz7cRiQUDrDUsjcynVWLlmHLBIqJChNsZFmz6AeuIgALSUWd1VFUCM3gAlvMiVH/ElPA13YLQIiI5yX4tLQxuL/6H2GS6eRjqMaih7jmrE1BAVkfqBScCPCQREr4y9cfZo7PmgwM2WBdpjbAvz9zKmFt1/J/5kTOt/PdD1SgBBaTRjhmsWvj/eWv2zfm7O7acG4EPInJprog5JsQmxRgBQUh0aw32YempOQpIT71lXUcmgKvqzamBlybYs+2l1YLg4ApDSCwS2J2AArI7cm8ogasEyjU1t9aEXFrxbtivA2t3AgrI7si9oQRuEigXF97LL0a0FtZKBivcslzELoHVCSggqyP1ghJYhQBzHuwpQmG+g3DfS3NI89XsTrKvgt+LLCGggCyh5DESOIYA4oArKyfO2RXyH65U5dIk+zXROaY13nU4AgrIcF1qgwYkwAT7b0fEj07rQm6tBcGNlbm1zrjZ14Dd326TFJB2+8aaSaAkUCZmZAX7pTUjeTyT8URnlSG/WiOOp9UJKCCrI/WCEtiMwDz6ipDed27crUziyGGmktmsa855YQXknP1uq/smUK4FyXUg1xZpzpM4mqCx775vqvYKSFPdYWUksJgAwkB0Fm6qey4tLlrm1eL3a/m3FlfAAyWggDgGJNA3AUSEpIy30qCUcyNlunhCfplLcUvdvsfAYbVXQA5D740lsBoBrIu3pqshCPcSLZYuME5DVEyHslp3nOdCCsh5+tqWjk0AUXj7ARGZp5R3AeLY42OT1ikgm2D1ohI4hECKyBJ3VlZwng6FSXl2SjTL7yFd2NdNFZC++svaSuAegRQRBID9V5YKwXwBIpPsLFi0SOAqAQXEwSGB8QikGDAXwpzI0jJfgLgkumvptT1uQAIKyICdapMkMEVWEeJbs3iQSXm+zPLrULpJQAFxgEhgTAKsE8GC+CQiXqzYDZLzcWO9NuHBFYYYXdotcUyCtuouAQXkLiIPkEC3BHKXQybGefjXFLfSraF2knMUkJN0tM08JYEyHTxWyNIJ9TksrsPkfK414f/Ms5CHy0WIpxxanzZaATlx59v0UxDAFfWNyfVEVNYzJZM5/kpEfO90ISbqCftVSJ4h2+m5CkinHWe1JfAAAVxYzGUsWaW+5LJYI7jHcpKdcxAS7vPekgt4zBgEFJAx+tFWSOAWASwHJr8/GxEvrISKkN8yr1ZeFksk3Vsr3crLtEpAAWm1Z6yXBNYlgMXwuxHx55P1sMbVmRsh3PfNCxdjvgUhcTHiGqQbvYYC0mjHWC0JbECAFCfffHCF+pJqzCO1ynO4J+LFhPu1PUuW3MNjGiSggDTYKVZJAhsRyDQnj65QX1qdMh3K/JwUEi2SpTQ7OE4B6aCTrKIEViTAXMgrEfHyRpFT5d7tl6rtHiQrdubRl1JAju4B7y+BfQmQfffdKWrqkTxZj9YyFzFeOg9rBGuF8F9LxwQUkI47z6pLoJJAWiGsC9kyNck8OeO8urjS2MiqdoFjZfM9bS0CCshaJL2OBPohwIP9w5UWFy5p9S1r5NG080vu5zE7EVBAdgLtbSTQGIHcS31rKySbfW9uZK96NNYNfVdHAem7/6y9BGoJ8EB/f0crhHpmKpRXL1T6kV0Ua9vseSsTUEBWBurlJNARAdxHpCN5JtFiTXMztcr8XFPG19A88BwF5ED43loCBxNgFTkZdpnIJipqz3JrXmSrEOM923eKeykgp+hmGymBiwQyUy/5q3ho711uiQg5u1y5vnePPHg/BeRBYB4ugcEIIB5sfbu3Gysx5ur4S1gVkcYHmwLSeAdZPQlsTCCtgLVSvddUFxHBhUa24LKQGp6Fj5ZGCSggjXaM1ZLATgQyGoscVcyJHFW4NyvTv7+owH9HxPcdVSHve5+AAnKfkUdIYGQCpGQnQ+8HEYGYHFkuzYm4PuTIHrlzbwWk4c6xahLYiQDzIITzrrXZ1DPVzsiwvMbr006Hz1zTczcioIBsBNbLSqAjApkbq5VJa6Kvcj7kyLmZjrrwmKoqIMdw964SaIlAuo5acReVAuKakJZGyqwuCkjDnWPVJLATgRYiscqmfjL98nFEMEdjaZSAAtJox1gtCexIICOxjliRPm9m1oW/G8a74yCouZUCUkPNcyQwFoFWQnmhWgrI0aHFY/XyBq1RQDaA6iUl0BmBDOV9JyJY1HdkyR0TqQPrQnCvWRoloIA02jFWSwI7E2DimnDeo9eCaIHs3PHP3E4BeYae50pgHAK5rSwJFo8smeCROrQwJ3Mki+bvrYA030VWUAK7EGAtCEkVW1hMiIjgVsMisjRMQAFpuHOsmgR2JMAmT78QET+14z29VecEFJDOO9DqS2AlArkW5Ki07is1w8vsSQABwVxM/+ee9/ZeEpBAOwQyB1Urq9HbIWNNrhJQQBwcEpAABDL6yeSFjofFBBCQzztZtZiXB0pgVAI8Bz507cWo3btNuxSQbbh6VQn0RiAXE7p4r7eeO7C+CAimKyF8FglI4NwESGLYwmr0c/dCR61XQDrqLKsqgY0JEEzD19Gr0TduppdfiwACQu4bYsAtEpDAuQmkJ0IBOfc4WNx6BWQxKg+UwPAEEBB2AmQTJ4sE7hJAQIj//srdIz1AAhIYnYAWyOg9vHL7FJCVgXo5CXRMQAHpuPOOqDoCQgoDc+4fQd97SqAtAkygk8CQPTksErhLQAG5i8gDJHAaAoTxugvgabr7+YYqIM8z9AoSGIFArkQ3lckIvblTGxAQJtCZSLdIQALnJZDJFM3Ge94x8HDLERAmzoz7fhidJ0hgKAK5eROWiEUCiwggICwiZDGhRQISOCeB3EbWPFjn7P/qViMgXzPqopqfJ0pgBAK4sd+ICDeYG6E3d2wDAwbTVbN1R+jeSgINEcgsvEZfNdQpvVQFAfnniPi5XipsPSUggVUJ5OT5CxHxrVWv7MWGJ6AFMnwX20AJ3CSAaODGdh7UgfIwAQSExUP6Ph9G5wkS6J6Aobvdd+GxDUgB+dL0FnJsbby7BCSwFwEir74aEf/mOrC9kI93HwQEE/b9iEBELBKQwDkIkP8OtxVrwMiBZZHAwwQyG+9b01sIkRgWCUhgbAJEXn04bV9rItWx+3rT1uXcB6vRX5kWFbKYyDeSTbF7cQkcSoB1H1gfCIlFAtUEUkAYSKxIf3USD35+RyGp5uqJEmiVgEkTW+2ZDus1j77irYS3E7a1xAr5p4j402mxYYfNs8oSkMCMAN4G5j3d88Oh8TSBa+G7+EXfjIhvR8T3TKKCa8uFRk8j9wISOIwAooF3AStEN/Vh3TDOjW+t/yDM7y8i4otTcxEPrBNdW+P0vy05DwE+z0ycEyjjxPl5+n3Tli5ZQEiYHwOOSXZKCgkDUYtk0+7x4hJYjUDud44V4ud2NaznvtASAUlCzI8gJJ9TSM49aGx9dwTwHCAcrvnoruvarvAjApItIf0BQsJEe2mR6Npqu6+t3TkJ5OcV8chNo85JwlavTqBGQK4JCX9ngg7XlgN19a7yghJ4mEDmunrZz+TD7DxhAYFnBITLs34E1xYDNV1b/B1/K2bzewvq4CESkMD6BMiwS7QVritf6Nbn6xVXzsKbQvJSQTZTRWuVONwksA8BXFVvR8TXXeuxD/Az3+VZC+QSO956sEh488l5Eo4j7py3IsTEGPQzjzrbvhWBTFHCHCU/WySwKYEtBCQrjHsLEeGLFCllwaRmvgQXl2KyaRd78RMQ4KXt3cnq4OXNz9QJOr2FJm4pIGX7SjHBxC4tE8SEt6UPHPgtDAnr0BkBrHoWCWJ18LNFArsR2EtA5g1Ky6R0czFfwuQ7HwJCgi0SkMBlAryQsbCXz8qXdVc5TI4icJSAlO3F/M6NbcoJ+EybYgTJUaPD+7ZIIF++0qpvsY7W6SQEWhCQEjWmeIoJb1iIB39DTEydcpJBaTMvEuBFCzfVv0fEP+qucpS0QKA1AZlbJj8fEb9e5OFyvqSFUWMd9ibAjqEvTIEnmdNq7zp4Pwl8F4GWBaSsLBPvaZmwYNH5EgfzGQgw7omuMoPuGXq7wzb2IiAlWnzAhCpi0hPN5WLFDgeeVb5JAOFgP56Ppxcns+c6YJok0KOAJEjmRlJMMo1KLlbEzDeNSpNDzkrdIcAqcnJXYXEbQOJwaZpAzwIyny+5tPqdMEfE5KPpu29yTQ/HU1cOwUA8Xp/mOk4Nw8b3QWAUAZnPl+ACwDopw4I5BguFtzq+UlhctdvHWB21lm9EBNtFk5mBKCtfckbt6QHbNaKAlN1ErDxiwnxJfi9Xwf9HRPxgISqICV+siveDPOCAb6hJjEeiq7COEQ7dVQ11jlVZRmB0AblEAVFJQWEeha/crrc8HgHhQ52igsVChlOFZdnY8qjLBMgLh7uVzx7fFQ5HSrcEzigg1zoLIUFY8ovf5y4wzkVASlcYPyMsusK6/RjsUvHXJrcq6zmwOFzPsQt2b7IlAQXkPt1SUPLncvOsvEJaLGm18F2L5T7fkY/A2sXiQDAYC2RUUDhG7vGTtU0BqevwdIMhKKXlUs6vXBKWXABJfL+uizr2rZ+VokEQxxcm0UA4dH223nPW72ECCsjDyG6ekMJSigo/X7JYuBAiMp9r4Xcm8S39EKCPsTQQDdZwED6eX/20wppK4EECCsiDwCoPR1hywj6tlvz9mriUApMik/MvfCd6x3mXyg554rSM7COKKvuwDA3XsnwCrqf2RUABaaO/EJW0XvhO4QFFuWXBZO3TkklB4Xeuw3fcZQhOik8bLW6/Fin6BFK8OPUDf+OLeYwUDUW8/b60hhsRUEA2ArvRZVNkuHw+zC59z/8jPlkQEB6GuMcyTf4nEfHXEfHTEfHNyarhOOZysHDSb58CtFGzDr1sWoSsCfqZSbhTgLNiuKMU4EO7yZu3SEABabFXtq1TikpaOggHb9g8SPNtGl9+ike6bKhVutL4G+dR0srh3DynJTcO7SoFNwUjRTEttfentRkji+W2I8urn46AAnK6Ln+qwXPxwc2WFhD/y59z/UwuwuSm137mf7jZSgG6VsnS2sqIt7lVxjqL3PI1c6BxPdxOpSvPqKinhoInS+DT1bAWCWxFoBSVnHDmXuXf0xLib5fCoMu6zYWmDC5Ia6gMNNiqXV5XAhKYTHZBSEACEpCABB4moAXyMDJPkIAEJCABCCggjgMJSEACEqgioIBUYfMkCUhAAhJQQBwDEpCABCRQRUABqcLmSRKQgAQkoIA4BiQgAQlIoIqAAlKFzZMkIAEJSEABcQxIQAISkEAVAQWkCpsnSUACEpCAAuIYkIAEJCCBKgIKSBU2T5KABCQgAQXEMSABCUhAAlUEFJAqbJ4kAQlIQAIKiGNAAhKQgASqCCggVdg8SQISkIAEFBDHgAQkIAEJVBFQQKqweZIEJCABCSggjgEJSEACEqgioIBUYfMkCUhAAhJQQBwDEpCABCRQRUABqcLmSRKQgAQkoIA4BiQgAQlIoIqAAlKFzZMkIAEJSEABcQxIQAISkEAVAQWkCpsnSUACEpCAAuIYkIAEJCCBKgL/D4GRMwaW90peAAAAAElFTkSuQmCC', 1, '', '1,2,1,3,1', '2021-11-08', '2021-11-08', 1, 1, '2021-11-08', 0),
(11, '2021-11-08', '2021-11-09', 'Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 Sample Incident Details - 1 v', 69, 'Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 Sample Management Response - 1 v', 'Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 Sample Contractor/Employee Contracted Response - 1 ', 'Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1Sample Action Taken By Management - 1', 1, 1, 'FuNOI', 5, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAADJCAYAAAANSWRHAAAAAXNSR0IArs4c6QAAFTFJREFUeF7tncurLUcVh1d8oAONBoIzH0GiogMf4EyI/gVRMvAxUAORBAUfMx3EqxkpCNGBAyUhCkLMSIPiNN5BQHAQ78g312SmEWIUggY04Xetheu2++zdXbuquqr7a9jsc8/pqlr9rb7161WrqvoG44AABCAAAQhkELghowxFIAABCEAAAoaAcBNAAAIQgEAWAQQkCxuFIAABCEAAAeEegAAEIACBLAIISBY2CkEAAhCAAALCPQABCEAAAlkEEJAsbBSCAAQgAAEEhHsAAhCAAASyCCAgWdgoBAEIQAACCAj3AAQgAAEIZBFAQLKwUQgCEIAABBAQ7gEIQAACEMgigIBkYaMQBCAAAQggINwDEIAABCCQRQABycJGIQhAAAIQQEC4ByAAAQhAIIsAApKFjUIQgAAEIICAcA9AAAIQgEAWAQQkCxuFIAABCEAAAeEegAAEIACBLAIISBY2CkEAAhCAAALCPQABCEAAAlkEEJAsbBSCAAQgAAEEhHsAAhCAAASyCCAgWdgoBAEIQAACCAj3AAQgAAEIZBFAQLKwUQgCEIAABBAQ7gEIQAACEMgigIBkYaMQBCAAAQggINwDEIAABCCQRQABycJGIQhAAAIQQEC4ByAAAQhAIIsAApKFjUIQgAAEIICAcA9AAAIQgEAWAQQkCxuFIAABCEAAAeEegAAEIACBLAIISBY2CkEAAhCAAALCPQABCEAAAlkEEJAsbBSCAAQgAAEEhHsAAhCAAASyCCAgWdgoBAEIQAACCAj3AAQgAAEIZBFAQLKwUQgCEIAABBAQ7gEIQAACEMgigIBkYaMQBCAAAQggIGPdA69N5r7JzF4Tftbv9bnVzH4fLunnZnZ5rEvEWghAYBQCCEh/npIQ3G5mEon3J2F415lm/tjM9HnUzP52Zl0UhwAEIHCNAALSz43wySQcH1xg0rNJEP6Uvp8zs6fM7BchOpH4qE5FLBKP76Wo5FdmpnIcEIAABLIIICBZ2IoWUud+ycymUYaGnjQE5eKgzj/+vNQIRTNqy6Oal5nZ06kNickVM9M3BwQgAIFZBBCQWZiqnKQhqvtTp+4NfD8NNWm4qeahtl9vZnckQYk5FRctiYkLC8NeNb1B3RAYlAACso7jFAk8bGavTM0rN/GVFSMA5V0UASk60Uc/e5JeJiry0cdFRT+TnF/n3qFVCHRDAAFp7woJxedScvzPZnZPijraW3K8RUUlEhL/SFiiqERhUdSij4bBiFZ68yT2QKASAQSkEtgLqlUn/Fj6m4arlDgf7dA1RHG5bXIBilJ8xhc5ldG8i70QWEAAAVkAq8CpmgH1iTT8o2GsrTytxyjFZ3wJl65PYiKxVITCAQEIbIgAAtLWmXoif6eZ3Zmm07ZtvV1rPnVYYqLrdTH5ZlqLQmTSzhe0BIFqBBCQamgPVqyncA35fMHM1Jnu4dBwl4Tk82b2xnTB4qDrVyJ+K1HYHnzJNULgOgIISNsbwgXkq2nWVdvW129NYiIhUR5FkQn5kvV9ggUQyCaAgGSjyyqoGVhaNKgnb3Wiez182rDERMNdikyISvZ6N3DdwxJAQNq6TrOuHkpNwv6/IKZDXFpj4ol3ciVt709ag8AiAnRii3CdfXKcxvvuFRcOnn0hlSpQRCKR9cS7ohLNXNMsLg4IQKAzAghIW4do6OaZ1OSHOl1A2JbI4daUdPfNJXWGEu0a/pOQkHTvwUPYAAF2421+D0QBudvMvtvcgrEa1PCWhENrZ1xIFJFoEgJCMpYvsXaDBIhA2jpVCeMnUpN7nYmVQ9xnb2kLGD8kLN9CSHJwUgYCZQggIGU4zq0lCghDWHOp/e88RXBaP+IRiRLu+reEhAMCEGhMAAFpCzwm0RGQfPaKSDSU5ftwKdmuxZnM2spnSkkILCaAgCxGdlYBXweiSpiFdRbKa4WVbFcE4ivct75FzPnEqAECBQkgIAVhzqhKnZ2P48N+BrAZp0zzI1pDouiOAwIQqEyATqwy4En1vpnik2kBXdvWt92a1pAowtM7S5QbkYgwpLVtn3N1KxNAQNo5IE7hHfVdIO1o5bWkaEQRiBYiapqvRIVFiHksKQWBkwQQkJOIip3AFN5iKI9WNJ2ppahEU6Y5IACBwgQQkMJAj1QXZ2CR7K3PPQ5pkRepz5sWdkgAAWnn9Cgge3ofSDvC/9+Soj5N8fW8yAdSfmRNm2gbApshgIC0c6XG56+m5rTwTU/IHPUJaEhLIqK8iJLriv54vW597rSwAwIISFsnK7Grp2HNDtI6EI52BPx99GpRGzWSXG/HnpY2SgABaevY2IndwnBKW/hJOLQWRyKubzZlbO4CGtwSAQSkrTc/bGY/ZBirLfRJa1q9/g0ze3MaytJ6EXb2XdUlND4qAQSkvec0Dq+tN9Rp3dS+eVpMr9HVzCz3g5LrLDrk1oDAQgIIyEJgBU6P25kwG6sA0MwqphsysrllJkiK7ZcAAtLe93FFuqIR5UI41iOgSOT21DyLDtfzAy0PSAABWcdpMZnOosJ1fBBbjVEhL/pa3x9YMAgBBGQdR8VtTRSFaEqvciJabKj1Cvq7hlj0UcSijx86T2X0rY+P3fvv4nny76vM7KWhDtUZj1j/tK1TdNSmjpiE9p//ZWavCDPN/FyvUxtKTn93qr2af49b7UvgJewcEIDAEQIIyHq3Rxw6UUc67dhl2bMHkrvq5CUyWzp0/S6A/i1h1PW/YGZXDghVjeuPkQjDWTUIU+emCCAg7d2p6EKvZNUTrtYj+PFHM/tpEgx1nnNmBUlMPErxevx3Hqm83cyeC1GC/q6/+XckoN+rPo8i4jmHBE5lY3QU63qDmf39AF4/fxr5LBFFsXEbYxSm5mJ0dkiAT3k8Di+SWD9Fi7/vmgAC0s79Eo5L6S16Hl38zszem0yIQ1ntrOqvpSiI70h8XBT1N3/74FLLY5QjAfJ/Xz5QUYwOeXPkUtKcvxsCCEgbV2s4RG8iVEeosX/9W52Unp61L1N8tzcL2077xPNDMUckgXahyREZ+cGF5ekk9m9JQsNMudM+4YwdEkBA6js9JmcPzfCJm/3JGjZaLOOTOAlB4qJDkxRcZOLw4akWf2tmj5vZU+lEHz6Lkwg0XDadyHCqXv4OgaEJICB13acdd+9PTWi180W7wKqz09Ovd2pK5mqRIUc9AhISCYtHLvHnJeIytdCjSvlaw2Nzcln1rpKaIVCRAAJSD26cqjsnGaunYw1reefF+pB6vjlVs4uKfPLZM7ecUVSixLx2/+1p2vIpBvwdAicJICAnEWWdoIjisTSjacnCtPjSKT3JSnh4d0WWC4oVig8CD5vZ82koLDfPoiFKPShwQGB4AghIHRd6YlwJc3VAS3Z71W6xemL1t+hJRBgGqeOnubX61F75UQl1n+4swZd/fQHo3PrkTw1T8k6SucQ4r0sCCEh5t3w5vWdCNedOAY0ios5GIsLwR3lfLanRXwamTl8vpJoenlOR7/SZE6F8xMweWWIE50KgJwIISFlvxOGOr5vZF8+oXp3Qj1L5n5jZxxdGMmc0TdEDBKI/5jwY6F6Q0OhzUVJes7veBm0IjEoAASnnOT2BPpHyHpp9ow5nydDVIUvU+TyU/sDMrHK+yq3Jhyb1rVl1cw/5UdO5p1HJP8zsxrmVcB4EeiOAgJTzSJyyO+cJdW7LcR0J+zPNpVbnPE2OuJqq/pSZPbCwGT1UfM3M3prKaY8vX6OysCpOh8D6BBCQcj7wNw1eNEZ+Tktxa405U4LPaYuyxwl4jism1JcwizPtWDS6hBzndkcAASnjktgplIw+3Lq4Wl1CpTUiTO8t47ultcgX8oHyGjkPC3FYcskU76V2cj4EqhNAQMogjsNMtZhq+ESioXF0Nl4s47fcWuJw5dKIMD5sICC5HqBcFwRqdXZdXFxDI1oIiC4ndj6a3qtE7rmJ+oaYNtWUT+tdKuYeTepb0QiR5KZui31dDAJSxt/xRUTH9rwq0VocAuHNeSWI5tUR/aB9y3QPcEBgVwQQkDLujgLyoJndVabaC2uJ7TG9tzLsI9X7xInchPp6ltMyBAoQQEAKQDSz+8zs3lSVtv1+X5lqj9YSZ2YxvbcB8ANNxFwI+Yx1fECrKxJAQMrAn26CeFOZak/WojyIvwqW3XtP4qpyAlFIFaxUOgIBBKScl14IVbXqzOPMLDW/dEZQuavfb01xAkUrv++XNlfeFQEEpJw74pDS0pk551ghEVHbHomQ0D2H5vKycXX6o+Gd98trogQEBiOAgJRzWNxsT7Vqemar95tPX4tLTqScX+fUFIcSNXzJ1Oo51DhneAIISFkX+nsjvFZFIprW22or9hgFMcW3rG+P1RaT6QxjteNOSysTQEDKOyB24qr9n2b2pYbrBBR9qEPTVhsto6DyJMepMQ5j5WxvMs6VYikEAgEEpPztoOEkdeCXJlVLWJSfaBGNxBdSaThFURBvNSzv61ijr0zXd6tZeHWviNohcIIAAlLvFtFakJ+Z2atDExIPiUiLd2JP8yJaOc0rVOv5O0aeNTbUrGc5NUMgkwACkgluQTF/CVEsomEmbeXdItmqtj5jZjend61LwFq0uwDRJk4lD7IJN3IRSwggIEto5Z8b1wp4LRpSUsK1xdCShrRkg6b6SjzU2RGN5PvzUMn4OmPyIGXZUlunBBCQdo5RB6NhjulrTbWXlbbBqB0VKNGrtm5PlyzhUjTCbrDl7oG4Q+8t5aqlJgj0SQABaesX5SU0vdY7cW/dowItRKstJDHBrvaVl5FNempukeBvS7xtazEPwnqQtuxpbQUCCMgK0NN7PdRpT6MRdeCKEpQfqXn4uyg0lBVtUPvqBCUmLYbWal7jGnW33NZ/jeujTQhcRwABWe+G8E5cuQmt2YiHC4k68hYRiaISfaIdskG2tYiK1vNC2ZbjpprfMbN7ylZPbRDoiwACsr4/JCSe5L4oImkhJG6HbIlDbH81sx+kfMn6tPq34Hkze7mZ/cHMbu3fXCyEQD4BBCSfXY2SeoLVeo1pNOCdeItku67rUHSkSEhDNORKjnuefbFq/M+gzi4JICBduuVaBy4RUY7Cd9l1Sz1H0WIxotqUoGkoy6MjF5JW61j69NDFVsVEeu3XG4/GBns3RgAB6d+hmn77UTO7+0DCu0XC3SOS6TBbq4R//x663sKYSGdr/dG8h72LCCAgi3CtfrI6cUUE02nAPg239poORUaKRmSDJ9w1ZOPJ9tUBdWBAXDTKa247cAgm1COAgNRjW7NmLUpUJx47crWnztzzFDXbny5KVFsSLw1rtRpaq3l959QdBUQ8NAzJAYFNEkBAxnbrRes5WiW8JWQSrNsCxr1P/0VAxv4/hfULCCAgC2B1fqpmcOlpd43hLU/4T4Vkj9t5xBwIQ1id/6fBvPMIICDn8euxtIaXJCTT4a0WW5ZIxPQELiF50sxky96OuPuyXmm89yG9vfl/V9eLgGzX3cemAquTU+K91ipzCcde99XSdfuUZ6bxbvf/F1dmZgjIPm4DT7prqGm62l1PyBIUicleO/1Sd4FE+5lQGRsqliJLPV0SQEC6dEtVo46JiWZxSUxcUKoassHK415Yex3C26BbuaSLCCAg+743NNSkqEQdnz7TTR09OrnM7ryzbpRPm9m305mPm5lea8wBgc0SQEA269qsC1N04mJykaA8Yma/QVAO8r3PzO5Nf3nQzO7K8gKFIDAIAQRkEEetZKYiFAmJhEUfza66Evbn8ghF605qJeRXuvSsZnkfSBY2Co1KAAEZ1XPr2e2ioqEv/Rw3e1QSXh/lUJRPUR5gTy+mYife9e5LWl6BAAKyAvSNNamZRx6l+Pc0l6KOVVHK9Fv3n/9udCxad/NQughFYxJYDghsmgACsmn3rnZxikx82EvfEpm4Sv2YYYpgJDb+Jkb/2acY61v16fuqmb0knXvOFGTZqzr9mArgv83s5jRFV1FVbEvlHjCzO0J51n+sduvRcEsCCEhL2rSlztY7axcWUdHv48dJTX837dh/md76Fzt/lXXxcbHx+vR7tbv0kGhM18/4zsfvMbMbQ4V3pkWaS9vgfAgMRwABGc5lGBxE6D8pAnFRiFunuFhFMXJx8ahm+r75GPlE0H8xs9eldj0HNBWUX5vZx3aW8+Fm3DkBBGTnNwCXfxYB5Xx0+OSBsyqjMARGI4CAjOYx7IUABCDQCQEEpBNHYAYEIACB0QggIKN5DHshAAEIdEIAAenEEZgBAQhAYDQCCMhoHsNeCEAAAp0QQEA6cQRmQAACEBiNAAIymsewFwIQgEAnBBCQThyBGRCAAARGI4CAjOYx7IUABCDQCQEEpBNHYAYEIACB0QggIKN5DHshAAEIdEIAAenEEZgBAQhAYDQCCMhoHsNeCEAAAp0QQEA6cQRmQAACEBiNAAIymsewFwIQgEAnBBCQThyBGRCAAARGI4CAjOYx7IUABCDQCQEEpBNHYAYEIACB0QggIKN5DHshAAEIdEIAAenEEZgBAQhAYDQCCMhoHsNeCEAAAp0QQEA6cQRmQAACEBiNAAIymsewFwIQgEAnBBCQThyBGRCAAARGI4CAjOYx7IUABCDQCQEEpBNHYAYEIACB0QggIKN5DHshAAEIdEIAAenEEZgBAQhAYDQCCMhoHsNeCEAAAp0QQEA6cQRmQAACEBiNAAIymsewFwIQgEAnBBCQThyBGRCAAARGI4CAjOYx7IUABCDQCQEEpBNHYAYEIACB0QggIKN5DHshAAEIdEIAAenEEZgBAQhAYDQCCMhoHsNeCEAAAp0QQEA6cQRmQAACEBiNAAIymsewFwIQgEAnBBCQThyBGRCAAARGI4CAjOYx7IUABCDQCQEEpBNHYAYEIACB0QggIKN5DHshAAEIdEIAAenEEZgBAQhAYDQCCMhoHsNeCEAAAp0QQEA6cQRmQAACEBiNAAIymsewFwIQgEAnBBCQThyBGRCAAARGI4CAjOYx7IUABCDQCQEEpBNHYAYEIACB0QggIKN5DHshAAEIdEIAAenEEZgBAQhAYDQCCMhoHsNeCEAAAp0QQEA6cQRmQAACEBiNAAIymsewFwIQgEAnBBCQThyBGRCAAARGI4CAjOYx7IUABCDQCQEEpBNHYAYEIACB0QggIKN5DHshAAEIdEIAAenEEZgBAQhAYDQCCMhoHsNeCEAAAp0QQEA6cQRmQAACEBiNAAIymsewFwIQgEAnBBCQThyBGRCAAARGI/AiuyfH6HYbPlQAAAAASUVORK5CYII=', 'data:image/png;base64,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', 1, '', '1,1,3,2,3', '2021-11-08', '2021-11-08', 1, 1, '2021-11-08', 0),
(12, '2021-12-11', '2021-12-20', 'fdasfdasf', 33, NULL, NULL, NULL, 0, 1, 'OhUfX', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ta_cir_address`
--

CREATE TABLE `ta_cir_address` (
  `id_question` int(11) NOT NULL,
  `report_number` int(11) DEFAULT NULL,
  `issue_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adviser_answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ta_cir_address`
--

INSERT INTO `ta_cir_address` (`id_question`, `report_number`, `issue_address`, `adviser_answer`) VALUES
(14, 10, 'Issue(s) to be address 1', '1. Issue(s) to be address 1 Answer 1'),
(15, 10, 'Issue(s) to be address 2', '1. Issue(s) to be address 1 Answer 2'),
(16, 11, 'Sample Issues to be Address - 1', 'Sample Company Representative - 1'),
(17, 11, 'Sample Issues to be Address - 2', 'Sample Company Representative - 2'),
(18, 12, 'fdsafds', NULL),
(19, 12, 'afdsafdsa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ta_cir_identified`
--

CREATE TABLE `ta_cir_identified` (
  `report_number` int(11) DEFAULT NULL,
  `issue_identified` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ta_cir_identified`
--

INSERT INTO `ta_cir_identified` (`report_number`, `issue_identified`) VALUES
(10, 'Issue(s) Identified 1'),
(10, 'Issue(s) Identified 2'),
(11, 'Sample Issue - 1'),
(11, 'Sample Issue - 2'),
(12, 'dsafdasfd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@mail.com', '2021-09-21 02:02:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '94BNQXl7zldU4A1jhft0vlMmCxSna1goOJBmzPwtgdO239etj80efriGrUiM', NULL, NULL, '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(2, 'User', 'user@mail.com', '2021-09-21 02:02:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '1pJXTgxRAM', NULL, NULL, '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(3, 'Prof. Casper Terry', 'bryana13@example.com', '2021-09-21 02:02:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'gLtErqJvSi', NULL, NULL, '2021-09-21 02:02:21', '2021-09-21 02:02:21'),
(4, 'Zac', 'allanaranda4@gmail.com', NULL, '$2y$10$e9MEK01naW8k4JiVaSXXNuFK47vYzrKGuGLe.g/rSuGWvJ6kAmvoe', NULL, NULL, NULL, NULL, NULL, '2021-11-04 04:15:59', '2021-11-08 06:13:25'),
(5, 'Wilfred Cancio', 'wilfred@eliteinsure.co.nz', NULL, '$2y$10$OcUu8jY7mM77.rUcPrqVzu8RefrCfsFbv4ejXJWtTtONeLcGMMB9W', NULL, NULL, NULL, NULL, NULL, '2021-11-04 06:23:08', '2021-11-04 06:23:08'),
(6, 'Leif Lagrimas', 'executive.admin@eliteinsure.co.nz', NULL, '$2y$10$1A.gK0zBhZdt.iOMHEC9IetSr1Olx5PV0AH85fBo4bXftZBcaInJm', NULL, NULL, NULL, NULL, NULL, '2021-11-05 00:08:30', '2021-11-05 00:08:30'),
(7, 'Mark Ramirez', 'mark@eliteinsure.co.nz', NULL, '$2y$10$otyIk4BTdL8oadlJFyQ19.nJNYlSrNcEz5QFU8/1Q6OanxqhGveNy', NULL, NULL, NULL, NULL, NULL, '2021-11-25 00:51:06', '2021-11-25 00:52:01'),
(9, 'Dan Ray Lacsi', 'danray@mail.com', NULL, '$2y$10$DezeYm89WNFn9XdbpPh1Quyo9w7.WPFpsvju2r9KlC1N07hFrmBLS', NULL, NULL, NULL, NULL, NULL, '2021-12-10 02:48:16', '2021-12-10 02:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `vulnerable_clients`
--

CREATE TABLE `vulnerable_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `policy_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_at` date NOT NULL,
  `nature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vulnerable_clients`
--

INSERT INTO `vulnerable_clients` (`id`, `name`, `insurer`, `policy_number`, `issued_at`, `nature`, `created_at`, `updated_at`) VALUES
(1, 'Tom Cruise', 'AIA', '111', '2021-10-18', 'Physical', '2021-10-17 23:30:25', '2021-10-17 23:30:25'),
(2, 'Jose Rizal', 'AIA', '000', '2021-10-22', 'Physical', '2021-10-22 03:34:35', '2021-10-22 03:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `vulnerable_client_notes`
--

CREATE TABLE `vulnerable_client_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vulnerable_client_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vulnerable_client_notes`
--

INSERT INTO `vulnerable_client_notes` (`id`, `vulnerable_client_id`, `created_by`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Test notes 1', '2021-10-17 23:30:25', '2021-10-17 23:30:25'),
(2, 2, 1, 'The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. The quick brown fox jumps over a lazy dog. ', '2021-10-22 03:34:35', '2021-10-22 03:34:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisers`
--
ALTER TABLE `advisers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claims`
--
ALTER TABLE `claims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claim_notes`
--
ALTER TABLE `claim_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_notes`
--
ALTER TABLE `complaint_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policy_notes`
--
ALTER TABLE `policy_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `policy_id` (`policy_id`);

--
-- Indexes for table `policy_view`
--
ALTER TABLE `policy_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `policy_id` (`policy_id`);

--
-- Indexes for table `pol_subs`
--
ALTER TABLE `pol_subs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `policy_id` (`policy_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_histories`
--
ALTER TABLE `site_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_manuals`
--
ALTER TABLE `site_manuals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ta_cir`
--
ALTER TABLE `ta_cir`
  ADD PRIMARY KEY (`report_number`);

--
-- Indexes for table `ta_cir_address`
--
ALTER TABLE `ta_cir_address`
  ADD PRIMARY KEY (`id_question`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vulnerable_clients`
--
ALTER TABLE `vulnerable_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vulnerable_client_notes`
--
ALTER TABLE `vulnerable_client_notes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advisers`
--
ALTER TABLE `advisers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `claims`
--
ALTER TABLE `claims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `claim_notes`
--
ALTER TABLE `claim_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `complaint_notes`
--
ALTER TABLE `complaint_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `policy_notes`
--
ALTER TABLE `policy_notes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `policy_view`
--
ALTER TABLE `policy_view`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `pol_subs`
--
ALTER TABLE `pol_subs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_histories`
--
ALTER TABLE `site_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_manuals`
--
ALTER TABLE `site_manuals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ta_cir`
--
ALTER TABLE `ta_cir`
  MODIFY `report_number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ta_cir_address`
--
ALTER TABLE `ta_cir_address`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vulnerable_clients`
--
ALTER TABLE `vulnerable_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vulnerable_client_notes`
--
ALTER TABLE `vulnerable_client_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `policy_notes`
--
ALTER TABLE `policy_notes`
  ADD CONSTRAINT `policy_notes_ibfk_1` FOREIGN KEY (`policy_id`) REFERENCES `policies` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `policy_view`
--
ALTER TABLE `policy_view`
  ADD CONSTRAINT `policy_view_ibfk_1` FOREIGN KEY (`policy_id`) REFERENCES `policies` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pol_subs`
--
ALTER TABLE `pol_subs`
  ADD CONSTRAINT `pol_subs_ibfk_1` FOREIGN KEY (`policy_id`) REFERENCES `policies` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
