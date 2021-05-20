-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 01:48 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nutrition`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted','bitbucket_notification_received','github_notification_received') COLLATE utf8_unicode_ci NOT NULL,
  `log_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `log_type_title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_type_id` int(11) NOT NULL DEFAULT 0,
  `changes` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `log_for_id` int(11) NOT NULL DEFAULT 0,
  `log_for2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for_id2` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(1, '2021-04-25 06:43:29', 2, 'created', 'task', 'Meal assessment', 1, NULL, 'project', 1, '', 0, 0),
(2, '2021-04-25 06:44:30', 2, 'updated', 'task', 'Meal assessment', 1, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2021-04-25\";}s:8:\"deadline\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2021-04-26\";}}', 'project', 1, '', 0, 0),
(3, '2021-04-25 06:45:25', 2, 'created', 'task', 'Weight observation', 2, NULL, 'project', 1, '', 0, 0),
(4, '2021-04-25 06:46:31', 2, 'updated', 'task', 'Weight observation', 2, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2021-04-27\";s:2:\"to\";s:10:\"2021-04-30\";}}', 'project', 1, '', 0, 0),
(5, '2021-04-25 06:46:37', 2, 'updated', 'task', 'Weight observation', 2, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2021-04-30\";s:2:\"to\";s:10:\"2021-04-27\";}}', 'project', 1, '', 0, 0),
(6, '2021-05-16 15:24:58', 1, 'created', 'task', 'Meals Registration', 3, NULL, 'project', 2, '', 0, 0),
(7, '2021-05-16 15:27:58', 1, 'created', 'task', 'First meal', 4, NULL, 'project', 2, '', 0, 0),
(8, '2021-05-17 09:28:22', 1, 'updated', '', '', 1, 'a:7:{s:30:\"Martial Status[:1,select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:7:\"Married\";}s:32:\"Education Status[:2,select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:10:\"university\";}s:39:\"Recent Change in weight[:3,select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:9:\"Increased\";}s:34:\"recent change weight[:4,text,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"10\";}s:36:\"recent change duration[:5,text,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"30\";}s:54:\"Diseases and chronical condition[:6,multi_select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:21:\"Hyper Tension,Colitis\";}s:35:\"Women History[:7,multi_select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:32:\"Amenorrhea,Irrgular menstaration\";}}', '', 0, NULL, NULL, 0),
(9, '2021-05-17 09:58:36', 1, 'created', 'task', 'visit no1 ', 5, NULL, 'project', 3, '', 0, 0),
(10, '2021-05-17 09:59:37', 1, 'updated', 'task', 'visit no1 ', 5, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 3, '', 0, 0),
(11, '2021-05-17 10:44:53', 1, 'created', 'task', 'visit for Dr. Badria', 6, NULL, 'project', 3, '', 0, 0),
(12, '2021-05-17 10:45:09', 1, 'updated', 'task', 'visit for Dr. Badria', 6, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 3, '', 0, 0),
(13, '2021-05-17 10:50:44', 1, 'updated', 'task', 'First meal', 4, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(14, '2021-05-18 04:19:35', 1, 'updated', '', '', 2, 'a:1:{s:30:\"Martial Status[:1,select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:6:\"Single\";}}', '', 0, NULL, NULL, 0),
(15, '2021-05-18 04:22:25', 1, 'created', 'task', 'Device', 7, NULL, 'project', 5, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `status` enum('incomplete','pending','approved','rejected','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incomplete',
  `user_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `checked_at` datetime DEFAULT NULL,
  `reject_reason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `status`, `user_id`, `in_time`, `out_time`, `checked_by`, `note`, `checked_at`, `reject_reason`, `deleted`) VALUES
(1, 'pending', 2, '2021-04-24 10:18:43', '2021-04-25 05:32:23', NULL, 'check out', NULL, NULL, 0),
(2, 'incomplete', 2, '2021-05-16 15:59:40', NULL, NULL, NULL, NULL, NULL, 0),
(3, 'pending', 5, '2021-05-16 05:00:00', '2021-05-16 10:00:00', NULL, '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `checklist_items`
--

CREATE TABLE `checklist_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `is_checked` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `checklist_items`
--

INSERT INTO `checklist_items` (`id`, `title`, `is_checked`, `task_id`, `sort`, `deleted`) VALUES
(1, 'first meal', 0, 1, 0, 0),
(2, 'second meal', 0, 1, 0, 0),
(3, 'third meal', 0, 1, 0, 0),
(4, 'weigh', 0, 2, 0, 1),
(5, 'weight scale', 1, 2, 0, 0),
(6, 'height', 1, 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('hvteltf4oinjnfbme47asuv0d9qjnfg8', 'fe80::8083:c5fe:9ee3:d038', 1621508036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632313530343938373b757365725f69647c733a313a2232223b),
('24gsbvcq688qt4gj0ptesqfhhs179vvl', 'fe80::7877:260e:e039:44ed', 1621511280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632313531313238303b);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `group_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_lead` tinyint(1) NOT NULL DEFAULT 0,
  `lead_status_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `lead_source_id` int(11) NOT NULL,
  `last_lead_status` text COLLATE utf8_unicode_ci NOT NULL,
  `client_migration_date` date NOT NULL,
  `vat_number` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `address`, `city`, `state`, `zip`, `country`, `created_date`, `website`, `phone`, `currency_symbol`, `starred_by`, `group_ids`, `deleted`, `is_lead`, `lead_status_id`, `owner_id`, `created_by`, `sort`, `lead_source_id`, `last_lead_status`, `client_migration_date`, `vat_number`, `currency`, `disable_online_payment`) VALUES
(1, 'Patient 1', '', '', '', '', '', '2021-04-24', '', '', '', '', '', 1, 0, 0, 0, 2, 0, 0, '', '0000-00-00', '', '', 0),
(2, 'Ammar Omer', '', '', '', '', '', '2021-04-24', '', '90661945', '', '', '2', 1, 0, 0, 0, 2, 0, 0, '', '0000-00-00', '', '', 0),
(3, 'Ammar Ali', '', '', '', '', '', '2021-04-25', '', '', '', '', '', 1, 0, 0, 0, 3, 0, 0, '', '0000-00-00', '', '', 0),
(4, 'badriya', 'muscat', '', '', '', '', '2021-05-16', '', '90661945', '', '', '2', 0, 0, 0, 0, 3, 0, 0, '', '0000-00-00', '', '', 0),
(5, 'AMMAR', '', '', '', '', '', '2021-05-17', '', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(6, 'amaal', 'sumail', 'medra', '', '', '', '2021-05-18', '', '26626252', '', '', '', 0, 0, 0, 0, 4, 0, 0, '', '0000-00-00', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `client_groups`
--

CREATE TABLE `client_groups` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `client_groups`
--

INSERT INTO `client_groups` (`id`, `title`, `deleted`) VALUES
(1, 'VIP', 0),
(2, 'Dietation', 0),
(3, 'Device', 0),
(4, 'Medical nutrition supplement', 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8_unicode_ci NOT NULL,
  `example_variable_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_table` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_estimate` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_order` tinyint(1) NOT NULL DEFAULT 0,
  `visible_to_admins_only` tinyint(1) NOT NULL DEFAULT 0,
  `hide_from_clients` tinyint(1) NOT NULL DEFAULT 0,
  `disable_editing_by_clients` tinyint(1) NOT NULL DEFAULT 0,
  `show_on_kanban_card` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `title`, `placeholder`, `example_variable_name`, `options`, `field_type`, `related_to`, `sort`, `required`, `show_in_table`, `show_in_invoice`, `show_in_estimate`, `show_in_order`, `visible_to_admins_only`, `hide_from_clients`, `disable_editing_by_clients`, `show_on_kanban_card`, `deleted`) VALUES
(1, 'Martial Status', 'Martial Status', '', 'Single,Married,Divorced / Widowed', 'select', 'tickets', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Education Status', 'Education Status', '', 'illtrate,primary / intermediate / secondary,university', 'select', 'tickets', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Recent Change in weight', 'Recent change', '', 'None,Increased,Decreased', 'select', 'tickets', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'recent change weight', 'KG', '', '', 'text', 'tickets', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'recent change duration', 'days', '', '', 'text', 'tickets', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Diseases and chronical condition', 'Select all applicable', '', 'Hyper Tension,Cardiac,Triglycreide,High Cholesterol,Colitis,Hepatitis A,Hepatitis B,Hepatitis C,Hypotension,Anemia,Pregnant First Trimester,Pregnant Second Trimister,Pregnant Third Trimister,Lactaiting,Kidney Stones (Oxalate),Kidney Stones (Calcium),Liver Fat,Breast,Cancer,Obecity First Class,Obecity Second Class,Morbidit Obecity,Ulcer,Complementary Feeding,Over Weight,Under Weight,Sever,Under Weight,Gout,Medical Supplement Feeds,NGT,Diabetes Mellitus type 1,Diabetes Mellitus type 2,GDM,Nutrition Assessment', 'multi_select', 'tickets', 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Women History', 'Select all applicable', '', 'Amenorrhea,Menopause,Irrgular menstaration,Excessive Bleeding,Infertility', 'multi_select', 'tickets', 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `related_to_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `related_to_type`, `related_to_id`, `custom_field_id`, `value`, `deleted`) VALUES
(1, 'tickets', 1, 1, 'Married', 0),
(2, 'tickets', 1, 2, 'university', 0),
(3, 'tickets', 1, 3, 'Increased', 0),
(4, 'tickets', 1, 4, '10', 0),
(5, 'tickets', 1, 5, '30', 0),
(6, 'tickets', 1, 6, 'Hyper Tension,Colitis', 0),
(7, 'tickets', 1, 7, 'Amenorrhea,Irrgular menstaration', 0),
(8, 'tickets', 2, 1, 'Single', 0),
(9, 'tickets', 2, 2, '', 0),
(10, 'tickets', 2, 3, '', 0),
(11, 'tickets', 2, 4, '', 0),
(12, 'tickets', 2, 5, '', 0),
(13, 'tickets', 2, 6, '', 0),
(14, 'tickets', 2, 7, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_widgets`
--

CREATE TABLE `custom_widgets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT 0,
  `show_border` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboards`
--

CREATE TABLE `dashboards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `default_message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `deleted`) VALUES
(1, 'login_info', 'Login details', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME}, &nbsp;{USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(2, 'reset_password', 'Reset password', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>', '', 0),
(3, 'team_member_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(4, 'send_invoice', 'New invoice', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 0),
(5, 'signature', 'Signature', 'Powered By: <a href=\"http://fairsketch.com/\" target=\"_blank\">fairsketch </a>', '', 0),
(6, 'client_contact_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(7, 'ticket_created', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>', '', 0),
(8, 'ticket_commented', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>', '', 0),
(9, 'ticket_closed', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>', '', 0),
(10, 'ticket_reopened', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>', '', 0),
(11, 'general_notification', '{EVENT_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>', '', 0),
(12, 'invoice_payment_confirmation', 'Payment received', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\">\r\n                                        <tbody><tr>\r\n                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Payment Confirmation</h2>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                        </tbody>\r\n                                                                    </table>\r\n                                                                </td>\r\n                                                            </tr>\r\n                                                        </tbody>\r\n                                                    </table>\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    Hello,<br>\r\n                                                                                    We have received your payment of {PAYMENT_AMOUNT} for {INVOICE_ID} <br>\r\n                                                                                    Thank you for your business cooperation.\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                        <tbody>\r\n                                                                                            <tr>\r\n                                                                                                <td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                        <tbody>\r\n                                                                                                            <tr>\r\n                                                                                                                <td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                                    <a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a>\r\n                                                                                                                </td>\r\n                                                                                                            </tr>\r\n                                                                                                        </tbody>\r\n                                                                                                    </table>\r\n                                                                                                </td>\r\n                                                                                            </tr>\r\n                                                                                        </tbody>\r\n                                                                                    </table>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n                                                                                    \r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n  {SIGNATURE}\r\n  </td>\r\n </tr>\r\n </tbody>\r\n  </table>\r\n  </td>\r\n  </tr>\r\n  </tbody>\r\n </table>\r\n  </td>\r\n </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n </tr>\r\n </tbody>\r\n </table>\r\n </td>\r\n </tr>\r\n </tbody>\r\n  </table>', NULL, 0),
(13, 'message_received', '{SUBJECT}', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"> <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\"> <style type=\"text/css\"> #message-container p {margin: 10px 0;} #message-container h1, #message-container h2, #message-container h3, #message-container h4, #message-container h5, #message-container h6 { padding:10px; margin:0; } #message-container table td {border-collapse: collapse;} #message-container table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; } #message-container a span{padding:10px 15px !important;} </style> <table id=\"message-container\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#eee; margin:0; padding:0; width:100% !important; line-height: 100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0; font-family:Helvetica,Arial,sans-serif; color: #555;\"> <tbody> <tr> <td valign=\"top\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"50\" width=\"600\">&nbsp;</td> </tr> <tr> <td style=\"background-color:#33333e; padding:25px 15px 30px 15px; font-weight:bold; \" width=\"600\"><h2 style=\"color:#fff; text-align:center;\">{USER_NAME} sent you a message</h2></td> </tr> <tr> <td bgcolor=\"whitesmoke\" style=\"background:#fff; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> <tr> <td width=\"560\"><p><span style=\"background-color: transparent;\">{MESSAGE_CONTENT}</span></p> <p style=\"display:inline-block; padding: 10px 15px; background-color: #00b393;\"><a href=\"{MESSAGE_URL}\" style=\"text-decoration: none; color:#fff;\" target=\"_blank\">Reply Message</a></p> </td> </tr> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> <tr> <td height=\"60\" width=\"600\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(14, 'invoice_due_reminder_before_due_date', 'Invoice due reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Due Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that invoice {INVOICE_ID} is due on {DUE_DATE}. Please pay the invoice within due date.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(15, 'invoice_overdue_reminder', 'Invoice overdue reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Overdue Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that you have an unpaid invoice {INVOICE_ID}. We kindly request you to pay the invoice as soon as possible.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(16, 'recurring_invoice_creation_reminder', 'Recurring invoice creation reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Cration Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that a recurring invoice will be created on {NEXT_RECURRING_DATE}.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">View Invoice</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(17, 'project_task_deadline_reminder', 'Project task deadline reminder', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">This is to remind you that there are some tasks which deadline is {DEADLINE}.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{TASKS_LIST}</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 0),
(18, 'estimate_sent', 'New estimate', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello {CONTACT_FIRST_NAME},<br></p><p>Here is the estimate. Please check the attachment.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0);
INSERT INTO `email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `deleted`) VALUES
(19, 'estimate_request_received', 'Estimate request received', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE REQUEST #{ESTIMATE_REQUEST_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"><span style=\"background-color: transparent;\">A new estimate request has been received from {CONTACT_FIRST_NAME}.</span><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_REQUEST_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate Request</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(20, 'estimate_rejected', 'Estimate rejected', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been rejected.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(21, 'estimate_accepted', 'Estimate accepted', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been accepted.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(22, 'new_client_greetings', 'Welcome!', '<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Welcome to {COMPANY_NAME}</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Thank you for creating your account. </span></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">We are happy to see you here.<br></span></p><hr><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {CONTACT_LOGIN_EMAIL}</span><br></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{CONTACT_LOGIN_PASSWORD}</span></p><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(23, 'verify_email', 'Please verify your email', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account verification</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\"><p style=\"font-size: 14px;\">To initiate the signup process, please click on the following link:<br></p><p style=\"font-size: 14px;\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{VERIFY_EMAIL_URL}\" target=\"_blank\">Verify Email</a></span></p>  <p style=\"font-size: 14px;\"><br></p><p style=\"\"><span style=\"font-size: 14px;\">If you did not initiate the request, you do not need to take any further action and can safely disregard this email.</span></p><p style=\"\"><span style=\"font-size: 14px;\"><br></span></p><p style=\"font-size: 14px;\">{SIGNATURE}</p></div></div></div>', '', 0),
(24, 'new_order_received', 'New order received', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>ORDER #{ORDER_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">A new order has been received from&nbsp;</span><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">{CONTACT_FIRST_NAME} and is attached here.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ORDER_URL}\" target=\"_blank\">Show Order</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 0),
(25, 'order_status_updated', 'Order status updated', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>ORDER #{ORDER_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your order&nbsp;</span><font color=\"#555555\"><span style=\"font-size: 14px;\">has been updated&nbsp;</span></font><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ORDER_URL}\" target=\"_blank\">Show Order</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL DEFAULT 0,
  `estimate_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estimates`
--

INSERT INTO `estimates` (`id`, `client_id`, `estimate_request_id`, `estimate_date`, `valid_until`, `note`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `discount_type`, `discount_amount`, `discount_amount_type`, `project_id`, `deleted`) VALUES
(1, 4, 0, '2021-05-17', '2023-01-01', 'break fast', NULL, 'accepted', 0, 0, 'before_tax', 0, 'percentage', 0, 0),
(2, 4, 0, '2021-05-17', '2023-01-01', 'dd', NULL, 'accepted', 0, 0, 'before_tax', 0, 'percentage', 5, 0),
(3, 4, 0, '2021-05-17', '2023-01-01', 'Frist meal ', NULL, 'draft', 0, 0, 'before_tax', 0, 'percentage', 0, 0),
(4, 4, 0, '2021-05-17', '2023-01-01', 'lunch on 17-5', NULL, 'accepted', 0, 0, 'before_tax', 0, 'percentage', 0, 0),
(5, 5, 0, '2021-05-17', '2023-01-01', 'f', NULL, 'accepted', 0, 0, 'before_tax', 0, 'percentage', 6, 0),
(6, 6, 0, '2021-05-17', '2023-01-01', 'first session', NULL, 'draft', 0, 0, 'before_tax', 0, 'percentage', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `estimate_forms`
--

CREATE TABLE `estimate_forms` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `enable_attachment` tinyint(4) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `estimate_id` int(11) NOT NULL,
  `carb` double NOT NULL,
  `protien` double NOT NULL,
  `fat` double NOT NULL,
  `energy` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `item_cat` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estimate_items`
--

INSERT INTO `estimate_items` (`id`, `title`, `description`, `quantity`, `unit_type`, `rate`, `total`, `sort`, `estimate_id`, `carb`, `protien`, `fat`, `energy`, `deleted`, `item_cat`) VALUES
(1, 'Rahash', '', 5, 'gm', 0, 0, 0, 1, 0, 0, 0, 0, 1, ''),
(2, 'Rahash', '', 200, 'gm', 0, 0, 0, 1, 102.8, 102.8, 102.8, 1058, 1, ''),
(3, 'Methai', '', 100, 'gm', 0, 0, 0, 2, 43.8, 43.8, 43.8, 513, 0, ''),
(4, 'Sharria', '', 150, 'gm', 0, 0, 0, 2, 68.1, 68.1, 68.1, 822, 1, ''),
(5, 'Methai', '', 10, 'gm', 0, 0, 0, 2, 4.38, 4.38, 4.38, 51.3, 0, ''),
(6, 'Bread Arabic', '2 pc of bread', 200, 'gm', 0, 0, 0, 3, 126.2, 126.2, 126.2, 594, 0, ''),
(7, 'Tomato', '1 pc', 60, 'gm', 0, 0, 0, 3, 1.8, 1.8, 1.8, 8.4, 0, ''),
(8, 'Hamour cooked in rice', '1 plate', 500, 'gm', 0, 0, 0, 4, 0, 0, 0, 695, 1, ''),
(9, 'Rice raw', '1 plate', 500, 'gm', 0, 0, 0, 4, 383.5, 383.5, 383.5, 1730, 0, ''),
(10, 'Tomato', '1 pc', 50, 'gm', 0, 0, 0, 4, 1.5, 1.5, 1.5, 7, 0, ''),
(11, 'Apple average raw', '', 200, 'gm', 0, 0, 0, 4, 23.6, 23.6, 23.6, 94, 0, ''),
(12, 'Orange sweet', '1 pc', 200, 'gm', 0, 0, 0, 4, 20.2, 20.2, 20.2, 98, 0, ''),
(13, 'Halwa hamra', '', 50, 'gm', 0, 0, 0, 5, 40.6, 40.6, 40.6, 196.5, 0, ''),
(14, 'Sharria', '', 20, 'gm', 0, 0, 0, 5, 9.08, 9.08, 9.08, 109.6, 0, ''),
(15, 'Rice raw', '1 plate', 100, 'gm', 0, 0, 0, 1, 76.7, 76.7, 76.7, 346, 0, 'cereal'),
(16, 'Pizza meat', '2 pc', 60, 'gm', 0, 0, 0, 1, 15.96, 15.96, 15.96, 145.8, 0, 'western fast food'),
(17, 'Halwa hamra', '', 30, 'gm', 0, 0, 0, 1, 24.36, 24.36, 24.36, 117.9, 0, 'local sweet'),
(18, 'Grapefruit', '', 20, 'gm', 0, 0, 0, 1, 1.66, 1.66, 1.66, 6.6, 0, 'beverages'),
(19, 'Rice raw', '1 plate', 200, 'gm', 0, 0, 0, 6, 153.4, 153.4, 153.4, 692, 0, 'cereal'),
(20, 'Orange juice fresh', '1cup', 150, 'gm', 0, 0, 0, 6, 21.6, 21.6, 21.6, 91.5, 0, 'beverages');

-- --------------------------------------------------------

--
-- Table structure for table `estimate_requests`
--

CREATE TABLE `estimate_requests` (
  `id` int(11) NOT NULL,
  `estimate_form_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` enum('new','processing','hold','canceled','estimated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `labels` text COLLATE utf8_unicode_ci NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `editable_google_event` tinyint(1) NOT NULL DEFAULT 0,
  `google_event_id` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `recurring` int(1) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `last_start_date` date DEFAULT NULL,
  `recurring_dates` longtext COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_by` text COLLATE utf8_unicode_ci NOT NULL,
  `rejected_by` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `created_by`, `location`, `client_id`, `labels`, `share_with`, `editable_google_event`, `google_event_id`, `deleted`, `color`, `recurring`, `repeat_every`, `repeat_type`, `no_of_cycles`, `last_start_date`, `recurring_dates`, `confirmed_by`, `rejected_by`) VALUES
(1, 'some event', 'information', '2021-03-25', '2021-03-25', '01:00:00', '02:00:00', 1, '', 2, '3', '', 0, '', 1, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(2, 'first consulttaion', 'patient', '2021-03-28', '2021-03-28', '09:30:00', '10:30:00', 1, '', 1, '', '', 0, '', 1, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(3, 'first', 'first', '2021-04-24', '2021-04-24', '10:00:00', '11:00:00', 2, '', 2, '', '', 0, '', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(4, 'medical', 'ss', '2021-04-25', '2021-04-25', '14:00:00', '15:00:00', 2, '', 2, '', '', 0, '', 1, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(5, 'medical', 'ss', '2021-04-25', '2021-04-25', '12:00:00', '13:00:00', 2, '', 2, '', '', 0, '', 1, '#f1c40f', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(6, 'diet', 'dieat', '2021-04-27', '2021-04-27', '10:00:00', '11:00:00', 2, '', 2, '', '', 0, '', 1, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(7, 'device', 'in device no 1', '2021-04-25', '2021-04-25', '16:00:00', '17:00:00', 2, '', 0, '', '', 0, '', 1, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(8, 'medical', '-', '2021-05-17', '2021-05-17', '09:00:00', '13:00:00', 1, '', 4, '', 'all', 0, '', 0, '#83c340', 0, 1, 'months', 4, '0000-00-00', '', '0', '0'),
(9, 'device', 'first  session', '2021-05-19', '2021-05-19', '10:00:00', '11:00:00', 1, '', 0, '', 'all', 0, '', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `recurring` tinyint(4) NOT NULL DEFAULT 0,
  `recurring_expense_id` tinyint(4) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_date`, `category_id`, `description`, `amount`, `files`, `title`, `project_id`, `user_id`, `tax_id`, `tax_id2`, `client_id`, `recurring`, `recurring_expense_id`, `repeat_every`, `repeat_type`, `no_of_cycles`, `next_recurring_date`, `no_of_cycles_completed`, `deleted`) VALUES
(1, '2021-04-24', 5, '', 200, 'a:0:{}', 'novmber bill for internet ', 0, 0, 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, 0),
(2, '2021-05-16', 5, 'for the all office', 50, 'a:0:{}', 'elec bill for may 2021', 0, 0, 0, 0, 0, 1, 0, 1, 'months', 0, '2021-06-16', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `title`, `deleted`) VALUES
(1, 'Miscellaneous expense', 0),
(2, 'Medical nutrition supplement', 0),
(3, 'Rent', 0),
(4, 'Salaries', 0),
(5, 'Electricity, Water & Internet', 0);

-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_cat`
--

INSERT INTO `food_cat` (`id`, `cat_name`) VALUES
(1, 'cereal'),
(2, 'bread'),
(3, 'fruit'),
(4, 'vegetable'),
(5, 'legumes'),
(6, 'nuts'),
(7, 'meat'),
(8, 'fish'),
(9, 'diary'),
(10, 'oil'),
(11, 'herbs'),
(12, 'beverages'),
(13, 'local fast food'),
(14, 'western fast food'),
(15, 'regular'),
(16, 'regular ready'),
(17, 'local sweet');

-- --------------------------------------------------------

--
-- Table structure for table `food_comp`
--

CREATE TABLE `food_comp` (
  `id` int(3) DEFAULT NULL,
  `english` varchar(49) DEFAULT NULL,
  `arabic` varchar(43) DEFAULT NULL,
  `water` decimal(5,2) DEFAULT NULL,
  `protien` decimal(4,2) DEFAULT NULL,
  `fat` decimal(4,2) DEFAULT NULL,
  `ash` decimal(3,2) DEFAULT NULL,
  `fibre` decimal(5,2) DEFAULT NULL,
  `carb` decimal(4,2) DEFAULT NULL,
  `energy` decimal(4,1) DEFAULT NULL,
  `cat` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_comp`
--

INSERT INTO `food_comp` (`id`, `english`, `arabic`, `water`, `protien`, `fat`, `ash`, `fibre`, `carb`, `energy`, `cat`) VALUES
(1, 'Barley', NULL, '12.50', '11.50', '1.30', '1.20', '3.90', '69.60', '336.0', 1),
(2, 'Brown rice raw', NULL, '13.90', '6.70', '2.80', '0.00', '1.90', '74.70', '377.0', 1),
(5, 'Burghol light', NULL, '8.50', '12.10', '0.80', '1.30', '6.60', '70.70', '331.0', 1),
(6, 'Burr', NULL, '31.90', '9.10', '0.40', '1.00', '4.80', '52.90', '252.0', 1),
(7, 'Cheese cake frozen', NULL, '44.00', '5.70', '10.60', '0.00', '0.00', '39.00', '268.0', 1),
(8, 'Chocolate biscuits full coated', NULL, '2.20', '5.70', '27.60', '0.00', '2.10', '62.40', '541.0', 1),
(9, 'Corn', NULL, '14.90', '11.10', '3.60', '1.50', '2.70', '66.20', '342.0', 1),
(10, 'Corn starch', NULL, '12.10', '0.20', '0.80', '0.10', '0.10', '86.80', '355.0', 1),
(11, 'Cornflakes', NULL, '3.00', '8.60', '1.60', '3.10', '11.00', '72.70', '389.0', 1),
(12, 'Cream crackers', NULL, '4.30', '9.50', '16.30', '0.00', '2.20', '67.70', '336.0', 1),
(13, 'Custard canned', NULL, '77.20', '2.60', '3.00', '0.00', '0.00', '17.20', '99.0', 1),
(14, 'Dansih pastries', NULL, '21.60', '5.80', '17.60', '0.00', '1.60', '53.40', '386.0', 1),
(15, 'Date biscuit', NULL, '6.50', '6.70', '21.40', '1.00', '3.30', '61.20', '469.0', 1),
(16, 'Digestive biscuits chocolate', NULL, '2.50', '6.80', '24.10', '0.00', '2.20', '64.10', '310.0', 1),
(17, 'Doughnut plain', NULL, '23.70', '4.70', '18.60', '1.60', '0.00', '51.40', '391.0', 1),
(18, 'Doughnut jam', NULL, '26.90', '5.70', '14.50', '0.00', '0.00', '52.90', '349.0', 1),
(19, 'Dream topping,milk made', NULL, '1.40', '6.00', '50.40', '0.00', '0.00', '42.20', '637.0', 1),
(20, 'Fruit cake', NULL, '20.60', '3.70', '11.00', '0.00', '3.50', '61.20', '347.0', 1),
(21, 'Gingernut biscuits', NULL, '3.40', '5.60', '15.20', '0.00', '1.40', '74.70', '475.0', 1),
(22, 'Ground barley cooked', NULL, '4.90', '11.30', '2.20', '5.20', '19.00', '57.40', '294.0', 1),
(23, 'Instant dessert powder', NULL, '1.00', '2.40', '17.30', '0.00', '0.00', '60.10', '391.0', 1),
(24, 'Macaroni raw', NULL, '10.40', '13.70', '2.00', '0.00', '0.00', '73.90', '368.0', 1),
(25, 'Noodles egg raw', NULL, '9.10', '12.10', '8.20', '0.00', '2.90', '67.70', '391.0', 1),
(26, 'Noodles egg boiled', NULL, '84.30', '2.20', '0.50', '0.00', '0.60', '13.00', '65.0', 1),
(27, 'Noodles fried', NULL, '75.10', '1.90', '11.50', '0.00', '0.50', '11.30', '153.0', 1),
(28, 'Noodles plain boiled', NULL, '82.20', '2.40', '0.40', '0.00', '0.70', '13.00', '62.0', 1),
(29, 'Noodles plain raw', NULL, '10.60', '11.70', '6.20', '0.00', '2.90', '68.60', '377.0', 1),
(30, 'Pancakes sweet', NULL, '43.40', '5.90', '16.20', '0.00', '0.80', '35.00', '301.0', 1),
(31, 'Pizza w/cheese', NULL, '37.30', '12.00', '8.30', '2.20', '2.00', '38.30', '276.0', 1),
(32, 'Pizza w/meat', NULL, '42.50', '10.70', '6.30', '1.20', '0.00', '37.30', '248.0', 1),
(33, 'Pizza frozen', NULL, '49.30', '7.50', '10.70', '0.00', '1.50', '30.00', '246.0', 1),
(34, 'Popcorn canned', NULL, '2.60', '2.10', '20.00', '0.00', '0.00', '75.00', '489.0', 1),
(35, 'Popcorn plain', NULL, '0.90', '6.20', '42.80', '0.00', '0.00', '48.60', '592.0', 1),
(36, 'Rice (Peshawar)', NULL, '11.20', '7.80', '2.30', '0.50', '0.00', '78.10', '364.0', 1),
(37, 'Rice flour', NULL, '8.00', '6.90', '1.10', '0.50', '0.50', '83.50', '377.0', 1),
(38, 'Rice polished boiled', NULL, '71.30', '3.80', '0.20', '0.20', '0.00', '24.40', '115.0', 1),
(39, 'Rice pudding canned', NULL, '77.60', '3.40', '2.50', '0.00', '0.20', '14.00', '89.0', 1),
(40, 'Rice raw', NULL, '13.30', '7.50', '1.00', '0.90', '0.60', '76.70', '346.0', 1),
(41, 'Semolina raw', NULL, '14.00', '10.70', '1.80', '0.00', '2.10', '71.00', '343.0', 1),
(42, 'Spaghetti white raw', NULL, '9.80', '12.00', '1.80', '0.00', '2.90', '73.00', '356.0', 1),
(43, 'Spaghetti white boiled', NULL, '73.80', '3.60', '0.70', '0.00', '1.20', '20.00', '109.0', 1),
(44, 'Sponge cake', NULL, '15.20', '6.40', '26.30', '0.00', '0.90', '51.00', '466.0', 1),
(45, 'Sponge cake Frozen', NULL, '35.40', '3.40', '16.60', '0.00', '0.00', '40.80', '316.0', 1),
(46, 'Sponge cake jam filled', NULL, '24.50', '4.20', '4.90', '0.00', '1.80', '64.20', '317.0', 1),
(47, 'Sponge pudding canned', NULL, '35.30', '3.10', '11.40', '0.00', '0.80', '49.00', '296.0', 1),
(48, 'Swiss roll', NULL, '32.90', '7.20', '4.40', '0.00', '0.80', '54.00', '284.0', 1),
(49, 'Swiss rolls chocolate', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0', 1),
(50, 'Trifle frozen', NULL, '67.70', '2.20', '5.80', '0.00', '0.50', '23.00', '143.0', 1),
(51, 'Vermicelli', NULL, '9.20', '14.20', '1.10', '0.80', '0.00', '74.70', '367.0', 1),
(52, 'Wheat whole', NULL, '13.00', '11.50', '2.20', '1.70', '2.30', '69.30', '343.0', 1),
(53, 'Wheat parboiled', NULL, '13.00', '12.50', '1.50', '1.70', '1.50', '69.80', '343.0', 1),
(54, 'Bread Arabic', NULL, '25.50', '8.50', '1.20', '1.30', '0.40', '63.10', '297.0', 2),
(55, 'Bread toast white', NULL, '29.80', '7.60', '4.80', '1.30', '0.60', '55.90', '297.0', 2),
(56, 'Chapati', NULL, '3.00', '8.70', '0.20', '3.10', '0.00', '85.00', '376.0', 2),
(57, 'Corn flakes', NULL, '15.00', '21.40', '0.70', '8.30', '0.00', '54.60', '310.0', 2),
(58, 'Indian papard bread', NULL, '31.80', '8.20', '3.60', '1.20', '0.20', '55.00', '285.0', 2),
(59, 'Rakak bread', NULL, '6.50', '12.50', '0.40', '0.80', '0.00', '79.80', '372.0', 2),
(60, 'Tannor bread ( Iranian)', NULL, '29.50', '8.40', '1.20', '1.90', '0.50', '58.50', '278.0', 2),
(61, 'Almond green', NULL, '86.40', '2.60', '0.50', '0.60', '2.10', '7.80', '55.0', 3),
(62, 'Apple average raw', NULL, '84.50', '0.40', '0.10', '0.00', '1.80', '11.80', '47.0', 3),
(63, 'Apple raw peeled', NULL, '85.40', '0.40', '0.10', '0.00', '1.60', '11.20', '45.0', 3),
(64, 'Apricot dried', NULL, '23.20', '1.60', '0.30', '5.10', '0.00', '68.90', '285.0', 3),
(65, 'Apricot fresh', NULL, '84.20', '0.80', '0.60', '0.60', '1.10', '12.70', '64.0', 3),
(66, 'Banana', NULL, '71.60', '1.20', '0.30', '0.80', '0.60', '25.10', '112.0', 3),
(67, 'Banana chips', NULL, '3.20', '1.00', '31.40', '0.00', '1.70', '59.90', '511.0', 3),
(68, 'Blackberry', NULL, '79.60', '0.80', '0.80', '0.30', '2.60', '15.90', '74.0', 3),
(69, 'Cashew fruit', NULL, '86.00', '0.90', '0.40', '0.00', '0.00', '6.80', '33.0', 3),
(70, 'Cherry', NULL, '82.60', '1.80', '0.40', '0.40', '1.00', '13.80', '70.0', 3),
(71, 'Cherries canned in syrup', NULL, '77.80', '0.50', '0.00', '0.00', '0.60', '18.50', '71.0', 3),
(72, 'Citron', NULL, '88.70', '0.60', '0.10', '0.40', '1.40', '8.80', '39.0', 3),
(73, 'Currants', NULL, '15.70', '2.30', '0.40', '0.00', '1.90', '79.70', '284.0', 3),
(74, 'Dates dried', NULL, '20.00', '2.20', '0.60', '1.80', '2.40', '73.00', '306.0', 3),
(75, 'Dates fresh', NULL, '59.00', '0.90', '0.30', '0.90', '1.30', '37.60', '157.0', 3),
(76, 'Dried mixed fruit', NULL, '15.50', '2.30', '0.40', '0.00', '2.20', '68.10', '268.0', 3),
(77, 'Fig fresh ripe', NULL, '88.10', '1.30', '0.20', '0.60', '2.20', '7.60', '37.0', 3),
(78, 'Fig dried', NULL, '16.80', '3.60', '1.60', '2.50', '7.50', '68.00', '240.0', 3),
(79, 'Fruit cocktail canned', NULL, '86.90', '0.40', '0.00', '0.00', '1.00', '7.20', '29.0', 3),
(80, '4canned in syrup', NULL, '81.80', '0.40', '0.00', '0.00', '1.00', '14.80', '57.0', 3),
(81, 'Grapefruit', NULL, '89.20', '0.60', '0.20', '0.40', '0.20', '9.40', '46.0', 3),
(82, 'Grapes', NULL, '81.60', '0.60', '0.70', '0.40', '0.50', '16.20', '76.0', 3),
(83, 'Guava', NULL, '80.80', '0.90', '0.40', '0.60', '5.30', '12.00', '55.0', 3),
(84, 'Lemon', NULL, '89.80', '0.70', '0.60', '0.40', '0.70', '7.80', '39.0', 3),
(85, 'Lemon sweet', NULL, '89.50', '0.70', '0.60', '0.40', '1.00', '7.80', '39.0', 3),
(86, 'Loquat', NULL, '88.10', '0.20', '0.60', '0.40', '0.80', '9.90', '49.0', 3),
(87, 'Lychees raw', NULL, '81.10', '0.90', '0.10', '0.00', '0.70', '14.30', '58.0', 3),
(88, 'Lychees canned in syrup', NULL, '79.30', '0.40', '0.00', '0.00', '0.50', '17.70', '68.0', 3),
(89, 'Mandarin', NULL, '87.30', '0.70', '0.20', '0.40', '0.40', '11.00', '50.0', 3),
(90, 'Mango ripe', NULL, '81.00', '0.60', '0.40', '0.40', '0.70', '16.90', '74.0', 3),
(91, 'Mango canned in syrup', NULL, '74.80', '0.30', '0.00', '0.00', '0.70', '24.20', '82.0', 3),
(92, 'Melon sweet', NULL, '92.80', '0.50', '0.10', '0.40', '0.50', '5.70', '28.0', 3),
(93, 'Mulberry', NULL, '80.80', '1.50', '1.40', '0.90', '1.50', '13.90', '74.0', 3),
(94, 'Nabak', NULL, '77.20', '1.60', '0.30', '0.60', '0.00', '20.40', '90.0', 3),
(95, 'Olives in brine', NULL, '76.50', '0.90', '11.00', '0.00', '2.90', '0.00', '103.0', 3),
(96, 'Olives in brine with stones', NULL, '61.20', '0.70', '8.80', '0.00', '2.30', '0.00', '82.0', 3),
(97, 'Orange sour', NULL, '88.90', '1.00', '0.30', '0.50', '0.40', '8.90', '44.0', 3),
(98, 'Orange sweet', NULL, '87.70', '0.80', '0.20', '0.40', '0.80', '10.10', '49.0', 3),
(99, 'Papaya ripe', NULL, '90.80', '0.60', '0.10', '0.50', '0.80', '7.20', '32.0', 3),
(100, 'Peach raw', NULL, '88.90', '1.00', '0.10', '0.00', '1.50', '7.60', '33.0', 3),
(101, 'Peaches dried', NULL, '15.50', '3.40', '0.80', '0.00', '7.30', '70.00', '301.0', 3),
(102, 'Peaches canned in juice', NULL, '86.70', '0.60', '0.00', '0.00', '0.80', '9.70', '39.0', 3),
(103, 'Peaches canned in syrup', NULL, '81.10', '0.50', '0.00', '0.00', '0.90', '14.00', '55.0', 3),
(104, 'Pear raw', NULL, '83.80', '0.30', '0.10', '0.00', '2.20', '10.00', '40.0', 3),
(105, 'Pear canned in juice', NULL, '86.80', '0.30', '0.00', '0.00', '1.40', '8.50', '33.0', 3),
(106, 'Pear canned in syrup', NULL, '82.60', '0.20', '0.00', '0.00', '1.10', '13.20', '50.0', 3),
(107, 'Pineapple raw', NULL, '86.50', '0.40', '0.20', '0.00', '1.20', '10.10', '41.0', 3),
(108, 'Pineapple canned in juice', NULL, '86.80', '0.30', '0.00', '0.00', '0.50', '12.20', '47.0', 3),
(109, 'Pineapple canned in syrup', NULL, '82.20', '0.50', '0.00', '0.00', '0.70', '16.50', '64.0', 3),
(110, 'Plum', NULL, '87.00', '0.60', '0.20', '0.30', '0.40', '11.50', '52.0', 3),
(111, 'Pomegranate', NULL, '81.30', '0.80', '0.70', '0.50', '2.00', '14.70', '77.0', 3),
(112, 'Quince', NULL, '82.40', '0.60', '0.30', '0.40', '2.20', '14.10', '62.0', 3),
(113, 'Raisins (grape dried)', NULL, '13.20', '2.10', '0.40', '0.00', '2.00', '69.30', '272.0', 3),
(114, 'Raspberries raw', NULL, '87.00', '1.40', '0.30', '0.60', '2.50', '8.20', '27.0', 3),
(115, 'Raspberries frozen', NULL, '86.20', '1.20', '0.30', '0.00', '2.70', '9.00', '26.0', 3),
(116, 'Raspberries canned in syrup', NULL, '74.00', '0.60', '0.10', '0.00', '1.50', '22.50', '88.0', 3),
(117, 'Sapota', NULL, '73.70', '0.70', '1.10', '0.50', '2.60', '21.40', '98.0', 3),
(118, 'Strawberries raw', NULL, '89.50', '0.80', '0.10', '0.00', '1.10', '6.00', '27.0', 3),
(119, 'Strawberries frozen', NULL, '87.70', '0.70', '0.10', '0.00', '1.20', '7.80', '33.0', 3),
(120, 'Strawberries canned in syrup', NULL, '81.70', '0.50', '0.00', '0.00', '0.70', '16.90', '65.0', 3),
(121, 'Tamarind', NULL, '35.80', '2.30', '0.30', '0.00', '0.00', '56.50', '238.0', 3),
(122, 'Watermelon', NULL, '92.60', '0.50', '0.10', '0.50', '0.20', '6.10', '29.0', 3),
(123, 'Agar dried', NULL, '9.70', '1.30', '1.20', '0.00', '81.10', '0.00', '16.0', 4),
(124, 'Artichoke raw', NULL, '85.20', '2.80', '0.20', '0.00', '0.00', '2.70', '18.0', 4),
(125, 'Asparagus raw', NULL, '91.40', '2.90', '0.60', '0.00', '1.70', '2.00', '25.0', 4),
(126, 'Avocado', NULL, '71.60', '2.00', '20.00', '1.40', '1.80', '3.20', '205.0', 4),
(127, 'Baked beans canned', NULL, '72.90', '4.80', '0.60', '0.00', '3.50', '15.10', '81.0', 4),
(128, 'Basil', NULL, '86.30', '3.80', '0.50', '1.80', '1.00', '6.60', '50.0', 4),
(129, 'Beans broad', NULL, '81.80', '5.20', '0.40', '0.80', '2.00', '9.80', '72.0', 4),
(130, 'Beans green', NULL, '90.50', '2.00', '0.20', '0.70', '1.20', '5.40', '32.0', 4),
(131, 'Beetroot raw', NULL, '87.10', '1.70', '0.10', '0.00', '1.90', '7.60', '36.0', 4),
(132, 'Beetroot boiled in salted water', NULL, '82.40', '2.30', '0.10', '0.00', '1.90', '9.50', '46.0', 4),
(133, 'Beetroot pickled drained', NULL, '88.60', '1.20', '0.20', '0.00', '1.70', '5.60', '28.0', 4),
(134, 'Broccoli green raw', NULL, '88.20', '4.40', '0.90', '0.00', '2.60', '1.80', '33.0', 4),
(135, 'Broccoli boiled in salted water', NULL, '91.10', '3.10', '0.80', '0.00', '2.30', '1.10', '24.0', 4),
(136, 'Broccoli boiled in unsalted water', NULL, '91.10', '3.10', '0.80', '0.00', '2.30', '1.10', '24.0', 4),
(137, 'Brussels sprouts raw', NULL, '84.30', '3.50', '1.40', '0.00', '4.10', '4.10', '42.0', 4),
(138, 'Brussels boiled in salted water', NULL, '86.90', '2.90', '1.30', '0.00', '3.10', '3.50', '35.0', 4),
(139, 'Brussels boiled in unsalted water', NULL, '86.90', '2.90', '1.30', '0.00', '3.10', '3.50', '35.0', 4),
(140, 'Cabbage raw', NULL, '90.10', '1.70', '0.40', '0.00', '2.40', '4.10', '26.0', 4),
(141, 'Cabbage boiled in salted water', NULL, '93.10', '1.00', '0.40', '0.00', '1.80', '2.20', '16.0', 4),
(142, 'Cabbage boiled in unsalted water', NULL, '93.10', '1.00', '0.40', '0.00', '1.80', '2.20', '16.0', 4),
(143, 'Carrots old raw', NULL, '89.80', '0.60', '0.30', '0.00', '2.40', '7.90', '35.0', 4),
(144, 'Carrots boiled in salted water', NULL, '90.50', '0.60', '0.40', '0.00', '2.50', '4.90', '24.0', 4),
(145, 'Carrots boiled in unsalted water', NULL, '90.50', '0.60', '0.40', '0.00', '2.50', '4.90', '24.0', 4),
(146, 'Carrot red & orange', NULL, '89.10', '1.00', '0.30', '0.80', '0.80', '8.00', '42.0', 4),
(147, 'Cauliflower', NULL, '91.70', '2.40', '0.20', '0.80', '0.90', '4.00', '31.0', 4),
(148, 'Celery raw', NULL, '95.10', '0.50', '0.20', '0.00', '1.10', '0.90', '7.0', 4),
(149, 'Celery boiled in salted water', NULL, '95.20', '0.50', '0.30', '0.00', '1.20', '0.80', '8.0', 4),
(150, 'Chard swiss', NULL, '90.80', '1.60', '0.40', '1.60', '1.00', '4.60', '21.0', 4),
(151, 'Chicory raw', NULL, '94.30', '0.50', '0.60', '0.00', '0.90', '2.80', '18.0', 4),
(152, 'Chicory boiled in salted water', NULL, '94.80', '0.60', '0.30', '0.00', '1.10', '2.10', '13.0', 4),
(153, 'Chives', NULL, '92.60', '1.10', '0.20', '0.60', '0.70', '4.80', '28.0', 4),
(154, 'Coriander', NULL, '84.00', '4.30', '0.70', '2.00', '1.70', '7.30', '59.0', 4),
(155, 'Corn fresh white', NULL, '72.40', '3.90', '1.10', '0.80', '0.80', '20.80', '112.0', 4),
(156, 'Cucumber', NULL, '95.40', '0.70', '0.10', '0.40', '0.40', '3.00', '17.0', 4),
(157, 'Dandelion greens', NULL, '85.70', '2.70', '0.70', '2.00', '1.80', '7.10', '53.0', 4),
(158, 'Eggplant', NULL, '91.80', '1.00', '0.30', '0.60', '1.20', '5.10', '32.0', 4),
(159, 'Fennel raw', NULL, '94.20', '0.90', '0.20', '0.00', '2.40', '1.80', '12.0', 4),
(160, 'Fennel boiled in salted water', NULL, '94.40', '0.90', '0.20', '0.00', '2.30', '1.50', '11.0', 4),
(161, 'Fenugreek leaves raw', NULL, '87.60', '4.60', '0.20', '0.00', '0.00', '4.80', '35.0', 4),
(162, 'Garlic bulbs', NULL, '63.80', '5.30', '0.20', '1.40', '1.10', '28.20', '140.0', 4),
(163, 'Grape leaves', NULL, '75.50', '3.80', '1.00', '1.50', '2.60', '15.60', '97.0', 4),
(164, 'Lettuce raw', NULL, '94.90', '1.30', '0.20', '0.70', '0.70', '2.20', '19.0', 4),
(165, 'Mint raw', NULL, '83.70', '4.00', '1.30', '1.80', '1.30', '7.90', '65.0', 4),
(166, 'Mixed vegetebles,boiled', NULL, '85.80', '3.30', '0.50', '0.00', '0.00', '6.60', '42.0', 4),
(167, 'Mushrooms common raw', NULL, '92.60', '1.80', '0.50', '0.00', '1.10', '0.40', '13.0', 4),
(168, 'Mushrooms boiled in salted water', NULL, '92.70', '1.80', '0.30', '0.00', '1.10', '0.40', '11.0', 4),
(169, 'Mushrooms fried in corn oil', NULL, '74.80', '2.40', '16.20', '0.00', '1.50', '0.30', '157.0', 4),
(170, 'Mushrooms canned re-heated drained', NULL, '91.40', '2.10', '0.40', '0.00', '1.30', '0.00', '12.0', 4),
(171, 'Mustard and cress raw', NULL, '95.30', '1.60', '0.60', '0.00', '1.10', '0.40', '13.0', 4),
(172, 'Mustard leaves raw', NULL, '91.30', '2.50', '0.30', '0.00', '0.00', '3.60', '27.0', 4),
(173, 'Okra raw', NULL, '86.60', '2.80', '1.00', '0.00', '4.00', '3.00', '31.0', 4),
(174, 'Okra boiled', NULL, '87.90', '2.50', '0.90', '0.00', '3.60', '2.70', '28.0', 4),
(175, 'Potatoes flesh', NULL, '78.90', '2.20', '0.10', '0.00', '1.40', '18.00', '77.0', 4),
(176, 'Potatoes boiled in salted water', NULL, '80.30', '1.80', '0.10', '0.00', '1.20', '17.00', '72.0', 4),
(177, 'Potatoes boiled in unsalted water', NULL, '80.30', '1.80', '0.10', '0.00', '1.20', '17.00', '72.0', 4),
(178, 'Potatoes mashed', NULL, '77.60', '1.80', '4.30', '0.00', '1.10', '15.50', '104.0', 4),
(179, 'Olive black', NULL, '71.80', '1.80', '21.00', '2.80', '1.50', '1.10', '207.0', 4),
(180, 'Olive green', NULL, '75.20', '1.50', '13.50', '5.80', '1.20', '2.80', '144.0', 4),
(181, 'Onion green immature', NULL, '89.60', '1.50', '0.20', '0.40', '1.00', '7.30', '41.0', 4),
(182, 'Onions raw', NULL, '89.00', '1.20', '0.20', '0.00', '1.40', '7.90', '36.0', 4),
(183, 'Onions fried in corn oil', NULL, '65.70', '2.30', '11.20', '0.00', '3.10', '14.10', '164.0', 4),
(184, 'Onions dried raw', NULL, '4.50', '10.20', '1.70', '0.00', '12.10', '68.60', '313.0', 4),
(185, 'Onions pickled drained', NULL, '90.60', '0.90', '0.20', '0.00', '1.20', '4.90', '24.0', 4),
(186, 'Parsley raw', NULL, '84.90', '3.70', '0.60', '1.80', '1.80', '7.20', '50.0', 4),
(187, 'Peas raw', NULL, '74.60', '6.90', '1.50', '0.00', '4.70', '11.30', '83.0', 4),
(188, 'Peas boiled in unsalted water', NULL, '75.60', '6.70', '1.60', '0.00', '4.50', '10.00', '79.0', 4),
(189, 'Pepper hot', NULL, '90.80', '1.50', '0.30', '0.60', '1.70', '5.10', '30.0', 4),
(190, 'Pepper sweet', NULL, '92.60', '1.10', '0.20', '0.50', '1.40', '4.20', '29.0', 4),
(191, 'Potato crisps', NULL, '1.90', '5.60', '37.60', '0.00', '4.90', '49.30', '546.0', 4),
(192, 'Potato flour', NULL, '7.60', '9.10', '0.90', '0.00', '5.70', '75.60', '328.0', 4),
(193, 'Potato white', NULL, '79.20', '1.80', '0.10', '1.00', '0.40', '17.50', '81.0', 4),
(194, 'Pumpkin', NULL, '90.00', '1.00', '0.20', '0.60', '0.70', '7.50', '39.0', 4),
(195, 'Pumpkin boiled in salted water', NULL, '94.90', '0.60', '0.30', '0.00', '1.10', '2.10', '13.0', 4),
(196, 'Purslane common', NULL, '91.50', '2.00', '0.40', '1.40', '0.90', '3.80', '32.0', 4),
(197, 'Radish Leaves raw', NULL, '91.30', '2.70', '0.40', '1.60', '0.60', '4.00', '25.0', 4),
(198, 'Radish Root raw', NULL, '93.90', '1.10', '0.10', '0.80', '0.80', '4.10', '19.0', 4),
(199, 'Radish white', NULL, '93.20', '1.20', '0.10', '0.80', '0.70', '5.00', '29.0', 4),
(200, 'Spinach', NULL, '90.80', '2.80', '0.40', '1.80', '0.70', '3.50', '33.0', 4),
(201, 'Spinach boiled in salted water', NULL, '91.80', '2.20', '0.80', '0.00', '2.10', '0.80', '19.0', 4),
(202, 'Spinach boiled in unsalted water', NULL, '91.80', '2.20', '0.80', '0.00', '2.10', '0.80', '19.0', 4),
(203, 'Spinach frozen boiled in unsalted', NULL, '91.60', '3.10', '0.80', '0.00', '2.10', '0.50', '21.0', 4),
(204, 'Spinach canned drained', NULL, '91.80', '2.80', '0.50', '0.00', '1.60', '0.80', '19.0', 4),
(205, 'Squash summer', NULL, '92.00', '0.60', '0.20', '0.60', '0.70', '5.90', '31.0', 4),
(206, 'Sugar beet (root raw)', NULL, '77.80', '1.50', '0.10', '0.60', '1.00', '20.10', '82.0', 4),
(207, 'Sweet potato', NULL, '68.90', '1.30', '0.30', '0.90', '0.90', '27.70', '123.0', 4),
(208, 'Sweet potato boiled in salted water', NULL, '74.70', '1.10', '0.30', '0.00', '2.30', '20.50', '84.0', 4),
(209, 'Thyme', NULL, '79.90', '2.80', '0.40', '2.70', '2.90', '11.30', '72.0', 4),
(210, 'Tomato', NULL, '93.80', '0.80', '0.30', '0.50', '0.60', '4.00', '25.0', 4),
(211, 'Tomato puree', NULL, '71.90', '4.50', '0.20', '0.00', '2.80', '12.90', '68.0', 4),
(212, 'Turnip', NULL, '92.50', '0.80', '0.20', '0.80', '0.80', '4.90', '29.0', 4),
(213, 'Beans broad (horse) dry', NULL, '10.60', '25.00', '1.80', '3.00', '5.90', '53.70', '331.0', 5),
(214, 'Beans French (Common)', NULL, '12.00', '22.60', '1.60', '3.60', '4.30', '55.90', '329.0', 5),
(215, 'Blacked-eyed beans', NULL, '82.50', '4.80', '0.30', '1.00', '0.00', '11.60', '68.0', 5),
(216, 'Chickpea', NULL, '11.50', '19.20', '6.20', '3.00', '3.40', '56.70', '360.0', 5),
(217, 'Chickpea flour', NULL, '10.50', '19.70', '5.40', '2.50', '3.40', '58.50', '375.0', 5),
(218, 'Cowpea', NULL, '10.60', '23.10', '1.20', '3.40', '4.50', '57.20', '332.0', 5),
(219, 'Fenugreek seeds', NULL, '8.60', '29.00', '5.20', '3.30', '7.20', '46.70', '365.0', 5),
(220, 'Lentils peeled', NULL, '12.40', '25.10', '0.70', '2.10', '0.70', '59.00', '343.0', 5),
(221, 'Mung beans seed raw', NULL, '7.60', '20.50', '1.90', '3.40', '3.90', '62.70', '366.0', 5),
(222, 'Acorn', NULL, '35.50', '3.00', '2.60', '1.10', '5.00', '52.80', '247.0', 6),
(223, 'Almonds', NULL, '4.20', '21.10', '55.80', '0.00', '7.40', '6.90', '612.0', 6),
(224, 'Almonds weighed with shells', NULL, '1.50', '7.80', '20.60', '0.00', '2.70', '2.50', '229.0', 6),
(225, 'Almonds toasted', NULL, '2.60', '21.20', '56.70', '0.00', '7.50', '7.00', '621.0', 6),
(226, 'Cashew nuts', NULL, '5.90', '21.20', '46.90', '2.40', '1.30', '22.30', '596.0', 6),
(227, 'Cashew toasted and salted', NULL, '2.40', '20.50', '50.90', '0.00', '3.20', '18.80', '611.0', 6),
(228, 'Chestnuts', NULL, '51.70', '2.00', '2.70', '0.00', '4.10', '36.60', '170.0', 6),
(229, 'Coconut', NULL, '36.30', '4.50', '41.60', '1.00', '3.60', '13.00', '444.0', 6),
(230, 'Coconut cream', NULL, '53.90', '4.00', '34.70', '0.00', '0.00', '5.90', '350.0', 6),
(231, 'Coconut milk', NULL, '92.20', '0.30', '0.30', '0.00', '0.00', '4.90', '22.0', 6),
(232, 'Hazelnuts', NULL, '4.60', '14.10', '63.50', '0.00', '6.50', '6.00', '650.0', 6),
(233, 'Melon seeds', NULL, '6.10', '28.50', '47.70', '0.00', '0.00', '9.90', '583.0', 6),
(234, 'Mixed nuts', NULL, '2.50', '22.90', '54.10', '0.00', '6.00', '7.90', '607.0', 6),
(235, 'Mixed nuts & raisins', NULL, '8.20', '14.10', '34.10', '0.00', '4.50', '31.50', '481.0', 6),
(236, 'Peanut butter smooth', NULL, '1.10', '22.60', '53.70', '0.00', '5.40', '13.10', '623.0', 6),
(237, 'Peanuts plain', NULL, '6.30', '25.60', '46.10', '0.00', '6.20', '12.50', '564.0', 6),
(238, 'Peanuts dry roasted', NULL, '1.80', '25.50', '49.80', '0.00', '6.40', '10.30', '589.0', 6),
(239, 'Peanuts roasted and salted', NULL, '1.90', '24.50', '53.00', '0.00', '6.00', '7.10', '602.0', 6),
(240, 'Pine nuts', NULL, '6.00', '35.20', '51.00', '4.70', '0.70', '2.40', '617.0', 6),
(241, 'Pistachio nuts', NULL, '6.10', '20.00', '53.80', '2.70', '1.90', '15.50', '637.0', 6),
(242, 'Pistachio nuts roated salted', NULL, '2.10', '17.90', '55.40', '0.00', '6.10', '8.20', '601.0', 6),
(243, 'Pumpkin seeds', NULL, '5.60', '24.40', '45.60', '0.00', '5.30', '15.20', '569.0', 6),
(244, 'Rosted chick peas', NULL, '6.20', '20.70', '6.90', '1.80', '0.00', '64.40', '402.0', 6),
(245, 'Salted pistachio nuts', NULL, '2.80', '20.00', '55.00', '4.60', '0.00', '17.60', '645.0', 6),
(246, 'Sesame seeds', NULL, '4.60', '18.20', '58.00', '0.00', '7.90', '0.90', '598.0', 6),
(247, 'Sunflower seeds', NULL, '4.40', '19.80', '47.50', '0.00', '6.00', '18.60', '581.0', 6),
(248, 'Sunflower toasted', NULL, '1.00', '20.50', '49.20', '0.00', '6.20', '19.30', '602.0', 6),
(249, 'Walnuts', NULL, '2.80', '14.70', '68.50', '0.00', '3.50', '3.30', '688.0', 6),
(250, 'Watermelon seeds', NULL, '6.10', '32.30', '45.70', '3.80', '2.70', '9.40', '580.0', 6),
(251, 'Beef boneless medium fat', NULL, '59.70', '18.40', '24.40', '0.00', '0.00', '0.00', '298.0', 7),
(252, 'Beef mince raw', NULL, '60.20', '17.90', '21.20', '0.00', '0.00', '0.00', '268.0', 7),
(253, 'Brains calf & sheep,raw', NULL, '78.70', '9.80', '8.40', '0.00', '0.00', '0.00', '121.0', 7),
(254, 'Brains boiled', NULL, '80.20', '11.80', '6.20', '0.00', '0.00', '0.00', '107.0', 7),
(255, 'Camel meat', NULL, '77.20', '19.30', '2.60', '0.90', '0.00', '0.00', '101.0', 7),
(256, 'Chicken raw', NULL, '73.20', '20.50', '5.80', '0.00', '0.00', '0.00', '140.0', 7),
(257, 'Chicken boiled', NULL, '63.60', '26.30', '8.40', '0.00', '0.00', '0.00', '198.0', 7),
(258, 'Chicken fried', NULL, '53.90', '28.60', '13.10', '0.00', '0.00', '2.90', '253.0', 7),
(259, 'Chicken roasted', NULL, '60.40', '29.10', '9.40', '0.00', '0.00', '0.00', '199.0', 7),
(260, 'Chicken red', NULL, '74.81', '19.60', '4.90', '0.70', '0.00', '0.00', '122.0', 7),
(261, 'Chicken skin', NULL, '52.60', '14.20', '33.10', '0.10', '0.00', '0.00', '355.0', 7),
(262, 'Chicken white', NULL, '74.90', '21.50', '2.80', '0.80', '0.00', '0.00', '111.0', 7),
(263, 'Egg hens', NULL, '74.00', '12.80', '11.50', '1.00', '0.00', '0.70', '159.0', 7),
(264, 'Egg white', NULL, '87.60', '10.90', '0.00', '0.70', '0.00', '0.80', '51.0', 7),
(265, 'Egg yolk', NULL, '51.10', '16.00', '30.60', '1.70', '0.00', '0.60', '348.0', 7),
(266, 'Goat meat', NULL, '71.50', '18.40', '9.20', '0.90', '0.00', '0.00', '157.0', 7),
(267, 'Heart lamb raw', NULL, '71.80', '16.80', '9.80', '0.00', '0.00', '0.70', '162.0', 7),
(268, 'Kidney sheep,raw', NULL, '77.80', '15.70', '3.80', '0.00', '0.00', '1.00', '106.0', 7),
(269, 'Kidney fried', NULL, '61.30', '26.50', '11.00', '0.00', '0.00', '0.00', '213.0', 7),
(270, 'Lamb & mutton medium fat', NULL, '51.50', '14.30', '26.80', '0.00', '0.00', '0.00', '308.0', 7),
(272, 'Liver raw', NULL, '70.40', '19.00', '4.20', '0.00', '0.00', '5.00', '139.0', 7),
(273, 'Liver floured fried', NULL, '46.10', '29.40', '10.50', '0.00', '0.00', '14.00', '269.0', 7),
(274, 'Lungs', NULL, '82.00', '14.60', '2.40', '1.00', '0.00', '0.00', '81.0', 7),
(275, 'Rabbit meat', NULL, '72.00', '21.00', '5.80', '1.20', '0.00', '0.00', '137.0', 7),
(276, 'Spleen', NULL, '77.50', '17.50', '1.80', '1.40', '0.00', '1.80', '95.0', 7),
(277, 'Tongue sheep calf raw', NULL, '69.40', '14.20', '15.40', '0.00', '0.00', '0.40', '201.0', 7),
(278, 'Crabs raw', NULL, '76.70', '19.80', '0.80', '2.40', '0.00', '0.40', '89.0', 8),
(279, 'Crabs cooked', NULL, '78.70', '18.00', '1.40', '2.50', '0.00', '0.60', '83.0', 8),
(280, 'Hamam raw', NULL, '73.90', '21.80', '3.30', '3.70', '0.00', '0.00', '117.0', 8),
(281, 'Hammam fried', NULL, '62.30', '27.80', '4.20', '2.10', '0.00', '0.00', '149.0', 8),
(282, 'Hamoor raw', NULL, '76.00', '19.30', '3.40', '1.10', '0.00', '0.20', '109.0', 8),
(283, 'Hamour cooked in rice', NULL, '70.20', '27.30', '3.20', '1.40', '0.00', '0.00', '139.0', 8),
(284, 'Kanad raw', NULL, '70.40', '19.50', '9.30', '1.30', '0.00', '0.00', '162.0', 8),
(285, 'Kanad cooked in curry', NULL, '66.10', '22.90', '10.00', '1.90', '0.00', '0.00', '182.0', 8),
(286, 'Kanad cooked in rice', NULL, '63.40', '24.90', '12.00', '1.90', '0.00', '0.00', '207.0', 8),
(287, 'Kanad fried', NULL, '60.50', '26.70', '11.90', '2.80', '0.00', '0.00', '214.0', 8),
(288, 'Maid raw', NULL, '63.30', '18.30', '16.10', '3.30', '0.00', '0.00', '218.0', 8),
(289, 'Maid grilled', NULL, '64.50', '24.20', '10.50', '1.90', '0.00', '0.00', '191.0', 8),
(290, 'Quraqufan raw', NULL, '71.50', '19.90', '3.70', '4.50', '0.00', '0.40', '115.0', 8),
(291, 'Quraqufan grilled', NULL, '37.80', '22.80', '1.80', '1.90', '0.00', '0.00', '109.0', 8),
(292, 'Safai raw', NULL, '70.90', '18.90', '7.30', '2.80', '0.00', '0.10', '142.0', 8),
(293, 'Safai grilled', NULL, '68.00', '27.30', '4.30', '2.50', '0.00', '0.00', '148.0', 8),
(294, 'Safai cooked in curry', NULL, '69.50', '23.40', '5.20', '2.50', '0.00', '0.00', '141.0', 8),
(295, 'Shairy raw', NULL, '75.20', '19.20', '1.10', '4.20', '0.00', '0.00', '86.0', 8),
(296, 'Shairy cooked in curry', NULL, '69.00', '25.40', '4.90', '1.90', '0.00', '0.00', '146.0', 8),
(297, 'Shari cooked in rice', NULL, '67.30', '27.90', '4.90', '2.00', '0.00', '0.00', '156.0', 8),
(298, 'Shari fried', NULL, '63.60', '27.80', '7.10', '2.70', '0.00', '0.00', '175.0', 8),
(299, 'Shrimp raw', NULL, '78.20', '19.20', '0.80', '1.60', '0.00', '0.00', '84.0', 8),
(300, 'Shrimp cooked in curry', NULL, '70.10', '24.60', '1.90', '2.30', '0.00', '1.10', '121.0', 8),
(301, 'Shrimp cooked in rice', NULL, '62.90', '27.80', '2.90', '1.90', '0.00', '0.00', '137.0', 8),
(302, 'Shrimp dried', NULL, '8.10', '76.40', '1.20', '1.60', '0.00', '1.50', '316.0', 8),
(303, 'Yanam raw', NULL, '62.00', '17.90', '10.40', '5.20', '0.00', '0.00', '165.0', 8),
(304, 'Yanam grilled', NULL, '68.60', '25.90', '5.60', '1.80', '0.00', '0.00', '155.0', 8),
(305, 'Akkiwi Cheese', NULL, '47.60', '21.60', '15.70', '8.30', '0.00', '6.90', '255.0', 9),
(306, 'Butter', NULL, '16.00', '1.00', '82.90', '0.10', '0.00', '0.00', '750.0', 9),
(307, 'Cheese cream', NULL, '54.00', '9.00', '32.00', '0.00', '0.00', '3.40', '345.0', 9),
(308, 'Cheese cream canned', NULL, '68.10', '2.80', '25.50', '0.00', '0.00', '3.70', '268.0', 9),
(309, 'Cheese haloom', NULL, '40.30', '16.40', '29.40', '5.70', '0.00', '8.20', '363.0', 9),
(310, 'Cheese processed spread chedder', NULL, '44.70', '20.80', '27.00', '0.00', '0.00', '1.00', '330.0', 9),
(311, 'Cheese processed spread canned', NULL, '42.20', '22.50', '27.00', '0.00', '0.00', '0.00', '335.0', 9),
(312, 'Cheese chedder & sliced', NULL, '44.70', '21.70', '25.40', '0.00', '0.00', '1.00', '320.0', 9),
(313, 'Cheese white', NULL, '51.50', '18.30', '22.10', '6.60', '0.00', '1.50', '278.0', 9),
(314, 'Feta Cheese', NULL, '56.50', '15.60', '20.20', '0.00', '0.00', '7.70', '250.0', 9),
(315, 'Flavored yoghurt', NULL, '79.00', '5.00', '0.90', '0.80', '0.00', '14.00', '81.0', 9),
(316, 'Ice cream chocolate', NULL, '58.80', '4.00', '7.70', '1.10', '0.00', '28.40', '199.0', 9),
(317, 'Ice cream plain', NULL, '64.40', '3.70', '6.60', '0.60', '0.00', '24.80', '167.0', 9),
(318, 'Kashta', NULL, '62.10', '11.20', '12.20', '1.80', '0.00', '12.70', '207.0', 9),
(319, 'Kishk', NULL, '13.00', '15.90', '11.90', '5.60', '1.80', '51.80', '378.0', 9),
(320, 'Labneh', NULL, '73.70', '12.90', '10.80', '1.60', '0.00', '1.00', '154.0', 9),
(321, 'Milk buffalo', NULL, '83.00', '4.00', '7.00', '0.70', '0.00', '5.30', '101.0', 9),
(322, 'Milk camel', NULL, '87.50', '2.70', '3.30', '8.00', '0.00', '5.30', '62.0', 9),
(323, 'Milk cow whole,condensed & sweetened', NULL, '29.00', '7.30', '8.00', '1.00', '0.00', '53.90', '317.0', 9),
(324, 'Milk cow skimmed', NULL, '91.10', '3.30', '0.10', '0.00', '0.00', '5.00', '33.0', 9),
(325, 'Milk cow whole powder', NULL, '4.00', '25.50', '27.50', '5.00', '0.00', '37.50', '500.0', 9),
(326, 'Milk cow low fat', NULL, '89.80', '3.30', '1.60', '0.00', '0.00', '5.00', '46.0', 9),
(327, 'Milk cow whole', NULL, '87.40', '3.50', '3.00', '0.60', '0.00', '5.50', '64.0', 9),
(328, 'Milk cow whole evaporated', NULL, '73.80', '7.00', '7.90', '1.60', '0.00', '9.70', '137.0', 9),
(329, 'Milk goat whole', NULL, '87.00', '3.30', '4.00', '0.70', '0.00', '5.00', '70.0', 9),
(330, 'Milk human mature', NULL, '86.70', '1.20', '3.90', '0.00', '0.00', '7.40', '69.0', 9),
(331, 'Milk sheep whole', NULL, '83.10', '5.40', '6.00', '0.00', '0.00', '5.10', '95.0', 9),
(332, 'Yoghurt', NULL, '88.10', '3.20', '2.60', '0.70', '0.00', '5.40', '59.0', 9),
(333, 'Coconut oil', NULL, '0.00', '0.00', '99.90', '0.00', '0.00', '0.00', '899.0', 10),
(334, 'Corn oil', NULL, '0.00', '0.00', '99.90', '0.00', '0.00', '0.00', '899.0', 10),
(335, 'Cotton seed oil', NULL, '0.00', '0.00', '99.90', '0.00', '0.00', '0.00', '899.0', 10),
(336, 'Ghee,butter', NULL, '0.10', '0.00', '99.80', '0.00', '0.00', '0.00', '899.0', 10),
(337, 'Ghee,vegetable', NULL, '0.00', '0.00', '99.90', '0.00', '0.00', '0.00', '900.0', 10),
(338, 'God liver oil', NULL, '0.00', '0.00', '99.90', '0.00', '0.00', '0.00', '899.0', 10),
(339, 'Margarine', NULL, '15.50', '0.60', '81.00', '0.00', '0.00', '0.40', '736.0', 10),
(340, 'Olive oil', NULL, '0.00', '0.00', '99.90', '0.00', '0.00', '0.00', '899.0', 10),
(341, 'Palm oil', NULL, '0.00', '0.00', '99.90', '0.00', '0.00', '0.00', '899.0', 10),
(342, 'Sesame oil', NULL, '0.10', '0.20', '99.70', '0.00', '0.00', '0.00', '881.0', 10),
(343, 'Sheep tallow', NULL, '9.40', '0.30', '90.20', '0.10', '0.00', '0.00', '813.0', 10),
(344, 'Soy oil', NULL, '0.00', '0.00', '99.90', '0.00', '0.00', '0.00', '899.0', 10),
(345, 'Safflower oil', NULL, '0.00', '0.00', '99.90', '0.00', '0.00', '0.00', '899.0', 10),
(346, 'Sunflower seed oil', NULL, '0.00', '0.00', '99.90', '0.00', '0.00', '0.00', '899.0', 10),
(347, 'Allspice ground', NULL, '8.50', '6.10', '8.70', '0.00', '0.00', '0.00', '0.0', 11),
(348, 'Anise seeds', NULL, '9.50', '17.60', '15.90', '0.00', '0.00', '0.00', '0.0', 11),
(349, 'Caraway seeds', NULL, '9.90', '19.80', '14.60', '0.00', '0.00', '0.00', '0.0', 11),
(350, 'Cardamom dried seed', NULL, '20.00', '10.20', '2.20', '5.40', '20.10', '42.10', '229.0', 11),
(351, 'Cardamom ground', NULL, '8.30', '10.80', '6.70', '0.00', '0.00', '0.00', '0.0', 11),
(352, 'Celery seeds', NULL, '6.00', '18.10', '25.30', '0.00', '0.00', '0.00', '0.0', 11),
(353, 'Chilli powder', NULL, '7.80', '12.30', '16.80', '0.00', '0.00', '0.00', '0.0', 11),
(354, 'Chillies dried', NULL, '10.00', '15.90', '6.20', '6.10', '30.20', '31.60', '246.0', 11),
(355, 'Cinnamon bark', NULL, '8.10', '3.90', '2.20', '5.00', '23.90', '56.90', '364.0', 11),
(356, 'Cinnamon ground', NULL, '9.50', '3.90', '3.20', '0.00', '0.00', '0.00', '0.0', 11),
(357, 'Cloves dried', NULL, '6.90', '6.00', '20.10', '0.00', '0.00', '0.00', '0.0', 11),
(358, 'Coriander leaves fresh', NULL, '92.80', '2.40', '0.60', '0.00', '0.90', '1.80', '20.0', 11),
(359, 'Coriander seeds', NULL, '8.90', '12.40', '17.80', '0.00', '0.00', '0.00', '0.0', 11),
(360, 'Cumin seeds', NULL, '8.10', '17.80', '18.20', '0.00', '0.00', '0.00', '0.0', 11),
(361, 'Curry powder', NULL, '8.50', '9.50', '10.80', '0.00', '23.00', '26.10', '233.0', 11),
(362, 'Fennel seeds', NULL, '8.80', '15.80', '14.90', '0.00', '0.00', '0.00', '0.0', 11),
(363, 'Fenugreek seeds', NULL, '9.50', '23.80', '7.40', '0.00', '0.00', '0.00', '0.0', 11),
(364, 'Garam masala', NULL, '10.10', '15.60', '15.10', '0.00', '0.00', '45.20', '379.0', 11),
(365, 'Garlic powder', NULL, '6.50', '18.70', '1.20', '0.00', '9.90', '42.70', '246.0', 11),
(366, 'Ginger root fresh', NULL, '10.50', '8.50', '3.60', '6.80', '2.40', '68.20', '356.0', 11),
(367, 'Ginger fresh', NULL, '85.70', '1.70', '0.70', '0.00', '0.00', '9.50', '49.0', 11),
(368, 'Ginger dried ground', NULL, '9.40', '7.40', '3.30', '0.00', '0.00', '60.00', '258.0', 11),
(369, 'Lemon black dried', NULL, '16.30', '7.80', '2.70', '5.30', '0.00', '67.90', '327.0', 11),
(370, 'Mace', NULL, '15.90', '6.50', '24.40', '1.60', '3.80', '47.80', '437.0', 11),
(371, 'Mint fresh', NULL, '86.40', '3.80', '0.70', '0.00', '0.00', '5.30', '43.0', 11),
(372, 'Mint dried', NULL, '11.30', '24.80', '4.60', '0.00', '0.00', '34.60', '279.0', 11),
(373, 'Mustard powder', NULL, '8.00', '28.90', '28.70', '0.00', '0.00', '20.70', '452.0', 11),
(374, 'Mustard seeds', NULL, '6.90', '24.90', '28.80', '0.00', '0.00', '0.00', '0.0', 11),
(375, 'Nutmeg', NULL, '14.30', '7.50', '36.40', '1.70', '11.60', '28.50', '472.0', 11),
(376, 'Nutmeg ground', NULL, '6.20', '5.80', '36.30', '0.00', '0.00', '0.00', '0.0', 11),
(377, 'Paprika', NULL, '9.50', '14.80', '13.00', '0.00', '0.00', '34.90', '289.0', 11),
(378, 'Parsley fresh', NULL, '83.10', '3.00', '1.30', '0.00', '5.00', '2.70', '34.0', 11),
(379, 'Parsley dried', NULL, '9.00', '15.80', '7.00', '0.00', '26.90', '14.50', '181.0', 11),
(380, 'Pepper black', NULL, '10.50', '10.90', '3.30', '0.00', '0.00', '0.00', '0.0', 11),
(381, 'Pepper ground', NULL, '8.10', '12.00', '17.30', '0.00', '0.00', '31.70', '318.0', 11),
(382, 'Pepper white', NULL, '11.40', '10.40', '2.10', '0.00', '0.00', '0.00', '0.0', 11),
(383, 'Poppy seeds', NULL, '6.00', '20.60', '44.00', '0.00', '0.00', '0.00', '0.0', 11),
(384, 'Saffron', NULL, '11.90', '11.40', '5.90', '0.00', '0.00', '61.50', '310.0', 11),
(385, 'Tamarind leaves fresh', NULL, '70.50', '5.80', '2.10', '0.00', '0.00', '18.20', '115.0', 11),
(386, 'Tamarind pulp', NULL, '25.80', '3.20', '0.30', '0.00', '0.00', '64.50', '273.0', 11),
(387, 'Thyme fresh', NULL, '69.30', '3.00', '2.50', '0.00', '0.00', '15.10', '95.0', 11),
(388, 'Thyme dried ground', NULL, '7.80', '9.10', '7.40', '0.00', '0.00', '45.30', '276.0', 11),
(389, 'Turmeric', NULL, '13.10', '6.30', '5.10', '3.50', '2.60', '69.40', '349.0', 11),
(390, 'Apple juice', NULL, '88.30', '0.10', '0.00', '0.20', '0.00', '11.40', '46.0', 12),
(391, 'Apple juice fresh', NULL, '81.90', '0.40', '0.10', '0.10', '0.30', '17.20', '72.0', 12),
(392, 'Apple juice unsweetened', NULL, '88.00', '0.10', '0.10', '0.00', '0.00', '9.90', '38.0', 12),
(393, 'Apricot juice', NULL, '87.00', '0.60', '0.10', '0.60', '0.00', '11.70', '50.0', 12),
(394, 'Arabic coffee', NULL, '99.00', '0.10', '0.00', '0.20', '0.00', '0.60', '4.0', 12),
(395, 'Banana jucice fresh', NULL, '76.20', '1.40', '0.10', '0.50', '0.80', '21.00', '91.0', 12),
(396, 'Carrot juice', NULL, '92.30', '0.50', '0.10', '0.00', '0.00', '5.70', '24.0', 12),
(397, 'Carrot juice fresh', NULL, '91.30', '0.70', '0.10', '0.80', '0.20', '7.00', '31.0', 12),
(398, 'Cocoa powder', NULL, '3.40', '18.50', '21.70', '0.00', '0.00', '11.50', '312.0', 12),
(399, 'Cocoa made up with whole milk', NULL, '84.60', '3.40', '4.20', '0.00', '0.20', '6.80', '76.0', 12),
(400, 'Coffee ground roasted', NULL, '4.10', '10.40', '15.40', '0.00', '0.00', '28.50', '287.0', 12),
(401, 'Coffee instant', NULL, '3.40', '14.60', '0.00', '0.00', '0.00', '11.00', '100.0', 12),
(402, 'Coffeemate', NULL, '3.00', '2.70', '34.90', '0.00', '0.00', '57.30', '540.0', 12),
(403, 'Cola drinks', NULL, '89.80', '0.00', '0.00', '0.00', '0.00', '10.50', '39.0', 12),
(404, 'Diet carbonated drinks', NULL, '100.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0', 12),
(405, 'Drinking chocolate powder', NULL, '2.10', '5.50', '6.00', '0.00', '0.00', '77.00', '366.0', 12),
(406, 'Drinking chocolate powder made up with whole milk', NULL, '80.90', '3.40', '4.10', '0.00', '0.00', '10.60', '90.0', 12),
(407, 'Grape juice unsweetened', NULL, '85.40', '0.30', '0.10', '0.00', '0.00', '11.70', '46.0', 12),
(408, 'Grapes juice sweetened', NULL, '84.20', '0.20', '0.00', '0.30', '0.00', '15.30', '62.0', 12),
(409, 'Grapefruit canned', NULL, '89.80', '0.30', '0.00', '0.00', '0.00', '7.90', '31.0', 12),
(410, 'Grapefruit canned sweetened', NULL, '87.30', '0.50', '0.00', '0.00', '0.00', '9.70', '38.0', 12),
(411, 'Grapefruit juice unsweetened', NULL, '89.40', '0.40', '0.10', '0.00', '0.00', '8.30', '33.0', 12),
(412, 'Guava juice fresh', NULL, '90.00', '0.40', '26.00', '0.30', '1.90', '6.80', '31.0', 12),
(413, 'Horlicks powder', NULL, '2.50', '12.40', '4.00', '0.00', '0.00', '78.00', '378.0', 12),
(414, 'ـmade up with whole milk', NULL, '78.60', '4.20', '3.90', '0.00', '0.00', '12.70', '99.0', 12),
(415, 'Kiwi juice fresh', NULL, '86.40', '0.50', '0.40', '0.40', '0.80', '11.50', '52.0', 12),
(416, 'Lemon juice', NULL, '91.40', '0.30', '0.00', '0.00', '0.10', '1.60', '7.0', 12),
(417, 'Lemonade bottled', NULL, '94.60', '0.00', '0.00', '0.00', '0.00', '5.60', '21.0', 12),
(418, 'Lime juice cordial undiluted', NULL, '70.50', '0.10', '0.00', '0.00', '0.00', '29.80', '112.0', 12),
(419, 'Milk shake powder', NULL, '0.50', '1.30', '1.60', '0.00', '0.00', '98.30', '388.0', 12),
(420, 'Milk shake powder made up with whole milk', NULL, '81.90', '3.10', '3.70', '0.00', '0.00', '11.10', '87.0', 12),
(421, 'Mixed fruit juice fresh', NULL, '80.80', '1.40', '0.50', '0.50', '0.40', '16.40', '76.0', 12),
(422, 'Mango juice fresh', NULL, '83.00', '0.40', '0.10', '0.20', '0.50', '15.90', '66.0', 12),
(423, 'Orange drink undiluted', NULL, '71.20', '0.00', '0.00', '0.00', '0.00', '28.50', '107.0', 12),
(424, 'Orange juice fresh', NULL, '84.60', '0.40', '0.10', '0.20', '0.30', '14.40', '61.0', 12),
(425, 'Orange juice unsweetened', NULL, '89.20', '0.50', '0.10', '0.00', '0.10', '8.80', '36.0', 12),
(426, 'Ovaltine powder', NULL, '2.00', '9.00', '2.70', '0.00', '0.00', '79.40', '358.0', 12),
(427, 'Ovaltine powder made up with whole milk', NULL, '78.50', '3.80', '3.80', '0.00', '0.00', '12.90', '97.0', 12),
(428, 'Pineapple juice fresh', NULL, '85.20', '0.20', '0.10', '0.20', '0.40', '14.00', '57.0', 12),
(429, 'Pineapple juice,unsweetened', NULL, '87.80', '0.30', '0.10', '0.00', '0.00', '10.50', '41.0', 12),
(430, 'Ribena undiluted', NULL, '40.30', '0.10', '0.00', '0.00', '0.00', '60.80', '228.0', 12),
(431, 'Strawbery juice fresh', NULL, '80.40', '0.20', '0.20', '0.20', '0.40', '18.70', '77.0', 12),
(432, 'Tea plain', NULL, '88.90', '0.00', '0.00', '0.00', '0.60', '0.00', '0.0', 12),
(433, 'Tomato juice', NULL, '93.80', '0.80', '0.00', '0.00', '0.60', '3.00', '14.0', 12),
(434, 'Watermellon juice fresh', NULL, '89.10', '0.60', '0.50', '0.20', '0.30', '9.80', '42.0', 12),
(435, 'Cheese & egg bakery', NULL, '39.00', '14.40', '10.70', '1.80', '2.20', '31.90', '281.7', 13),
(436, 'Cheese bakery', NULL, '32.20', '14.80', '9.90', '2.00', '1.30', '39.90', '307.9', 13),
(437, 'Grilled chicken (Tikkah)', NULL, '60.00', '30.40', '6.00', '2.10', '0.70', '0.80', '182.0', 13),
(438, 'Grilled meat (Tikkah)', NULL, '50.90', '28.60', '15.80', '2.40', '1.50', '0.80', '266.0', 13),
(439, 'Labneh bakery', NULL, '43.50', '7.30', '10.60', '1.00', '2.60', '35.00', '264.5', 13),
(440, 'Mahiawah bakery', NULL, '29.50', '8.60', '6.40', '1.90', '1.80', '51.90', '299.2', 13),
(441, 'Minced chicken (kofta)', NULL, '56.20', '25.20', '15.40', '2.50', '0.70', '0.00', '242.0', 13),
(442, 'Minced meat (Kofta)', NULL, '55.00', '26.70', '14.30', '2.50', '1.20', '0.30', '242.0', 13),
(443, 'Potato chops(fried)', NULL, '67.70', '2.60', '4.90', '1.70', '2.50', '20.60', '136.7', 13),
(444, 'Samosa cheese', NULL, '22.00', '13.10', '27.00', '4.40', '1.80', '31.70', '429.0', 13),
(445, 'Samosa vegetable', NULL, '47.60', '5.80', '12.10', '2.40', '2.90', '29.20', '260.0', 13),
(446, 'Shawarma chicken', NULL, '49.40', '15.90', '11.20', '1.80', '1.60', '20.10', '251.0', 13),
(447, 'Shawarma meat (beef)', NULL, '50.30', '16.90', '9.40', '1.80', '3.10', '18.50', '238.0', 13),
(448, 'Spanish with labneh bakery', NULL, '54.20', '5.60', '7.20', '1.40', '2.20', '29.40', '205.2', 13),
(449, 'Spanish with meat bread', NULL, '55.40', '7.60', '6.20', '1.50', '2.60', '26.80', '193.3', 13),
(450, 'Spanish bakery', NULL, '49.80', '6.90', '7.00', '1.40', '2.40', '32.60', '220.6', 13),
(451, 'Thyme bakery(Zatar)', NULL, '18.80', '8.40', '14.60', '1.40', '1.00', '55.90', '388.6', 13),
(452, 'Thyme with cheese bakery', NULL, '32.10', '13.90', '10.30', '2.10', '1.20', '40.50', '309.9', 13),
(453, 'Beef burger with cheese', NULL, '48.40', '15.00', '13.00', '2.60', '2.90', '20.20', '260.0', 14),
(454, 'Beef burger without cheese', NULL, '49.90', '12.50', '11.50', '1.80', '1.50', '22.80', '251.0', 14),
(455, 'Chicken burger with cheese', NULL, '44.80', '13.80', '15.10', '2.50', '2.00', '21.80', '286.0', 14),
(456, 'Chicken burger without cheese', NULL, '45.80', '12.30', '14.30', '2.10', '1.80', '23.70', '280.0', 14),
(457, 'Fish burger', NULL, '51.60', '10.30', '11.70', '1.70', '2.40', '22.60', '238.0', 14),
(458, 'French fries', NULL, '30.40', '4.40', '17.30', '1.90', '1.10', '44.90', '349.0', 14),
(459, 'Grilled chiken sandwich', NULL, '61.90', '11.80', '6.10', '1.80', '1.60', '16.80', '170.0', 14),
(460, 'Hotdog', NULL, '47.00', '11.50', '17.10', '2.00', '2.10', '20.30', '283.0', 14),
(461, 'Kentackey chicken fried', NULL, '47.20', '20.80', '15.10', '3.10', '0.80', '13.10', '271.0', 14),
(462, 'Kentackey chicken nuggets', NULL, '49.80', '18.10', '15.30', '1.90', '0.20', '14.80', '269.0', 14),
(463, 'Nuggets', NULL, '51.30', '17.90', '13.60', '2.80', '0.80', '13.60', '252.0', 14),
(464, 'Pizza chicken', NULL, '47.10', '13.20', '8.90', '2.40', '2.10', '26.30', '246.0', 14),
(465, 'Pizza macron (lazania)', NULL, '63.20', '10.40', '11.00', '2.00', '1.70', '11.80', '187.0', 14),
(466, 'Pizza vegetable', NULL, '50.00', '10.30', '8.70', '2.40', '1.90', '26.70', '234.0', 14),
(467, 'Pizza meat', NULL, '48.40', '12.00', '9.50', '2.70', '0.80', '26.60', '243.0', 14),
(468, 'Pizza super supreme', NULL, '45.50', '12.10', '11.40', '2.20', '1.70', '27.30', '260.0', 14),
(469, 'Roast beef sandwich', NULL, '54.00', '15.30', '9.20', '2.30', '1.40', '17.80', '217.0', 14),
(470, 'Aaloo', NULL, '57.80', '2.10', '19.70', '1.70', '2.20', '16.50', '252.0', 15),
(471, 'Aaloo chab', NULL, '56.70', '6.60', '13.30', '1.50', '2.60', '19.30', '223.0', 15),
(472, 'Aaseedah', NULL, '51.80', '4.30', '11.90', '0.40', '2.00', '29.60', '243.0', 15),
(473, 'Aigalee', NULL, '22.10', '10.10', '9.40', '1.10', '0.60', '56.70', '352.0', 15),
(474, 'Bajelah', NULL, '75.00', '6.20', '1.00', '0.70', '0.80', '16.30', '99.0', 15),
(475, 'Balaaleet', NULL, '57.10', '5.50', '6.10', '0.30', '0.60', '30.40', '199.0', 15),
(476, 'Betheeth', NULL, '17.60', '2.60', '6.40', '1.00', '1.40', '71.00', '352.0', 15),
(477, 'Biriyani Laham', NULL, '58.20', '8.10', '6.40', '1.20', '0.70', '25.40', '192.0', 15),
(478, 'Chebah Rebian', NULL, '74.10', '5.20', '2.50', '1.30', '0.60', '16.30', '109.0', 15),
(479, 'Custard', NULL, '80.70', '2.80', '3.10', '0.70', '0.10', '12.60', '90.0', 15),
(480, 'Dahal', NULL, '77.60', '4.50', '2.50', '1.30', '0.90', '13.20', '93.0', 15),
(481, 'Elbah', NULL, '73.90', '4.30', '3.30', '0.50', '0.20', '17.80', '118.0', 15),
(482, 'Faaloodah', NULL, '79.00', '0.90', '0.90', '0.60', '0.20', '18.40', '85.0', 15),
(483, 'Gellab', NULL, '43.80', '3.10', '25.00', '0.30', '3.80', '24.00', '333.0', 15),
(484, 'Hamburgers (home made)', NULL, '53.50', '19.30', '17.10', '2.20', '1.80', '6.10', '256.0', 15),
(485, 'Hareese', NULL, '81.00', '5.10', '1.50', '1.40', '0.50', '10.50', '76.0', 15),
(486, 'Hesso', NULL, '73.00', '2.90', '7.10', '0.40', '1.70', '14.90', '135.0', 15),
(487, 'Jereesh Rebian', NULL, '74.10', '3.30', '4.80', '1.50', '0.50', '15.80', '120.0', 15),
(488, 'Kabab', NULL, '42.90', '8.10', '12.60', '1.50', '1.20', '33.70', '281.0', 15),
(489, 'Keema', NULL, '77.20', '7.50', '4.50', '2.20', '1.20', '7.40', '100.0', 15),
(490, 'Khabeesah', NULL, '29.70', '3.50', '6.30', '0.30', '1.60', '58.60', '305.0', 15),
(491, 'Khanfaroosh', NULL, '32.30', '6.30', '10.10', '0.40', '0.90', '50.10', '316.0', 15),
(492, 'Legaimaat', NULL, '42.50', '3.00', '9.50', '0.20', '0.50', '44.40', '275.0', 15),
(493, 'Loobah', NULL, '76.40', '5.90', '0.90', '0.80', '0.90', '15.10', '92.0', 15),
(494, 'Madroubah Rebian', NULL, '79.10', '3.30', '3.30', '0.80', '0.30', '13.20', '96.0', 15),
(495, 'Macarona', NULL, '69.80', '7.40', '3.90', '1.20', '0.90', '16.80', '132.0', 15),
(496, 'Machbous Dajaj', NULL, '62.40', '5.00', '6.00', '1.10', '0.30', '25.20', '175.0', 15),
(497, 'Mahamer', NULL, '42.90', '2.90', '4.00', '0.80', '0.40', '49.00', '244.0', 15),
(498, 'Mahlabiyyeh', NULL, '75.90', '2.90', '2.90', '0.60', '0.10', '17.60', '108.0', 15),
(499, 'Markoukah Dajaj', NULL, '65.60', '5.60', '4.10', '1.40', '0.60', '22.70', '150.0', 15),
(500, 'Masley Laham', NULL, '60.30', '6.60', '4.20', '1.90', '0.20', '26.80', '171.0', 15),
(501, 'Momowash Rebian', NULL, '66.20', '4.60', '4.00', '2.60', '0.60', '22.00', '142.0', 15),
(502, 'Nekhee', NULL, '75.00', '5.00', '2.00', '1.60', '1.40', '15.00', '98.0', 15),
(503, 'Qadah Al-Eid', NULL, '53.00', '8.50', '11.80', '1.20', '1.30', '24.20', '237.0', 15),
(504, 'Qurs Al-Taabi', NULL, '35.00', '6.70', '18.90', '0.50', '2.00', '36.90', '345.0', 15),
(505, 'Sago', NULL, '70.70', '1.00', '2.20', '0.10', '0.50', '25.50', '126.0', 15),
(506, 'Saloonah Dajaj', NULL, '82.30', '7.30', '4.40', '1.70', '0.80', '3.60', '83.0', 15),
(507, 'Saloonah Samek', NULL, '83.80', '7.00', '5.80', '2.30', '0.60', '0.50', '82.0', 15),
(508, 'Sambosa (home made)', NULL, '47.80', '6.60', '10.00', '1.40', '1.60', '32.60', '247.0', 15),
(509, 'Samek Maglee', NULL, '60.00', '23.70', '13.00', '3.00', '0.30', '0.00', '211.0', 15),
(510, 'Shailani', NULL, '60.50', '3.10', '3.80', '0.80', '0.50', '31.30', '172.0', 15),
(511, 'Thareed', NULL, '75.00', '6.80', '3.50', '2.00', '0.60', '12.10', '107.0', 15),
(512, 'Tikkah meat', NULL, '55.10', '35.30', '3.90', '3.70', '0.80', '1.20', '181.0', 15),
(513, 'Sambosa biljebin', NULL, '24.92', '11.58', '23.93', '3.05', '1.38', '35.18', '402.0', 16),
(514, 'Shawarma dajaj', NULL, '47.53', '15.81', '9.56', '1.85', '1.28', '23.97', '245.0', 16),
(515, 'Tikkah dajaj', NULL, '61.18', '28.09', '5.62', '2.39', '0.56', '2.16', '171.0', 16),
(516, 'Kabab leham', NULL, '57.04', '25.16', '12.96', '2.66', '0.63', '1.55', '223.0', 16),
(517, 'Shawarma laham', NULL, '49.58', '15.06', '8.87', '1.69', '2.86', '21.94', '227.0', 16),
(518, 'Tikkah laham', NULL, '51.12', '28.10', '14.37', '2.11', '0.66', '3.64', '256.0', 16),
(519, 'Tikkah laham bedon shaham', NULL, '53.99', '31.96', '8.20', '2.16', '0.75', '2.94', '213.0', 16),
(520, 'Aaloo', NULL, '67.70', '2.63', '4.86', '1.69', '2.52', '20.60', '136.0', 16),
(521, 'Sambosa khodr', NULL, '43.90', '5.07', '13.61', '1.92', '2.21', '33.29', '275.0', 16),
(522, 'Baqlawa', NULL, '6.40', '9.50', '38.80', '1.40', '2.10', '41.80', '555.0', 17),
(523, 'Sharria', NULL, '5.30', '8.60', '37.00', '1.00', '2.80', '45.40', '548.0', 17),
(524, 'Halwa kudra', NULL, '11.90', '1.60', '6.30', '0.30', '1.90', '78.10', '376.0', 17),
(525, 'Halwa hamra', NULL, '9.00', '1.10', '7.10', '0.20', '1.40', '81.20', '393.0', 17),
(526, 'Methai', NULL, '3.50', '17.30', '29.90', '3.30', '2.30', '43.80', '513.0', 17),
(527, 'Rahash', NULL, '0.90', '14.30', '30.70', '2.10', '1.80', '50.90', '531.0', 17),
(528, 'Rahash bil mukasarat', NULL, '1.10', '14.10', '29.70', '2.10', '1.60', '51.40', '529.0', 17);

-- --------------------------------------------------------

--
-- Table structure for table `general_files`
--

CREATE TABLE `general_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_files`
--

INSERT INTO `general_files` (`id`, `file_name`, `file_id`, `service_type`, `description`, `file_size`, `created_at`, `client_id`, `user_id`, `uploaded_by`, `deleted`) VALUES
(1, '_file605cb358636fe-ammar_sign.png', NULL, NULL, '', 121853, '2021-03-25 15:59:20', 1, 0, 1, 1),
(2, '_file60a237eca0deb-_file604a312e42a87-site-logo.png', NULL, NULL, 'client report from hospital', 1536, '2021-05-17 09:31:24', 4, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `help_articles`
--

CREATE TABLE `help_articles` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_categories`
--

CREATE TABLE `help_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('help','knowledge_base') COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','not_paid','cancelled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `tax_id3` int(11) NOT NULL DEFAULT 0,
  `recurring` tinyint(4) NOT NULL DEFAULT 0,
  `recurring_invoice_id` int(11) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT 0,
  `due_reminder_date` date DEFAULT NULL,
  `recurring_reminder_date` date DEFAULT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancelled_by` int(11) NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `client_id`, `project_id`, `bill_date`, `due_date`, `note`, `labels`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `tax_id3`, `recurring`, `recurring_invoice_id`, `repeat_every`, `repeat_type`, `no_of_cycles`, `next_recurring_date`, `no_of_cycles_completed`, `due_reminder_date`, `recurring_reminder_date`, `discount_amount`, `discount_amount_type`, `discount_type`, `cancelled_at`, `cancelled_by`, `files`, `deleted`) VALUES
(1, 1, 0, '2021-03-28', '2021-03-28', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 1),
(2, 2, 0, '2021-04-24', '2021-04-24', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 1),
(3, 2, 0, '2021-04-24', '2021-04-24', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 1),
(4, 2, 0, '2021-04-24', '2021-04-24', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 1),
(5, 2, 0, '2021-04-24', '2021-04-24', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 0),
(6, 2, 0, '2021-04-24', '2021-04-24', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 0),
(7, 2, 0, '2021-04-24', '2021-04-24', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 0),
(8, 3, 0, '2021-04-25', '2021-04-25', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 0),
(9, 4, 0, '2021-05-16', '2021-05-16', '', '', NULL, 'draft', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'fixed_amount', 'before_tax', NULL, 0, 'a:0:{}', 0),
(10, 4, 0, '2021-05-16', '2021-05-16', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 0),
(11, 5, 0, '2021-05-17', '2021-05-17', '', '', NULL, 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 0),
(12, 6, 0, '2021-05-18', '2021-05-18', '', '', NULL, 'not_paid', 0, 0, 0, 1, 0, 1, 'months', 4, '2021-06-18', 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 0),
(13, 6, 0, '2021-05-18', '2021-05-18', '', '', NULL, 'not_paid', 0, 0, 0, 1, 0, 1, 'months', 4, '2021-06-18', 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `title`, `description`, `quantity`, `unit_type`, `rate`, `total`, `sort`, `invoice_id`, `deleted`) VALUES
(1, 'First consultation', '', 1, 'each', 5, 5, 0, 1, 0),
(2, 'First consultation', '', 1, 'each', 5, 5, 0, 2, 0),
(3, 'First consultation', '', 1, 'each', 5, 5, 0, 3, 0),
(4, 'First consultation', '', 1, 'each', 5, 5, 0, 4, 0),
(5, 'First consultation', '', 1, 'each', 5, 5, 0, 5, 0),
(6, 'باقة رمضان', 'فحص شامل للجسم\\\nنظام حمية متكامل', 1, '', 15, 15, 0, 6, 0),
(7, 'باقة رمضان', 'فحص شامل للجسم\\\nنظام حمية متكامل', 1, '', 100, 100, 0, 7, 0),
(8, 'First consultation', '', 1, 'each', 5, 5, 0, 8, 0),
(9, 'Dietation Prgoram', 'full detail deitation program', 1, 'each', 25, 25, 0, 9, 0),
(10, 'Dietation Prgoram', 'full detail deitation program', 1, 'each', 25, 25, 0, 9, 1),
(11, 'medical nutrition supplement', '-', 24, 'pc', 0.6, 14.4, 0, 10, 0),
(12, 'Dietation Prgoram', 'full detail deitation program', 1, 'each', 25, 25, 0, 10, 0),
(13, 'first session in device', '', 1, 'each', 25, 25, 0, 12, 0),
(14, 'medical nutrition supplement', '-', 24, 'pc', 0.6, 14.4, 0, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_payments`
--

INSERT INTO `invoice_payments` (`id`, `amount`, `payment_date`, `payment_method_id`, `note`, `invoice_id`, `deleted`, `transaction_id`, `created_by`, `created_at`) VALUES
(1, 5, '2021-04-24', 5, 'paid', 1, 1, NULL, 2, '2021-04-24 09:38:12'),
(2, 15, '2021-04-24', 5, '', 6, 0, NULL, 2, '2021-04-24 10:09:13'),
(3, 50, '2021-04-24', 5, '', 7, 0, NULL, 2, '2021-04-24 10:10:34'),
(4, 25, '2021-04-25', 5, '', 7, 0, NULL, 2, '2021-04-24 10:11:19'),
(5, 20, '2021-05-16', 5, '', 10, 0, NULL, 1, '2021-05-16 14:42:29'),
(6, 19.4, '2021-05-17', 1, 'second payment', 10, 0, NULL, 1, '2021-05-16 14:43:38'),
(7, 50, '2021-05-18', 5, 'session for first device', 11, 0, NULL, 1, '2021-05-18 04:11:25'),
(8, 25, '2021-05-18', 5, '', 12, 0, NULL, 1, '2021-05-18 04:17:27'),
(9, 100, '2021-05-18', 5, 'half  payment', 12, 0, NULL, 1, '2021-05-18 04:35:45'),
(10, 50, '2021-05-18', 5, 'full payment', 13, 0, NULL, 1, '2021-05-18 04:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `show_in_client_portal` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `unit_type`, `rate`, `files`, `show_in_client_portal`, `category_id`, `sort`, `deleted`) VALUES
(1, 'First consultation', '', 'each', 0, 'a:0:{}', 0, 1, 0, 0),
(2, 'باقة رمضان', 'فحص شامل للجسم\\\nنظام حمية متكامل', '', 15, 'a:0:{}', 0, 1, 0, 1),
(3, 'Dietation Prgoram', 'full detail deitation program', 'each', 25, '', 0, 0, 0, 0),
(4, 'medical nutrition supplement', '-', 'pc', 0.6, '', 0, 0, 0, 0),
(5, 'first session in device', '', 'each', 25, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `title`, `deleted`) VALUES
(1, 'General item', 0);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `context` enum('event','invoice','note','project','task','ticket','to_do') COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `title`, `color`, `context`, `user_id`, `deleted`) VALUES
(1, 'important', '#83c340', 'note', 1, 0),
(2, 'work', '#2d9cdb', 'note', 1, 0),
(3, 'appointment', '#29c2c2', 'event', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_source`
--

CREATE TABLE `lead_source` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lead_source`
--

INSERT INTO `lead_source` (`id`, `title`, `sort`, `deleted`) VALUES
(1, 'Google', 1, 0),
(2, 'Facebook', 2, 0),
(3, 'Twitter', 3, 0),
(4, 'Youtube', 4, 0),
(5, 'Elsewhere', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lead_status`
--

CREATE TABLE `lead_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lead_status`
--

INSERT INTO `lead_status` (`id`, `title`, `color`, `sort`, `deleted`) VALUES
(1, 'New', '#f1c40f', 0, 0),
(2, 'Qualified', '#2d9cdb', 1, 0),
(3, 'Discussion', '#29c2c2', 2, 0),
(4, 'Negotiation', '#2d9cdb', 3, 0),
(5, 'Won', '#83c340', 4, 0),
(6, 'Lost', '#e74c3c', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_hours` decimal(7,2) NOT NULL,
  `total_days` decimal(5,2) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_at` datetime DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `leave_type_id`, `start_date`, `end_date`, `total_hours`, `total_days`, `applicant_id`, `reason`, `status`, `created_at`, `created_by`, `checked_at`, `checked_by`, `deleted`) VALUES
(1, 1, '2021-05-10', '2021-05-27', '144.00', '18.00', 4, 'sick leave', 'approved', '2021-05-16 16:06:55', 1, '2021-05-16 16:06:55', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `status`, `color`, `description`, `deleted`) VALUES
(1, 'Casual Leave', 'active', '#2d9cdb', '', 0),
(2, 'sick leave', 'active', '#e74c3c', '', 0),
(3, 'Annual leave', 'active', '#83c340', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `message_id` int(11) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `files` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_by_users` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `subject`, `message`, `created_at`, `from_user_id`, `to_user_id`, `status`, `message_id`, `deleted`, `files`, `deleted_by_users`) VALUES
(1, 'Hello Dr', 'this is a message for you', '2021-05-16 15:52:23', 1, 2, 'read', 0, 0, 'a:0:{}', ''),
(2, '', 'hello admin\n', '2021-05-16 15:56:09', 2, 1, 'read', 1, 0, 'a:0:{}', ''),
(3, '', 'this is a message\n', '2021-05-16 15:56:33', 1, 2, 'unread', 1, 0, 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `created_by`, `created_at`, `title`, `description`, `project_id`, `client_id`, `user_id`, `labels`, `files`, `is_public`, `deleted`) VALUES
(1, 2, '2021-04-24 10:12:23', 'Note 1', 'some information here\nadd as many information you want about this patient apointment', 0, 2, 0, '', 'a:1:{i:0;a:4:{s:9:\"file_name\";s:55:\"note_file6083ef57eb961-_file604a312e42a87-site-logo.png\";s:9:\"file_size\";s:4:\"1536\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0, 0),
(2, 2, '2021-04-25 06:34:31', 'Body mesaures', 'fdfdsd', 0, 3, 0, '', 'a:1:{i:0;a:4:{s:9:\"file_name\";s:32:\"note_file60850d7769fb3-lang.docx\";s:9:\"file_size\";s:5:\"45412\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_comment_id` int(11) NOT NULL,
  `project_file_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `activity_log_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `invoice_payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL,
  `actual_message_id` int(11) NOT NULL,
  `parent_message_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `lead_id`, `invoice_payment_id`, `invoice_id`, `estimate_id`, `order_id`, `estimate_request_id`, `actual_message_id`, `parent_message_id`, `event_id`, `announcement_id`, `deleted`) VALUES
(1, 1, '', '2021-03-24 08:03:48', '', '', 'project_comment_added', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2, 1, '', '2021-03-24 08:04:02', '', '', 'project_customer_feedback_added', 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(3, 2, '', '2021-04-25 06:43:29', '', '', 'project_task_created', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 2, '', '2021-04-25 06:44:30', '', '', 'project_task_updated', 1, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 2, '', '2021-04-25 06:45:26', '', '', 'project_task_created', 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 2, '', '2021-04-25 06:46:31', '', '', 'project_task_updated', 1, 2, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 2, '', '2021-04-25 06:46:37', '', '', 'project_task_updated', 1, 2, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 1, '', '2021-05-16 14:22:26', '2,3,4', '', 'new_event_added_in_calendar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0),
(9, 1, '', '2021-05-16 14:24:19', '2,3,4', ',4', 'calendar_event_modified', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0),
(10, 1, '', '2021-05-16 15:24:58', '', '', 'project_task_created', 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 1, '', '2021-05-16 15:27:59', '', '', 'project_task_created', 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 1, '', '2021-05-16 16:06:55', '4', ',4', 'leave_assigned', 0, 0, 0, 0, 0, 0, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 1, '', '2021-05-17 09:29:03', '', '', 'ticket_commented', 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 1, '', '2021-05-17 09:35:48', '', '', 'ticket_commented', 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 1, '', '2021-05-17 09:36:59', '', '', 'ticket_closed', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 1, '', '2021-05-17 09:46:31', '2,3', '', 'project_member_added', 1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 1, '', '2021-05-17 09:58:37', '', '', 'project_task_created', 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 1, '', '2021-05-17 09:59:04', '3', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 1, '', '2021-05-17 09:59:05', '2,3', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 1, '', '2021-05-17 09:59:37', '2', '', 'project_task_assigned', 3, 5, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 1, '', '2021-05-17 10:44:53', '2,3', '', 'project_task_created', 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 1, '', '2021-05-17 10:45:09', '2', '', 'project_task_assigned', 3, 6, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 1, '', '2021-05-17 10:48:26', '', '', 'project_created', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 1, '', '2021-05-17 10:50:45', '', '', 'project_task_updated', 2, 4, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 1, '', '2021-05-17 12:48:00', '', '', 'project_created', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 1, '', '2021-05-17 14:29:23', '', '', 'project_created', 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 1, '', '2021-05-18 04:04:02', '2,3,4,5', '', 'new_event_added_in_calendar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0),
(28, 1, '', '2021-05-18 04:21:26', '', '', 'project_created', 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 1, '', '2021-05-18 04:22:25', '', '', 'project_task_created', 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `event` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `enable_email` int(1) NOT NULL DEFAULT 0,
  `enable_web` int(1) NOT NULL DEFAULT 0,
  `enable_slack` int(1) NOT NULL DEFAULT 0,
  `notify_to_team` text NOT NULL,
  `notify_to_team_members` text NOT NULL,
  `notify_to_terms` text NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `event`, `category`, `enable_email`, `enable_web`, `enable_slack`, `notify_to_team`, `notify_to_team_members`, `notify_to_terms`, `sort`, `deleted`) VALUES
(1, 'project_created', 'project', 1, 0, 0, '', '2,3', '', 1, 0),
(2, 'project_deleted', 'project', 0, 0, 0, '', '', '', 2, 0),
(3, 'project_task_created', 'project', 0, 1, 0, '', '', 'project_members,task_assignee', 3, 0),
(4, 'project_task_updated', 'project', 0, 1, 0, '', '', 'task_assignee', 4, 0),
(5, 'project_task_assigned', 'project', 1, 1, 0, '', '', 'task_assignee', 5, 0),
(7, 'project_task_started', 'project', 0, 0, 0, '', '', '', 7, 0),
(8, 'project_task_finished', 'project', 0, 0, 0, '', '', '', 8, 0),
(9, 'project_task_reopened', 'project', 0, 0, 0, '', '', '', 9, 0),
(10, 'project_task_deleted', 'project', 0, 1, 0, '', '', 'task_assignee', 10, 0),
(11, 'project_task_commented', 'project', 0, 1, 0, '', '', 'task_assignee', 11, 0),
(12, 'project_member_added', 'project', 0, 1, 0, '', '', 'project_members', 12, 0),
(13, 'project_member_deleted', 'project', 0, 1, 0, '', '', 'project_members', 13, 0),
(14, 'project_file_added', 'project', 0, 1, 0, '', '', 'project_members', 14, 0),
(15, 'project_file_deleted', 'project', 0, 1, 0, '', '', 'project_members', 15, 0),
(16, 'project_file_commented', 'project', 0, 1, 0, '', '', 'project_members', 16, 0),
(17, 'project_comment_added', 'project', 0, 1, 0, '', '', 'project_members', 17, 0),
(18, 'project_comment_replied', 'project', 0, 1, 0, '', '', 'project_members,comment_creator', 18, 0),
(19, 'project_customer_feedback_added', 'project', 0, 1, 0, '', '', 'project_members', 19, 0),
(20, 'project_customer_feedback_replied', 'project', 0, 1, 0, '', '', 'project_members,comment_creator', 20, 0),
(21, 'client_signup', 'client', 0, 0, 0, '', '', '', 21, 0),
(22, 'invoice_online_payment_received', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(23, 'leave_application_submitted', 'leave', 0, 0, 0, '', '', '', 23, 0),
(24, 'leave_approved', 'leave', 0, 1, 0, '', '', 'leave_applicant', 24, 0),
(25, 'leave_assigned', 'leave', 0, 1, 0, '', '', 'leave_applicant', 25, 0),
(26, 'leave_rejected', 'leave', 0, 1, 0, '', '', 'leave_applicant', 26, 0),
(27, 'leave_canceled', 'leave', 0, 0, 0, '', '', '', 27, 0),
(28, 'ticket_created', 'ticket', 0, 0, 0, '', '', '', 28, 0),
(29, 'ticket_commented', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator', 29, 0),
(30, 'ticket_closed', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator', 30, 0),
(31, 'ticket_reopened', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator', 31, 0),
(32, 'estimate_request_received', 'estimate', 0, 0, 0, '', '', '', 32, 0),
(34, 'estimate_accepted', 'estimate', 0, 0, 0, '', '', '', 34, 0),
(35, 'estimate_rejected', 'estimate', 0, 0, 0, '', '', '', 35, 0),
(36, 'new_message_sent', 'message', 0, 0, 0, '', '', '', 36, 0),
(37, 'message_reply_sent', 'message', 0, 0, 0, '', '', '', 37, 0),
(38, 'invoice_payment_confirmation', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(39, 'new_event_added_in_calendar', 'event', 0, 1, 0, '', '', 'recipient', 39, 0),
(40, 'recurring_invoice_created_vai_cron_job', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(41, 'new_announcement_created', 'announcement', 0, 0, 0, '', '', 'recipient', 41, 0),
(42, 'invoice_due_reminder_before_due_date', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(43, 'invoice_overdue_reminder', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(44, 'recurring_invoice_creation_reminder', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(45, 'project_completed', 'project', 0, 0, 0, '', '', '', 2, 0),
(46, 'lead_created', 'lead', 0, 0, 0, '', '', '', 21, 0),
(47, 'client_created_from_lead', 'lead', 0, 0, 0, '', '', '', 21, 0),
(48, 'project_task_deadline_pre_reminder', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(49, 'project_task_reminder_on_the_day_of_deadline', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(50, 'project_task_deadline_overdue_reminder', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(51, 'recurring_task_created_via_cron_job', 'project', 0, 1, 0, '', '', 'project_members,task_assignee', 20, 0),
(52, 'calendar_event_modified', 'event', 0, 1, 0, '', '', 'recipient', 39, 0),
(53, 'client_contact_requested_account_removal', 'client', 0, 0, 0, '', '', '', 21, 0),
(54, 'bitbucket_push_received', 'project', 0, 1, 0, '', '', '', 45, 0),
(55, 'github_push_received', 'project', 0, 1, 0, '', '', '', 45, 0),
(56, 'invited_client_contact_signed_up', 'client', 0, 0, 0, '', '', '', 21, 0),
(57, 'created_a_new_post', 'timeline', 0, 0, 0, '', '', '', 52, 0),
(58, 'timeline_post_commented', 'timeline', 0, 0, 0, '', '', '', 52, 0),
(59, 'ticket_assigned', 'ticket', 0, 0, 0, '', '', 'ticket_assignee', 31, 0),
(60, 'new_order_received', 'order', 0, 0, 0, '', '', '', 1, 0),
(61, 'order_status_updated', 'order', 0, 0, 0, '', '', '', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `title`, `color`, `sort`, `deleted`) VALUES
(1, 'New', '#f1c40f', 0, 0),
(2, 'Processing', '#29c2c2', 1, 0),
(3, 'Confirmed', '#83c340', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `internal_use_only` tinyint(1) NOT NULL DEFAULT 0,
  `visible_to_team_members_only` tinyint(1) NOT NULL DEFAULT 0,
  `visible_to_clients_only` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `civil_no` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `group_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_lead` tinyint(1) NOT NULL DEFAULT 0,
  `lead_status_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `lead_source_id` int(11) NOT NULL,
  `last_lead_status` text COLLATE utf8_unicode_ci NOT NULL,
  `client_migration_date` date NOT NULL,
  `vat_number` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_assessment`
--

CREATE TABLE `patient_assessment` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `martial_status` varchar(255) NOT NULL,
  `educatinoal_status` varchar(255) NOT NULL,
  `recent_change_status` varchar(255) NOT NULL,
  `recent_change_weight` varchar(255) NOT NULL,
  `recent_change_duration` varchar(255) NOT NULL,
  `chronic_condition` text NOT NULL,
  `women_history` text NOT NULL,
  `eating_disorders` text NOT NULL,
  `medication` text NOT NULL,
  `is_smoker` int(11) NOT NULL,
  `smoke_type` int(11) NOT NULL,
  `smoke_frequent` int(11) NOT NULL,
  `is_alcohol` tinyint(4) NOT NULL,
  `alcohol_type` varchar(255) NOT NULL,
  `alcohol_frequent` int(11) NOT NULL,
  `family_history` text NOT NULL,
  `idea_source` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `previous_regime` tinyint(4) NOT NULL,
  `previous_regime_type` varchar(255) NOT NULL,
  `previous_regime_duration` varchar(255) NOT NULL,
  `previous_regime_result` varchar(255) NOT NULL,
  `previous_regime_complications` varchar(255) NOT NULL,
  `previous_regime_failure` text NOT NULL,
  `expect_support` tinyint(4) NOT NULL,
  `life_style` text NOT NULL,
  `meal_preparation` varchar(255) NOT NULL,
  `phyiscal_activity` varchar(255) NOT NULL,
  `phyiscal_duratoin` varchar(255) NOT NULL,
  `phyiscal_frequent` varchar(255) NOT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `online_payable` tinyint(1) NOT NULL DEFAULT 0,
  `available_on_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_payment_amount` double NOT NULL DEFAULT 0,
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `type`, `description`, `online_payable`, `available_on_invoice`, `minimum_payment_amount`, `settings`, `deleted`) VALUES
(1, 'Cash', 'custom', 'Cash payments', 0, 0, 0, '', 0),
(2, 'Stripe', 'stripe', 'Stripe online payments', 1, 0, 0, 'a:3:{s:15:\"pay_button_text\";s:6:\"Stripe\";s:10:\"secret_key\";s:6:\"\";s:15:\"publishable_key\";s:6:\"\";}', 0),
(3, 'PayPal Payments Standard', 'paypal_payments_standard', 'PayPal Payments Standard Online Payments', 1, 0, 0, 'a:4:{s:15:\"pay_button_text\";s:6:\"PayPal\";s:5:\"email\";s:4:\"\";s:11:\"paypal_live\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";}', 0),
(4, 'Paytm', 'paytm', 'Paytm online payments', 1, 0, 0, '', 0),
(5, 'Card', 'custom', '', 0, 0, 0, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL,
  `transaction_id` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipn_hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ipn_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_by`, `created_at`, `description`, `post_id`, `share_with`, `files`, `deleted`) VALUES
(1, 2, '2021-05-16 15:57:10', 'some gerneral information for all peoples', 0, '', 'a:0:{}', 0),
(2, 1, '2021-05-16 15:57:32', 'ok noted', 1, '', 'a:0:{}', 0),
(3, 1, '2021-05-16 15:57:47', 'some info from admin', 0, '', 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `status` enum('open','completed','hold','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `start_date`, `deadline`, `client_id`, `created_date`, `created_by`, `status`, `labels`, `price`, `starred_by`, `estimate_id`, `deleted`) VALUES
(1, 'Deitation Schedule', '', '2021-04-25', '2021-04-26', 3, '2021-04-25', 2, 'open', '', 100, '', 0, 0),
(2, 'Badria Diet Program', '', '2021-05-16', '2021-06-30', 4, '2021-05-16', 1, 'open', '', 0, '', 0, 0),
(3, 'Ditatation Progrma for Badrya in may', '- first program', '2021-05-17', '2021-06-15', 4, '2021-05-17', 1, 'open', '', 0, '', 0, 0),
(4, 'check this', '', NULL, NULL, 4, '2021-05-17', 1, 'open', '', 0, '', 0, 0),
(5, 'New Dite program', '', '2021-05-17', '2021-05-20', 4, '2021-05-17', 1, 'open', '', 0, '', 2, 0),
(6, 'diet program for ammar in april', '', '2021-05-17', '2021-06-21', 5, '2021-05-17', 1, 'open', '', 0, '', 5, 0),
(7, 'Device', 'first session', '2021-05-18', '2021-05-18', 6, '2021-05-18', 1, 'open', '', 25, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_comments`
--

CREATE TABLE `project_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `comment_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `file_id` int(11) NOT NULL DEFAULT 0,
  `customer_feedback_id` int(11) NOT NULL DEFAULT 0,
  `files` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_members`
--

CREATE TABLE `project_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_leader` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_members`
--

INSERT INTO `project_members` (`id`, `user_id`, `project_id`, `is_leader`, `deleted`) VALUES
(1, 2, 1, 1, 0),
(2, 1, 2, 1, 0),
(3, 1, 3, 1, 0),
(4, 3, 1, 0, 0),
(5, 3, 3, 0, 0),
(6, 2, 3, 0, 0),
(7, 1, 4, 1, 0),
(8, 1, 5, 1, 0),
(9, 1, 6, 1, 0),
(10, 1, 7, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_settings`
--

CREATE TABLE `project_settings` (
  `project_id` int(11) NOT NULL,
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_time`
--

CREATE TABLE `project_time` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `hours` float NOT NULL,
  `status` enum('open','logged','approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logged',
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `permissions`, `deleted`) VALUES
(1, 'doctors', 'a:40:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";N;s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";N;s:7:\"expense\";s:3:\"all\";s:5:\"order\";N;s:6:\"client\";s:3:\"all\";s:4:\"lead\";N;s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";N;s:23:\"help_and_knowledge_base\";N;s:23:\"can_manage_all_projects\";s:1:\"1\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:24:\"show_assigned_tasks_only\";N;s:37:\"can_update_only_assigned_tasks_status\";N;s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";N;s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";N;s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";s:1:\"1\";s:28:\"can_delete_leave_application\";N;s:18:\"message_permission\";s:0:\"\";s:27:\"message_permission_specific\";s:0:\"\";}', 0),
(2, 'receptionist', 'a:40:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";N;s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";N;s:8:\"estimate\";N;s:7:\"expense\";N;s:5:\"order\";N;s:6:\"client\";s:3:\"all\";s:4:\"lead\";N;s:6:\"ticket\";N;s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";N;s:23:\"help_and_knowledge_base\";N;s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:24:\"show_assigned_tasks_only\";N;s:37:\"can_update_only_assigned_tasks_status\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";N;s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";N;s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";N;s:18:\"message_permission\";s:0:\"\";s:27:\"message_permission_specific\";s:0:\"\";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('accepted_file_formats', 'jpg,jpeg,png,docx,xlsx,txt,pdf', 'app', 0),
('allow_partial_invoice_payment_from_clients', '1', 'app', 0),
('allowed_ip_addresses', '', 'app', 0),
('app_title', 'Nutrition', 'app', 0),
('auto_close_ticket_after', '1', 'app', 0),
('auto_reply_to_tickets', '', 'app', 0),
('auto_reply_to_tickets_message', '', 'app', 0),
('client_can_pay_invoice_without_login', '1', 'app', 0),
('company_address', 'Al Mwalih - Muscat', 'app', 0),
('company_email', 'doctordietatian2020@gmail.com', 'app', 0),
('company_name', 'Doctor Dietacian ', 'app', 0),
('company_phone', '91410019 - 24182320', 'app', 0),
('company_vat_number', 'OM11xxxxxxx', 'app', 0),
('company_website', '', 'app', 0),
('currency_position', 'right', 'app', 0),
('currency_symbol', ' OMR', 'app', 0),
('date_format', 'Y-m-d', 'app', 0),
('decimal_separator', '.', 'app', 0),
('default_currency', 'OMR', 'app', 0),
('default_due_date_after_billing_date', '0', 'app', 0),
('default_theme_color', '1E202D', 'app', 0),
('email_protocol', 'smtp', 'app', 0),
('email_sent_from_address', 'dcotordietitian2020@gmail.com', 'app', 0),
('email_sent_from_name', 'admin', 'app', 0),
('email_smtp_host', 'smtp.gmail.com', 'app', 0),
('email_smtp_pass', 'ee2fcdb3dd1f709cc562ad50977273af55e26cd73654b75642575206aa26fc7d96b77acf84423ccf594f6aa7d22ea723619271df535f0cadd29c963ad678ecdblpuDvrcCJm1KOjTmE_-IJjWKHrgSDZi9TJatuJzTaoEWMFLOFtjOa74j__APPr--', 'app', 0),
('email_smtp_port', '465', 'app', 0),
('email_smtp_security_type', 'ssl', 'app', 0),
('email_smtp_user', 'doctordietitian2020@gmail.com', 'app', 0),
('enable_embedded_form_to_get_tickets', '', 'app', 0),
('enable_rich_text_editor', '0', 'app', 0),
('favicon', 'a:1:{s:9:\"file_name\";s:30:\"_file6083cc9b9f4d5-favicon.png\";}', 'app', 0),
('first_day_of_week', '0', 'app', 0),
('initial_number_of_the_invoice', '7', 'app', 0),
('invoice_color', '', 'app', 0),
('invoice_footer', '<p><br></p>', 'app', 0),
('invoice_logo', 'a:1:{s:9:\"file_name\";s:35:\"_file6083e6b5e6130-invoice-logo.png\";}', 'app', 0),
('invoice_prefix', '', 'app', 0),
('invoice_style', 'style_1', 'app', 0),
('item_purchase_code', '111111', 'app', 0),
('language', 'english', 'app', 0),
('module_announcement', '', 'app', 0),
('module_attendance', '1', 'app', 0),
('module_chat', '1', 'app', 0),
('module_estimate', '1', 'app', 0),
('module_estimate_request', '', 'app', 0),
('module_event', '1', 'app', 0),
('module_expense', '1', 'app', 0),
('module_gantt', '', 'app', 0),
('module_help', '', 'app', 0),
('module_invoice', '1', 'app', 0),
('module_knowledge_base', '', 'app', 0),
('module_lead', '', 'app', 0),
('module_leave', '1', 'app', 0),
('module_message', '1', 'app', 0),
('module_note', '1', 'app', 0),
('module_order', '', 'app', 0),
('module_project_timesheet', '', 'app', 0),
('module_ticket', '1', 'app', 0),
('module_timeline', '1', 'app', 0),
('module_todo', '1', 'app', 0),
('no_of_decimals', '2', 'app', 0),
('project_reference_in_tickets', '', 'app', 0),
('rows_per_page', '10', 'app', 0),
('rtl', '0', 'app', 0),
('scrollbar', 'jquery', 'app', 0),
('send_bcc_to', '', 'app', 0),
('send_invoice_due_after_reminder', '', 'app', 0),
('send_invoice_due_pre_reminder', '', 'app', 0),
('send_recurring_invoice_reminder_before_creation', '', 'app', 0),
('show_background_image_in_signin_page', 'no', 'app', 0),
('show_logo_in_signin_page', 'yes', 'app', 0),
('show_recent_ticket_comments_at_the_top', '', 'app', 0),
('show_theme_color_changer', 'yes', 'app', 0),
('signin_page_background', 'sigin-background-image.jpg', 'app', 0),
('site_logo', 'a:1:{s:9:\"file_name\";s:32:\"_file6083cd6e7424e-site-logo.png\";}', 'app', 0),
('task_point_range', '5', 'app', 0),
('ticket_prefix', '', 'app', 0),
('time_format', 'small', 'app', 0),
('timezone', 'Asia/Muscat', 'app', 0),
('user_1_dashboard', '', 'user', 0),
('user_2_dashboard', '', 'user', 0),
('user_3_dashboard', '', 'user', 0),
('user_4_dashboard', '', 'user', 0),
('user_4_disable_keyboard_shortcuts', '0', 'user', 0),
('user_4_disable_push_notification', '0', 'user', 0),
('user_4_hidden_topbar_menus', '', 'user', 0),
('user_4_notification_sound_volume', '0', 'user', 0),
('user_4_personal_language', 'english', 'user', 0),
('user_4_recently_meaning', '1_days', 'user', 0),
('weekends', '5', 'app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleplus` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `digg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pinterest` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `github` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tumblr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `vine` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_ipn`
--

CREATE TABLE `stripe_ipn` (
  `id` int(11) NOT NULL,
  `payment_intent` text COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` text COLLATE utf8_unicode_ci NOT NULL,
  `payment_verification_code` text COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `contact_user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `milestone_id` int(11) NOT NULL DEFAULT 0,
  `assigned_to` int(11) NOT NULL,
  `deadline` date DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `points` tinyint(4) NOT NULL DEFAULT 1,
  `status` enum('to_do','in_progress','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `status_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `collaborators` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `recurring` tinyint(1) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `recurring_task_id` int(11) NOT NULL DEFAULT 0,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT 0,
  `created_date` date NOT NULL,
  `blocking` text COLLATE utf8_unicode_ci NOT NULL,
  `blocked_by` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_task_id` int(11) NOT NULL,
  `next_recurring_date` date DEFAULT NULL,
  `reminder_date` date NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `status_changed_at` datetime DEFAULT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `project_id`, `milestone_id`, `assigned_to`, `deadline`, `labels`, `points`, `status`, `status_id`, `start_date`, `collaborators`, `sort`, `recurring`, `repeat_every`, `repeat_type`, `no_of_cycles`, `recurring_task_id`, `no_of_cycles_completed`, `created_date`, `blocking`, `blocked_by`, `parent_task_id`, `next_recurring_date`, `reminder_date`, `ticket_id`, `status_changed_at`, `deleted`) VALUES
(1, 'Meal assessment', '', 1, 0, 2, '2021-04-26', '', 1, 'to_do', 1, '2021-04-25', '', 0, 0, 0, '', 0, 0, 0, '2021-04-25', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(2, 'Weight observation', '', 1, 0, 2, '2021-04-27', '', 1, 'to_do', 1, '2021-04-26', '', 0, 0, 0, '', 0, 0, 0, '2021-04-25', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(3, 'Meals Registration', '', 2, 0, 1, '2021-05-20', '', 1, 'to_do', 1, '2021-05-16', '', 0, 0, 0, '', 0, 0, 0, '2021-05-16', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(4, 'First meal', NULL, 2, 0, 1, NULL, NULL, 1, 'to_do', 3, NULL, '', 0, 0, 0, NULL, 0, 0, 0, '2021-05-16', '', '', 3, NULL, '0000-00-00', 0, '2021-05-17 10:50:44', 0),
(5, 'visit no1 ', 'checking the eating habits', 3, 0, 2, '2021-05-17', '', 1, 'to_do', 1, '2021-05-17', '', 0, 0, 0, '', 0, 0, 0, '2021-05-17', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(6, 'visit for Dr. Badria', '', 3, 0, 2, '2021-05-17', '', 1, 'to_do', 1, '2021-05-17', '', 0, 0, 0, '', 0, 0, 0, '2021-05-17', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(7, 'Device', 'first', 5, 0, 0, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 0, '', 0, 0, 0, '2021-05-18', '', '', 0, NULL, '0000-00-00', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `task_status`
--

CREATE TABLE `task_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task_status`
--

INSERT INTO `task_status` (`id`, `title`, `key_name`, `color`, `sort`, `deleted`) VALUES
(1, 'To Do', 'to_do', '#F9A52D', 0, 0),
(2, 'In progress', 'in_progress', '#1672B9', 1, 0),
(3, 'Done', 'done', '#00B393', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percentage` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `deleted`) VALUES
(1, 'VAT (5%)', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `members` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_member_job_info`
--

CREATE TABLE `team_member_job_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_hire` date DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `salary` double NOT NULL DEFAULT 0,
  `salary_term` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team_member_job_info`
--

INSERT INTO `team_member_job_info` (`id`, `user_id`, `date_of_hire`, `deleted`, `salary`, `salary_term`) VALUES
(1, 2, '0000-00-00', 0, 0, ''),
(2, 3, '0000-00-00', 0, 0, ''),
(3, 4, '0000-00-00', 0, 0, ''),
(4, 5, '0000-00-00', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `ticket_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `requested_by` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `status` enum('new','client_replied','open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `last_activity_at` datetime DEFAULT NULL,
  `assigned_to` int(11) NOT NULL DEFAULT 0,
  `creator_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creator_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_id` int(11) NOT NULL,
  `closed_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `client_id`, `project_id`, `ticket_type_id`, `title`, `created_by`, `requested_by`, `created_at`, `status`, `last_activity_at`, `assigned_to`, `creator_name`, `creator_email`, `labels`, `task_id`, `closed_at`, `deleted`) VALUES
(1, 4, 0, 1, 'badria assement for april', 1, 0, '2021-05-17 09:28:22', 'closed', '2021-05-17 09:35:47', 0, '', '', '', 0, '2021-05-17 09:36:59', 0),
(2, 6, 0, 1, 'session device', 1, 0, '2021-05-18 04:19:35', 'new', '2021-05-18 04:19:35', 0, '', '', '', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_comments`
--

CREATE TABLE `ticket_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_comments`
--

INSERT INTO `ticket_comments` (`id`, `created_by`, `created_at`, `description`, `ticket_id`, `files`, `deleted`) VALUES
(1, 1, '2021-05-17 09:28:22', '-', 1, 'a:0:{}', 0),
(2, 1, '2021-05-17 09:29:03', 'last change in weight is very high', 1, 'a:0:{}', 0),
(3, 1, '2021-05-17 09:35:47', 'report', 1, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:57:\"ticket_file60a238f3c833a-_file604a312e42a87-site-logo.png\";s:9:\"file_size\";s:4:\"1536\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0),
(4, 1, '2021-05-18 04:19:35', 'ledenda device', 2, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_templates`
--

CREATE TABLE `ticket_templates` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_type_id` int(11) NOT NULL,
  `private` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_types`
--

CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_types`
--

INSERT INTO `ticket_types` (`id`, `title`, `deleted`) VALUES
(1, 'General Support', 0);

-- --------------------------------------------------------

--
-- Table structure for table `to_do`
--

CREATE TABLE `to_do` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('to_do','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `start_date` date DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('staff','client','lead') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `message_checked_at` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `notification_checked_at` datetime DEFAULT NULL,
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT 0,
  `job_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `disable_login` tinyint(1) NOT NULL DEFAULT 0,
  `note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ssn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci DEFAULT NULL,
  `sticky_note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `enable_web_notification` tinyint(1) NOT NULL DEFAULT 1,
  `enable_email_notification` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `last_online` datetime DEFAULT NULL,
  `requested_account_removal` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_type`, `is_admin`, `role_id`, `email`, `password`, `image`, `status`, `message_checked_at`, `client_id`, `notification_checked_at`, `is_primary_contact`, `job_title`, `disable_login`, `note`, `address`, `alternative_address`, `phone`, `alternative_phone`, `dob`, `ssn`, `gender`, `sticky_note`, `skype`, `enable_web_notification`, `enable_email_notification`, `created_at`, `last_online`, `requested_account_removal`, `deleted`) VALUES
(1, 'admin', 'system', 'staff', 1, 0, 'admin@admin.com', '$2y$10$DaqgX2N8k/qhR7gOeRwzfe8zt585yWTs8Ynh3K7MKBA9Ud4YxHanW', NULL, 'active', '2021-05-16 15:56:17', 0, '2021-03-25 15:24:32', 0, 'Admin', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-03-11 11:50:13', '2021-05-18 10:12:09', 0, 0),
(2, 'Dr. Badria', 'Admin', 'staff', 1, 0, 'doctordietitian2020@gmail.com', '$2y$10$qW5yDgL3f8rYs4DC4trR/.Rp23juvuDYbLl02X6vUI78.eSYyet76', NULL, 'active', '2021-05-16 15:56:55', 0, '2021-05-16 15:56:00', 0, 'Admin', 0, NULL, 'Al Mwalih - Muscat', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-04-24 07:51:43', '2021-05-20 10:53:41', 0, 0),
(3, 'Dietitain', 'Doctor', 'staff', 0, 1, 'um.mohd282@gmail.com', '$2y$10$qvUjbTPmsf.kfu0M52xweO62vF57L8CqFy.il64iuHg/ySF0D6r72', NULL, 'active', NULL, 0, NULL, 0, 'Dietitain', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-04-24 09:05:30', '2021-05-17 10:12:35', 0, 0),
(4, 'Reciption', 'employee', 'staff', 0, 2, 'rec@nutrition.com', '$2y$10$QYsyBejXbgwRZOTOw6Acru5Yvv7cEsZEIczURE6qFSTarM8aM4K/m', NULL, 'active', NULL, 0, '2021-05-17 08:42:09', 0, 'Recptionict', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-04-24 10:28:54', '2021-05-17 09:14:04', 0, 0),
(5, 'cleaner', 'employee', 'staff', 0, 0, 'a@a.com', '$2y$10$9.Ytuyqf5KB3nPbfeLv80.AImrQoYbFtTdGvW8bjzT42YgvidxS1O', NULL, 'active', NULL, 0, NULL, 0, 'cleanere', 0, NULL, '', NULL, '26626252', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-05-16 16:04:10', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` enum('invoice_payment','reset_password','verify_email','invitation') COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `checklist_items`
--
ALTER TABLE `checklist_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_groups`
--
ALTER TABLE `client_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_widgets`
--
ALTER TABLE `custom_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboards`
--
ALTER TABLE `dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_forms`
--
ALTER TABLE `estimate_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_requests`
--
ALTER TABLE `estimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_files`
--
ALTER TABLE `general_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_articles`
--
ALTER TABLE `help_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_categories`
--
ALTER TABLE `help_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_source`
--
ALTER TABLE `lead_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_status`
--
ALTER TABLE `lead_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `user_id` (`applicant_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_from` (`from_user_id`),
  ADD KEY `message_to` (`to_user_id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event` (`event`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_assessment`
--
ALTER TABLE `patient_assessment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_comments`
--
ALTER TABLE `project_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_members`
--
ALTER TABLE `project_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_settings`
--
ALTER TABLE `project_settings`
  ADD UNIQUE KEY `unique_index` (`project_id`,`setting_name`);

--
-- Indexes for table `project_time`
--
ALTER TABLE `project_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_ipn`
--
ALTER TABLE `stripe_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_status`
--
ALTER TABLE `task_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_templates`
--
ALTER TABLE `ticket_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `to_do`
--
ALTER TABLE `to_do`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `email` (`email`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `deleted` (`deleted`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `checklist_items`
--
ALTER TABLE `checklist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client_groups`
--
ALTER TABLE `client_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `custom_widgets`
--
ALTER TABLE `custom_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboards`
--
ALTER TABLE `dashboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `estimate_forms`
--
ALTER TABLE `estimate_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `estimate_requests`
--
ALTER TABLE `estimate_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `general_files`
--
ALTER TABLE `general_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `help_articles`
--
ALTER TABLE `help_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_categories`
--
ALTER TABLE `help_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_source`
--
ALTER TABLE `lead_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lead_status`
--
ALTER TABLE `lead_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient_assessment`
--
ALTER TABLE `patient_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `project_comments`
--
ALTER TABLE `project_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_members`
--
ALTER TABLE `project_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_time`
--
ALTER TABLE `project_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stripe_ipn`
--
ALTER TABLE `stripe_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `task_status`
--
ALTER TABLE `task_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_templates`
--
ALTER TABLE `ticket_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_types`
--
ALTER TABLE `ticket_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `to_do`
--
ALTER TABLE `to_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `verification`
--
ALTER TABLE `verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
