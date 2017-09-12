-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2017 at 07:27 AM
-- Server version: 5.6.32-78.1-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ustiicss_simbahayanPTS`
--
CREATE DATABASE IF NOT EXISTS `ustiicss_simbahayanPTS` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ustiicss_simbahayanPTS`;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE IF NOT EXISTS `announcement` (
  `announcement_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `sender` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `announcement` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `approval_form`
--

CREATE TABLE IF NOT EXISTS `approval_form` (
  `approval_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `proponent` varchar(100) NOT NULL,
  `affiliation` varchar(100) NOT NULL,
  `prog_area` varchar(100) NOT NULL,
  `community` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `budget` varchar(100) NOT NULL,
  `reports` varchar(3) NOT NULL,
  `attendance` varchar(3) NOT NULL,
  `presence_profile` varchar(3) NOT NULL,
  `presence_moa` varchar(3) NOT NULL,
  `comments1` varchar(200) NOT NULL,
  `reviewed` varchar(50) NOT NULL,
  `budget_code` varchar(10) NOT NULL,
  `comments2` varchar(200) NOT NULL,
  `recommend_progarea` varchar(50) NOT NULL,
  `budget_tobe` varchar(20) NOT NULL,
  `comments3` varchar(200) NOT NULL,
  `approve_director` varchar(50) NOT NULL,
  `finalbudget` varchar(20) NOT NULL,
  `finalbudget_code` varchar(20) NOT NULL,
  `cash_req` varchar(20) NOT NULL,
  `date_today` varchar(100) NOT NULL,
  `transpo_date` varchar(100) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `signature_coor` blob NOT NULL,
  `signature_director` blob NOT NULL,
  `cashreqnum` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `approval_form`
--

INSERT INTO `approval_form` (`approval_id`, `title`, `proponent`, `affiliation`, `prog_area`, `community`, `date`, `budget`, `reports`, `attendance`, `presence_profile`, `presence_moa`, `comments1`, `reviewed`, `budget_code`, `comments2`, `recommend_progarea`, `budget_tobe`, `comments3`, `approve_director`, `finalbudget`, `finalbudget_code`, `cash_req`, `date_today`, `transpo_date`, `proposal_id`, `signature_coor`, `signature_director`, `cashreqnum`) VALUES
(6, 'SAMPLE PROPOSAL V1', 'ISS', 'College-Based', 'Health and Wellness Development', 'Tarlac', '2017-04-27,', '121', 'Yes', 'Yes', 'Yes', 'Yes', 'gfgdg', 'Yes', '1234', 'jgfhhfhfh', 'Recommended', '11111', 'gdgdgdfg', 'Yes', '1122212', '1234', '', '', '', 15, '', '', 0),
(7, 'LOL: Leadership Training, Organization, Legal Counselling For MUP Diocese Officers', 'UST Sociological Society', 'College-Based', 'Leadership, Organizational Development and Good Governance', 'MUP', '2017-04-29,', '9280', 'Yes', 'Yes', 'Yes', 'Yes', 'aaaaaaaaaaa', 'Yes', '1234', 'wwwwwwwwwwwwwww', 'Recommended', '129876', 'qqqqqqq', 'Yes', '120987', '1234', '', '', '', 16, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE IF NOT EXISTS `audit_trail` (
  `audit_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(250) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`audit_id`, `user_id`, `action`, `datetime`) VALUES
(1913, 1, 'admin LOGGED OUT.', '2017-03-07 18:10:40'),
(1914, 24, 'k_balmeo LOGGED IN.', '2017-03-07 19:50:14'),
(1915, 24, 'k_balmeo LOGGED OUT.', '2017-03-07 20:00:09'),
(1916, 123, 'ust-iss LOGGED IN.', '2017-03-07 20:00:37'),
(1917, 123, 'ust-iss LOGGED OUT.', '2017-03-07 20:01:44'),
(1918, 124, 'iss-pres LOGGED IN.', '2017-03-07 20:02:07'),
(1919, 124, 'iss-pres LOGGED OUT.', '2017-03-07 20:02:45'),
(1920, 125, 'iss-adviser LOGGED IN.', '2017-03-07 20:02:56'),
(1921, 125, 'iss-adviser LOGGED OUT.', '2017-03-07 20:03:32'),
(1922, 126, 'aasantos LOGGED IN.', '2017-03-07 20:03:42'),
(1923, 126, 'aasantos LOGGED OUT.', '2017-03-07 20:04:11'),
(1924, 127, 'hpama LOGGED IN.', '2017-03-07 20:04:23'),
(1925, 127, 'hpama LOGGED OUT.', '2017-03-07 20:05:02'),
(1926, 24, 'k_balmeo LOGGED IN.', '2017-03-07 20:05:09'),
(1927, 24, 'k_balmeo LOGGED OUT.', '2017-03-07 20:05:35'),
(1928, 24, 'k_balmeo LOGGED IN.', '2017-03-07 20:06:40'),
(1929, 24, 'k_balmeo LOGGED OUT.', '2017-03-07 20:07:34'),
(1930, 24, 'k_balmeo LOGGED IN.', '2017-03-07 20:08:19'),
(1931, 24, 'k_balmeo LOGGED OUT.', '2017-03-07 20:08:47'),
(1932, 123, 'ust-iss LOGGED IN.', '2017-03-07 20:08:58'),
(1933, 123, 'ust-iss LOGGED OUT.', '2017-03-07 20:09:05'),
(1934, 1, 'admin LOGGED IN.', '2017-03-07 20:09:10'),
(1935, 1, 'admin LOGGED OUT.', '2017-03-07 20:09:22'),
(1936, 123, 'ust-iss LOGGED IN.', '2017-03-07 20:09:33'),
(1937, 123, 'ust-iss LOGGED OUT.', '2017-03-07 20:12:36'),
(1938, 124, 'iss-pres LOGGED IN.', '2017-03-07 20:13:06'),
(1939, 124, 'iss-pres LOGGED OUT.', '2017-03-07 20:14:09'),
(1940, 125, 'iss-adviser LOGGED IN.', '2017-03-07 20:14:17'),
(1941, 125, 'iss-adviser LOGGED OUT.', '2017-03-07 20:14:34'),
(1942, 24, 'k_balmeo LOGGED IN.', '2017-03-07 20:14:39'),
(1943, 24, 'k_balmeo LOGGED OUT.', '2017-03-07 20:15:08'),
(1944, 126, 'aasantos LOGGED IN.', '2017-03-07 20:15:13'),
(1945, 126, 'aasantos LOGGED OUT.', '2017-03-07 20:15:26'),
(1946, 127, 'hpama LOGGED IN.', '2017-03-07 20:15:39'),
(1947, 127, 'hpama LOGGED OUT.', '2017-03-07 20:16:12'),
(1948, 22, 'f_alipao LOGGED IN.', '2017-03-07 20:16:39'),
(1949, 22, 'f_alipao LOGGED OUT.', '2017-03-07 20:17:30'),
(1950, 20, 'm_abenir LOGGED IN.', '2017-03-07 20:17:46'),
(1951, 20, 'm_abenir LOGGED OUT.', '2017-03-07 20:21:37'),
(1952, 1, 'admin LOGGED IN.', '2017-03-08 00:04:22'),
(1953, 1, 'admin LOGGED OUT.', '2017-03-08 00:05:06'),
(1954, 34, 'lhiza yanga LOGGED IN.', '2017-03-08 00:05:18'),
(1955, 34, 'lhiza yanga LOGGED OUT.', '2017-03-08 00:16:48'),
(1956, 128, 'ustss LOGGED IN.', '2017-03-08 00:16:59'),
(1957, 128, 'ustss LOGGED OUT.', '2017-03-08 00:18:48'),
(1958, 129, 'ss_pres LOGGED IN.', '2017-03-08 00:19:05'),
(1959, 129, 'ss_pres LOGGED OUT.', '2017-03-08 00:21:20'),
(1960, 130, 'ss_adviser LOGGED IN.', '2017-03-08 00:21:36'),
(1961, 130, 'ss_adviser LOGGED OUT.', '2017-03-08 00:24:11'),
(1962, 131, 'mvasco LOGGED IN.', '2017-03-08 00:24:32'),
(1963, 131, 'mvasco LOGGED OUT.', '2017-03-08 00:26:16'),
(1964, 132, 'aligan LOGGED IN.', '2017-03-08 00:26:26'),
(1965, 132, 'aligan LOGGED OUT.', '2017-03-08 00:27:48'),
(1966, 34, 'lhiza yanga LOGGED IN.', '2017-03-08 00:28:02'),
(1967, 34, 'lhiza yanga LOGGED OUT.', '2017-03-08 00:28:45'),
(1968, 128, 'ustss LOGGED IN.', '2017-03-08 00:29:03'),
(1969, 128, 'ustss LOGGED OUT.', '2017-03-08 00:43:54'),
(1970, 24, 'k_balmeo LOGGED IN.', '2017-03-08 00:44:00'),
(1971, 24, 'k_balmeo LOGGED OUT.', '2017-03-08 00:44:09'),
(1972, 128, 'ustss LOGGED IN.', '2017-03-08 00:44:19'),
(1973, 128, 'ustss LOGGED OUT.', '2017-03-08 00:56:17'),
(1974, 129, 'ss_pres LOGGED IN.', '2017-03-08 00:56:38'),
(1975, 129, 'ss_pres LOGGED OUT.', '2017-03-08 00:59:02'),
(1976, 130, 'ss_adviser LOGGED IN.', '2017-03-08 00:59:29'),
(1977, 130, 'ss_adviser LOGGED OUT.', '2017-03-08 01:00:16'),
(1978, 34, 'lhiza yanga LOGGED IN.', '2017-03-08 01:00:29'),
(1979, 34, 'lhiza yanga LOGGED OUT.', '2017-03-08 01:01:21'),
(1980, 131, 'mvasco LOGGED IN.', '2017-03-08 01:01:30'),
(1981, 131, 'mvasco LOGGED OUT.', '2017-03-08 01:02:17'),
(1982, 132, 'aligan LOGGED IN.', '2017-03-08 01:02:28'),
(1983, 132, 'aligan LOGGED OUT.', '2017-03-08 01:03:10'),
(1984, 22, 'f_alipao LOGGED IN.', '2017-03-08 01:03:20'),
(1985, 22, 'f_alipao LOGGED OUT.', '2017-03-08 01:04:35'),
(1986, 20, 'm_abenir LOGGED IN.', '2017-03-08 01:04:44'),
(1987, 20, 'm_abenir LOGGED OUT.', '2017-03-08 01:06:38'),
(1988, 128, 'ustss LOGGED IN.', '2017-03-08 01:06:50'),
(1989, 128, 'ustss LOGGED OUT.', '2017-03-08 01:11:32'),
(1990, 34, 'lhiza yanga LOGGED IN.', '2017-03-08 01:11:51'),
(1991, 34, 'lhiza yanga LOGGED OUT.', '2017-03-08 01:14:05'),
(1992, 128, 'ustss LOGGED IN.', '2017-03-08 01:14:11'),
(1993, 128, 'ustss LOGGED IN.', '2017-03-08 02:02:46'),
(1994, 24, 'k_balmeo LOGGED IN.', '2017-03-19 22:55:12'),
(1995, 24, 'k_balmeo LOGGED IN.', '2017-03-19 23:02:17'),
(1996, 24, 'k_balmeo LOGGED OUT.', '2017-03-19 23:03:38'),
(1997, 24, 'k_balmeo LOGGED IN.', '2017-03-19 23:04:23'),
(1998, 24, 'k_balmeo LOGGED OUT.', '2017-03-19 23:09:50'),
(1999, 24, 'k_balmeo LOGGED IN.', '2017-03-23 01:50:34'),
(2000, 24, 'k_balmeo LOGGED IN.', '2017-03-23 01:51:17'),
(2001, 24, 'k_balmeo LOGGED OUT.', '2017-03-23 01:53:53'),
(2002, 24, 'k_balmeo LOGGED IN.', '2017-03-23 01:53:59'),
(2003, 1, 'admin LOGGED IN.', '2017-04-02 18:04:53'),
(2004, 1, 'admin LOGGED OUT.', '2017-04-02 18:05:18'),
(2005, 24, 'k_balmeo LOGGED IN.', '2017-04-02 18:05:25'),
(2006, 24, 'k_balmeo LOGGED OUT.', '2017-04-02 18:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `budget_proposal`
--

CREATE TABLE IF NOT EXISTS `budget_proposal` (
  `budget_id` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `proj_evaluation` varchar(255) NOT NULL,
  `proj_evaluation1` varchar(255) NOT NULL,
  `pname0` varchar(100) NOT NULL,
  `pmail0` varchar(100) NOT NULL,
  `pfund0` int(25) NOT NULL,
  `porg0` int(25) NOT NULL,
  `pcom0` int(25) NOT NULL,
  `pname1` varchar(100) NOT NULL,
  `pmail1` varchar(100) NOT NULL,
  `pfund1` int(25) NOT NULL,
  `porg1` int(25) NOT NULL,
  `pcom1` int(25) NOT NULL,
  `pname2` varchar(100) NOT NULL,
  `pmail2` varchar(100) NOT NULL,
  `pfund2` int(25) NOT NULL,
  `porg2` int(25) NOT NULL,
  `pcom2` int(25) NOT NULL,
  `pname3` varchar(100) NOT NULL,
  `pmail3` varchar(100) NOT NULL,
  `pfund3` int(25) NOT NULL,
  `porg3` int(25) NOT NULL,
  `pcom3` int(25) NOT NULL,
  `pname4` varchar(100) NOT NULL,
  `pmail4` varchar(100) NOT NULL,
  `pfund4` int(25) NOT NULL,
  `porg4` int(25) NOT NULL,
  `pcom4` int(25) NOT NULL,
  `oname0` varchar(100) NOT NULL,
  `omail0` varchar(100) NOT NULL,
  `ofund0` int(25) NOT NULL,
  `oorg0` int(25) NOT NULL,
  `ocom0` int(25) NOT NULL,
  `oname1` varchar(100) NOT NULL,
  `omail1` varchar(100) NOT NULL,
  `ofund1` int(25) NOT NULL,
  `oorg1` int(25) NOT NULL,
  `ocom1` int(25) NOT NULL,
  `oname2` varchar(100) NOT NULL,
  `omail2` varchar(100) NOT NULL,
  `ofund2` int(25) NOT NULL,
  `oorg2` int(25) NOT NULL,
  `ocom2` int(25) NOT NULL,
  `oname3` varchar(100) NOT NULL,
  `omail3` varchar(100) NOT NULL,
  `oname7` varchar(100) NOT NULL,
  `omail7` varchar(100) NOT NULL,
  `oname8` varchar(100) NOT NULL,
  `omail8` varchar(100) NOT NULL,
  `oname9` varchar(100) NOT NULL,
  `omail9` varchar(100) NOT NULL,
  `oname4` varchar(100) NOT NULL,
  `omail4` varchar(100) NOT NULL,
  `ofund6` int(25) NOT NULL,
  `oorg6` int(25) NOT NULL,
  `ocom6` int(25) NOT NULL,
  `oname5` varchar(100) NOT NULL,
  `omail5` varchar(100) NOT NULL,
  `ofund7` int(25) NOT NULL,
  `oorg7` int(25) NOT NULL,
  `ocom7` int(25) NOT NULL,
  `oname6` varchar(100) NOT NULL,
  `omail6` varchar(100) NOT NULL,
  `ofund8` int(25) NOT NULL,
  `oorg8` int(25) NOT NULL,
  `ocom8` int(25) NOT NULL,
  `ofund9` int(25) NOT NULL,
  `oorg9` int(25) NOT NULL,
  `ocom9` int(25) NOT NULL,
  `mname0` varchar(100) NOT NULL,
  `mmail0` varchar(100) NOT NULL,
  `mfund0` int(25) NOT NULL,
  `morg0` int(25) NOT NULL,
  `mcom0` int(25) NOT NULL,
  `mname1` varchar(100) NOT NULL,
  `mmail1` varchar(100) NOT NULL,
  `mfund1` int(25) NOT NULL,
  `morg1` int(25) NOT NULL,
  `mcom1` int(25) NOT NULL,
  `mname2` varchar(100) NOT NULL,
  `mmail2` varchar(100) NOT NULL,
  `mfund2` int(25) NOT NULL,
  `morg2` int(25) NOT NULL,
  `mcom2` int(25) NOT NULL,
  `mname3` varchar(100) NOT NULL,
  `mmail3` varchar(100) NOT NULL,
  `mfund3` int(25) NOT NULL,
  `morg3` int(25) NOT NULL,
  `mcom3` int(25) NOT NULL,
  `mname4` varchar(100) NOT NULL,
  `mmail4` varchar(100) NOT NULL,
  `mfund4` int(25) NOT NULL,
  `morg4` int(25) NOT NULL,
  `mcom4` int(25) NOT NULL,
  `mfund5` int(25) NOT NULL,
  `morg5` int(25) NOT NULL,
  `mcom5` int(25) NOT NULL,
  `otname0` varchar(100) NOT NULL,
  `otmail0` varchar(100) NOT NULL,
  `otfund0` int(25) NOT NULL,
  `otorg0` int(25) NOT NULL,
  `otcom0` int(25) NOT NULL,
  `otname1` varchar(100) NOT NULL,
  `otmail1` varchar(100) NOT NULL,
  `otfund1` int(25) NOT NULL,
  `otorg1` int(25) NOT NULL,
  `otcom1` int(25) NOT NULL,
  `otname2` varchar(100) NOT NULL,
  `otmail2` varchar(100) NOT NULL,
  `otfund2` int(25) NOT NULL,
  `otorg2` int(25) NOT NULL,
  `otcom2` int(25) NOT NULL,
  `otname3` varchar(100) NOT NULL,
  `otmail3` varchar(100) NOT NULL,
  `otfund3` int(25) NOT NULL,
  `otorg3` int(25) NOT NULL,
  `otcom3` int(25) NOT NULL,
  `otname4` varchar(100) NOT NULL,
  `otmail4` varchar(100) NOT NULL,
  `otfund4` int(25) NOT NULL,
  `otorg4` int(25) NOT NULL,
  `otcom4` int(25) NOT NULL,
  `otfund5` int(25) NOT NULL,
  `otorg5` int(25) NOT NULL,
  `otcom5` int(25) NOT NULL,
  `otfund6` int(25) NOT NULL,
  `otorg6` int(25) NOT NULL,
  `otcom6` int(25) NOT NULL,
  `ptotalfund` int(11) NOT NULL,
  `ptotalorg` int(11) NOT NULL,
  `ptotalcom` int(11) NOT NULL,
  `ototalfund` int(11) NOT NULL,
  `ototalorg` int(11) NOT NULL,
  `ototalcom` int(11) NOT NULL,
  `mtotalfund` int(11) NOT NULL,
  `mtotalorg` int(11) NOT NULL,
  `mtotalcom` int(11) NOT NULL,
  `ottotalfund` int(11) NOT NULL,
  `ottotalorg` int(11) NOT NULL,
  `ottotalcom` int(11) NOT NULL,
  `totalfund` int(11) NOT NULL,
  `totalorg` int(11) NOT NULL,
  `totalcom` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `budget_proposal`
--

INSERT INTO `budget_proposal` (`budget_id`, `proposal_id`, `proj_evaluation`, `proj_evaluation1`, `pname0`, `pmail0`, `pfund0`, `porg0`, `pcom0`, `pname1`, `pmail1`, `pfund1`, `porg1`, `pcom1`, `pname2`, `pmail2`, `pfund2`, `porg2`, `pcom2`, `pname3`, `pmail3`, `pfund3`, `porg3`, `pcom3`, `pname4`, `pmail4`, `pfund4`, `porg4`, `pcom4`, `oname0`, `omail0`, `ofund0`, `oorg0`, `ocom0`, `oname1`, `omail1`, `ofund1`, `oorg1`, `ocom1`, `oname2`, `omail2`, `ofund2`, `oorg2`, `ocom2`, `oname3`, `omail3`, `oname7`, `omail7`, `oname8`, `omail8`, `oname9`, `omail9`, `oname4`, `omail4`, `ofund6`, `oorg6`, `ocom6`, `oname5`, `omail5`, `ofund7`, `oorg7`, `ocom7`, `oname6`, `omail6`, `ofund8`, `oorg8`, `ocom8`, `ofund9`, `oorg9`, `ocom9`, `mname0`, `mmail0`, `mfund0`, `morg0`, `mcom0`, `mname1`, `mmail1`, `mfund1`, `morg1`, `mcom1`, `mname2`, `mmail2`, `mfund2`, `morg2`, `mcom2`, `mname3`, `mmail3`, `mfund3`, `morg3`, `mcom3`, `mname4`, `mmail4`, `mfund4`, `morg4`, `mcom4`, `mfund5`, `morg5`, `mcom5`, `otname0`, `otmail0`, `otfund0`, `otorg0`, `otcom0`, `otname1`, `otmail1`, `otfund1`, `otorg1`, `otcom1`, `otname2`, `otmail2`, `otfund2`, `otorg2`, `otcom2`, `otname3`, `otmail3`, `otfund3`, `otorg3`, `otcom3`, `otname4`, `otmail4`, `otfund4`, `otorg4`, `otcom4`, `otfund5`, `otorg5`, `otcom5`, `otfund6`, `otorg6`, `otcom6`, `ptotalfund`, `ptotalorg`, `ptotalcom`, `ototalfund`, `ototalorg`, `ototalcom`, `mtotalfund`, `mtotalorg`, `mtotalcom`, `ottotalfund`, `ottotalorg`, `ottotalcom`, `totalfund`, `totalorg`, `totalcom`) VALUES
(95, 15, '', '', 'Student Volunteers', 'X300X', 0, 0, 0, 'Faculty/Admin/Support Staff Volunteers', 'X1500X', 0, 0, 0, 'Volunteers from the Partner Community or Institution', 'X500X', 0, 0, 0, 'Volunteer External Resource Person (not from UST)', 'X1500X', 0, 0, 0, 'Subtotal', '', 0, 0, 0, 'Lunch / Dinner', 'X90X', 0, 0, 0, 'Snack', 'X50X', 0, 0, 0, 'Venue and Facilities', 'XX', 0, 0, 0, 'Transportation', 'XX, XX, XX', '', ',,', '', ',,', '', ',,', 'Accommodation', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 16, '', '', 'Student Volunteers', '16X300X1', 0, 4800, 0, 'Faculty/Admin/Support Staff Volunteers', '1X1500X1', 0, 1500, 0, 'Volunteers from the Partner Community or Institution', '10X500X1', 0, 0, 5000, 'Volunteer External Resource Person (not from UST)', '1X1500X1', 0, 1500, 0, 'Subtotal', '', 0, 7800, 1500, 'Lunch / Dinner', '28X90X1', 0, 0, 0, 'Snack', '0X50X0', 0, 0, 0, 'Venue and Facilities', 'XX', 0, 0, 0, 'Transportation', '1X12000X1, XX, XX', '', '12000,,', '', ',,', '', ',,', 'Accommodation', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, 12000, 0, 0, 'manila paper', '1X5X1', 0, 5, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, 0, 5, 0, 'Token', '1X1000X1', 0, 1000, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, 0, 1000, 0, 12000, 8805, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 17, '', '', 'Student Volunteers', 'X300X', 0, 0, 0, 'Faculty/Admin/Support Staff Volunteers', 'X1500X', 0, 0, 0, 'Volunteers from the Partner Community or Institution', '1X500X1', 0, 0, 500, 'Volunteer External Resource Person (not from UST)', 'X1500X', 0, 0, 0, 'Subtotal', '', 0, 0, 0, 'Lunch / Dinner', 'X90X', 0, 0, 0, 'Snack', 'X50X', 0, 0, 0, 'Venue and Facilities', 'XX', 0, 0, 0, 'Transportation', '1X11,750.00 X1, XX, XX', '', '11750,,', '', ',,', '', ',,', 'Accommodation', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, 11750, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, '', 'XX', 0, 0, 0, 0, 0, 0, 11750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `college_list`
--

CREATE TABLE IF NOT EXISTS `college_list` (
  `college_id` int(11) NOT NULL,
  `college_name` varchar(255) NOT NULL,
  `college_code` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `college_list`
--

INSERT INTO `college_list` (`college_id`, `college_name`, `college_code`) VALUES
(1, 'Institute of Information and Computing Sciences', 'iics'),
(2, 'Faculty of Engineering', 'engg'),
(3, 'Faculty of Sacred Theology', 'sactheo'),
(4, 'Faculty of Philosophy', 'philo'),
(5, 'Faculty of Canon Law', 'canonlaw'),
(6, 'Graduate School', 'gradschool'),
(7, 'College of Commerce and Business Administration', 'commerce'),
(8, 'AMV College of Accountancy', 'amv'),
(9, 'Faculty of Arts and Letters', 'ab'),
(10, 'Faculty of Civil Law', 'civillaw'),
(11, 'College of Education', 'educ'),
(12, 'College of Fine Arts and Design', 'cfad'),
(13, 'Faculty of Medicine and Surgery', 'med'),
(14, 'Conservatory of Music', 'music'),
(15, 'College of Nursing', 'nursing'),
(16, 'Faculty of Pharmacy', 'pharma'),
(17, 'Institute of Physical Education and Athletics', 'ipea'),
(18, 'College of Rehabilitation Sciences', 'crs'),
(19, 'Institute of Religion', 'religion'),
(20, 'College of Science', 'science'),
(21, 'College of Tourism and Hospitality Management', 'cthm'),
(22, 'Simbahayan ', 'simbahayan'),
(23, 'NA - University Wide', 'univwide'),
(24, 'College of Architecture', 'archi'),
(25, 'National Service Training Program (NSTP)', 'nstp');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `proposal_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cover_letter`
--

CREATE TABLE IF NOT EXISTS `cover_letter` (
  `cover_id` int(11) NOT NULL,
  `iso` varchar(100) NOT NULL,
  `year` varchar(50) NOT NULL,
  `date` varchar(100) NOT NULL,
  `address_name` varchar(100) NOT NULL,
  `address_position` varchar(100) NOT NULL,
  `address_company1` varchar(100) NOT NULL,
  `address_company2` varchar(100) NOT NULL,
  `salutation` varchar(100) NOT NULL,
  `body` varchar(5000) NOT NULL,
  `closing` varchar(100) NOT NULL,
  `proj_head1` varchar(100) NOT NULL,
  `position1` varchar(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `proposal_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cover_letter`
--

INSERT INTO `cover_letter` (`cover_id`, `iso`, `year`, `date`, `address_name`, `address_position`, `address_company1`, `address_company2`, `salutation`, `body`, `closing`, `proj_head1`, `position1`, `title`, `proposal_id`) VALUES
(12, '', 'AY 2016-2017', 'March 8, 2017', 'DR. MARK ANTHONY D. ABENIR, DSD', 'Director - simbahayan', 'University of Santo Tomas', 'Espana, Manila', 'Greetings!', 'gdgdgdgdfgdgdfgdfg', 'Respectfully yours,', 'paul J.. Cruz', 'Project Head', 'SAMPLE PROPOSAL V1', 15),
(13, '', '2016-2017', 'March 8, 2017', 'Prof. Michael Anthony Vasco', 'College Deam', 'UST', 'Espana, Manila', 'Good Day!', 'Annyeong', 'Sincerely Yours', 'Jose Benigno Duque. Sayon', 'Project Head', 'LOL: Leadership Training, Organization, Legal Counselling For MUP Diocese Officers', 16),
(14, '', 'AY 2015-2016', 'feb 8, 2017', 'DR. MARK ANTHONY D. ABENIR, DSD', 'Director - simbahayan', 'University of Santo Tomas', 'Espana, Manila', 'Greetings!', 'Hello. ', 'Respectfully yours,', 'Erika Mae L. Valencia', 'Project Head', 'BIGASAN (Bigyang Asenso ang Ani): A Training Program on Business Plan Prep', 17);

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE IF NOT EXISTS `login_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `college` varchar(100) NOT NULL,
  `profile` int(11) NOT NULL,
  `reference` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`user_id`, `username`, `password`, `name`, `email`, `account_type`, `college`, `profile`, `reference`) VALUES
(1, 'admin', '098f6bcd4621d373cade4e832627b4f6', 'System Administrator', 'jmcmanzanilla@gmail.com', 'Administrator', '', 1, 0),
(20, 'm_abenir', '49704d02ade8a8ff9e335618ea48d730', 'Asst. Prof. Mark Anthony D. Abenir, DSD', 'mabenir@gmail.com', 'Signatory', 'simbahayan', 1, 1),
(21, 'j_victoria', '49704d02ade8a8ff9e335618ea48d730', 'Jasmin Victoria', 'j@gmail.com', 'Signatory', 'simbahayan', 1, 1),
(22, 'f_alipao', '49704d02ade8a8ff9e335618ea48d730', 'Froilan Alipao', 'kp@gmail.com', 'Signatory', 'simbahayan', 1, 1),
(23, 'simbahayancoor', '49704d02ade8a8ff9e335618ea48d730', 'Simbahayan Program Coordinator', 'scdo@gmail.com', 'Signatory', 'simbahayan', 1, 1),
(24, 'k_balmeo', '585c3c82d99a3eba07296eca302ebc38', 'Khrisnamonte balmeo', 'kb@gmail.com', 'Signatory', 'iics', 1, 1),
(25, 'earth_ust', '3a52573b62196e8b56a19f9d9e1ac1b3', 'EARTH_UST', 'eust@gmail.com', 'Organization', 'univwide', 1, 1),
(26, 'earth_pres', '3a52573b62196e8b56a19f9d9e1ac1b3', 'Adriel Benitez', 'ab@gmail.com', 'Signatory', 'univwide', 1, 1),
(27, 'earth_adviser', '3a52573b62196e8b56a19f9d9e1ac1b3', 'Luis Padilla', 'lp@gmail.com', 'Signatory', 'univwide', 1, 1),
(34, 'lhiza yanga', '187ef4436122d1cc2f40dc2b92f0eba0', 'Analiza A.Yanga', 'aayanga67@gmail.com', 'Signatory', 'ab', 1, 1),
(97, 'samplecoor', '585c3c82d99a3eba07296eca302ebc38', 'joshua', 'jm@gmail.com', 'Signatory', 'iics', 1, 1),
(123, 'ust-iss', '585c3c82d99a3eba07296eca302ebc38', 'ISS', 'pp@gmail.com', 'Organization', 'iics', 1, 24),
(124, 'iss-pres', '585c3c82d99a3eba07296eca302ebc38', 'kate', 'kk@gmail.com', 'Signatory', 'iics', 1, 24),
(125, 'iss-adviser', '585c3c82d99a3eba07296eca302ebc38', 'Jay', 'jj@gmail.com', 'Signatory', 'iics', 1, 24),
(126, 'aasantos', '585c3c82d99a3eba07296eca302ebc38', 'alex', 'aa@gmail.com', 'Signatory', 'iics', 1, 24),
(127, 'hpama', '585c3c82d99a3eba07296eca302ebc38', 'Hermel', 'hh@gmail.com', 'Signatory', 'iics', 1, 24),
(128, 'ustss', '187ef4436122d1cc2f40dc2b92f0eba0', 'UST Sociological Society', 'ustsociologicalsociety@gmail.com', 'Organization', 'ab', 1, 34),
(129, 'ss_pres', '187ef4436122d1cc2f40dc2b92f0eba0', 'Christian Catinguil', 'kk@gmail.com', 'Signatory', 'ab', 1, 34),
(130, 'ss_adviser', '187ef4436122d1cc2f40dc2b92f0eba0', 'Asst. Prof. Josephine A. Placido, MA', 'ss@gmail.com', 'Signatory', 'ab', 1, 34),
(131, 'mvasco', '187ef4436122d1cc2f40dc2b92f0eba0', 'Prof.Michael Anthony C. Vasco, PHD', 'mvasco@gmail.com', 'Signatory', 'ab', 1, 34),
(132, 'aligan', '187ef4436122d1cc2f40dc2b92f0eba0', 'Rev. Fr. Rodel E. Aligan, OP', 'raligan@gmail.com', 'Signatory', 'ab', 1, 34),
(133, 'Rotaract Club of UST - IICS', 'd41d8cd98f00b204e9800998ecf8427e', 'Rikki Mae Marasigan', '2013058511@ust-ics.mygbiz.com', 'Organization', '', 0, 0),
(134, 'Rotaract President', 'd41d8cd98f00b204e9800998ecf8427e', 'Khent Bolano', '2013058654@ust-ics.mygbiz.com', 'Signatory', '', 0, 0),
(135, 'Rotaract Clb Adviser', 'd41d8cd98f00b204e9800998ecf8427e', 'Charmane Ponay', '2013058511@ust-ics.mygbiz.com', 'Signatory', '', 0, 0),
(136, 'rotaract', '585c3c82d99a3eba07296eca302ebc38', 'ROTARACT', 'rota@gmail.com', 'Organization', 'iics', 0, 24);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `read` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_signatory`
--

CREATE TABLE IF NOT EXISTS `order_signatory` (
  `signatory_id` int(11) NOT NULL,
  `org_num` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `signatory_num` int(11) NOT NULL,
  `signatory_name` varchar(100) NOT NULL,
  `reference` int(11) NOT NULL,
  `standard` int(11) NOT NULL,
  `simbahayan` int(11) NOT NULL,
  `univ_wide` int(11) NOT NULL,
  `nstp` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_signatory`
--

INSERT INTO `order_signatory` (`signatory_id`, `org_num`, `order_number`, `signatory_num`, `signatory_name`, `reference`, `standard`, `simbahayan`, `univ_wide`, `nstp`) VALUES
(16, 0, 1, 23, 'Simbahayan Program Coordinator', 1, 1, 1, 1, 0),
(17, 0, 2, 20, 'Asst. Prof. Mark Anthony D. Abenir, DSD', 1, 1, 1, 1, 0),
(18, 0, 1, 22, 'Froilan Alipao', 1, 1, 1, 0, 0),
(19, 0, 2, 20, 'Asst. Prof. Mark Anthony D. Abenir, DSD', 1, 1, 1, 0, 0),
(30, 0, 1, 126, 'alex', 24, 1, 0, 0, 0),
(31, 0, 2, 127, 'Hermel', 24, 1, 0, 0, 0),
(32, 123, 1, 124, 'kate', 24, 0, 0, 0, 0),
(33, 123, 2, 125, 'Jay', 24, 0, 0, 0, 0),
(34, 123, 3, 24, 'Khrisnamonte balmeo', 24, 0, 0, 0, 0),
(35, 128, 1, 129, 'Christian Catinguil', 34, 0, 0, 0, 0),
(36, 128, 2, 130, 'Asst. Prof. Josephine A. Placido, MA', 34, 0, 0, 0, 0),
(37, 128, 3, 34, 'Analiza A.Yanga', 34, 0, 0, 0, 0),
(38, 0, 1, 131, 'Prof.Michael Anthony C. Vasco, PHD', 34, 1, 0, 0, 0),
(39, 0, 2, 132, 'Rev. Fr. Rodel E. Aligan, OP', 34, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `position_id` int(11) NOT NULL,
  `position_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `position_name`) VALUES
(1, 'Organization Community Development Representative'),
(2, 'Organization President'),
(3, 'Organization Adviser'),
(4, 'College Community Development Coordinator'),
(5, 'Department Chairman'),
(6, 'College Dean'),
(7, 'College Regent'),
(8, 'Simbahayan Program Area Coordinator'),
(9, 'Simbahayan Director'),
(10, 'Budget Officer'),
(11, 'NSTP Moderator');

-- --------------------------------------------------------

--
-- Table structure for table `program_flow`
--

CREATE TABLE IF NOT EXISTS `program_flow` (
  `program_id` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(250) NOT NULL,
  `time0` varchar(100) NOT NULL,
  `description0` varchar(100) NOT NULL,
  `person0` varchar(100) NOT NULL,
  `time1` varchar(100) NOT NULL,
  `description1` varchar(100) NOT NULL,
  `person1` varchar(100) NOT NULL,
  `time2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `person2` varchar(100) NOT NULL,
  `time3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `person3` varchar(100) NOT NULL,
  `time4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `person4` varchar(100) NOT NULL,
  `time5` varchar(100) NOT NULL,
  `description5` varchar(100) NOT NULL,
  `person5` varchar(100) NOT NULL,
  `time6` varchar(100) NOT NULL,
  `description6` varchar(100) NOT NULL,
  `person6` varchar(100) NOT NULL,
  `time7` varchar(100) NOT NULL,
  `description7` varchar(100) NOT NULL,
  `person7` varchar(100) NOT NULL,
  `time8` varchar(100) NOT NULL,
  `description8` varchar(100) NOT NULL,
  `person8` varchar(100) NOT NULL,
  `time9` varchar(100) NOT NULL,
  `description9` varchar(100) NOT NULL,
  `person9` varchar(100) NOT NULL,
  `time10` varchar(100) NOT NULL,
  `description10` varchar(100) NOT NULL,
  `person10` varchar(100) NOT NULL,
  `time11` varchar(100) NOT NULL,
  `description11` varchar(100) NOT NULL,
  `person11` varchar(100) NOT NULL,
  `time12` varchar(100) NOT NULL,
  `description12` varchar(100) NOT NULL,
  `person12` varchar(100) NOT NULL,
  `time13` varchar(100) NOT NULL,
  `description13` varchar(100) NOT NULL,
  `person13` varchar(100) NOT NULL,
  `time14` varchar(100) NOT NULL,
  `description14` varchar(100) NOT NULL,
  `person14` varchar(100) NOT NULL,
  `time15` varchar(100) NOT NULL,
  `description15` varchar(100) NOT NULL,
  `person15` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program_flow`
--

INSERT INTO `program_flow` (`program_id`, `proposal_id`, `date`, `address`, `time0`, `description0`, `person0`, `time1`, `description1`, `person1`, `time2`, `description2`, `person2`, `time3`, `description3`, `person3`, `time4`, `description4`, `person4`, `time5`, `description5`, `person5`, `time6`, `description6`, `person6`, `time7`, `description7`, `person7`, `time8`, `description8`, `person8`, `time9`, `description9`, `person9`, `time10`, `description10`, `person10`, `time11`, `description11`, `person11`, `time12`, `description12`, `person12`, `time13`, `description13`, `person13`, `time14`, `description14`, `person14`, `time15`, `description15`, `person15`) VALUES
(12, 15, '2017-04-27', 'fsdfsdf', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', ''),
(13, 16, '2017-04-29', 'MUP', '07:00 AM - 08:00 AM', 'Call Time', 'All members of Grp 1', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', ''),
(14, 17, '2017-04-28', 'Kanlurang Kabubuhayan, Nagcarlan, Laguna', '07:00 AM - 10:00 AM', 'Departure from UST	', 'Group Leader and Professor', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '', ' - ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `proj_proposal`
--

CREATE TABLE IF NOT EXISTS `proj_proposal` (
  `proposal_id` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `lead_org` varchar(100) NOT NULL,
  `affiliation` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `lname1` varchar(100) NOT NULL,
  `fname1` varchar(100) NOT NULL,
  `mi1` varchar(100) NOT NULL,
  `cnum1` varchar(100) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `lname2` varchar(100) NOT NULL,
  `fname2` varchar(100) NOT NULL,
  `mi2` varchar(100) NOT NULL,
  `cnum2` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `collab` varchar(100) NOT NULL,
  `proj_title` varchar(100) NOT NULL,
  `prog_areadev` varchar(100) NOT NULL,
  `community` varchar(100) NOT NULL,
  `participants` int(250) NOT NULL,
  `comser_budget` int(11) NOT NULL,
  `org_budget` int(11) NOT NULL,
  `com_budget` int(11) NOT NULL,
  `proj_background` varchar(1600) NOT NULL,
  `proj_background1` varchar(1600) NOT NULL,
  `proj_background2` varchar(1600) NOT NULL,
  `proj_background3` varchar(1600) NOT NULL,
  `gen_objective` varchar(1600) NOT NULL,
  `spec_obj1` varchar(250) NOT NULL,
  `exp_result1` varchar(250) NOT NULL,
  `spec_obj2` varchar(250) NOT NULL,
  `exp_result2` varchar(250) NOT NULL,
  `spec_obj3` varchar(250) NOT NULL,
  `exp_result3` varchar(250) NOT NULL,
  `spec_obj4` varchar(250) NOT NULL,
  `exp_result4` varchar(250) NOT NULL,
  `spec_obj5` varchar(250) NOT NULL,
  `exp_result5` varchar(250) NOT NULL,
  `proj_evaluation` varchar(250) NOT NULL,
  `proj_evaluation1` varchar(250) NOT NULL,
  `status` varchar(100) NOT NULL,
  `signatory_position` varchar(100) NOT NULL,
  `pending` varchar(100) NOT NULL,
  `budget` int(11) NOT NULL,
  `approved` varchar(100) NOT NULL,
  `cover` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `upload_date` date NOT NULL,
  `terminal` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `program_flow` int(11) NOT NULL,
  `target_date` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proj_proposal`
--

INSERT INTO `proj_proposal` (`proposal_id`, `days`, `page`, `lead_org`, `affiliation`, `college`, `lname1`, `fname1`, `mi1`, `cnum1`, `email1`, `lname2`, `fname2`, `mi2`, `cnum2`, `email2`, `collab`, `proj_title`, `prog_areadev`, `community`, `participants`, `comser_budget`, `org_budget`, `com_budget`, `proj_background`, `proj_background1`, `proj_background2`, `proj_background3`, `gen_objective`, `spec_obj1`, `exp_result1`, `spec_obj2`, `exp_result2`, `spec_obj3`, `exp_result3`, `spec_obj4`, `exp_result4`, `spec_obj5`, `exp_result5`, `proj_evaluation`, `proj_evaluation1`, `status`, `signatory_position`, `pending`, `budget`, `approved`, `cover`, `vehicle`, `upload_date`, `terminal`, `edit`, `program_flow`, `target_date`) VALUES
(15, 1, 0, '123', 'College-Based', 'Institute of Information and Computing Sciences', 'Cruz', 'paul', 'J.', '09126574567', 'pp@gmail.com', 'Chiu', 'Kim', 'F.', '09124565456', 'kc@gmail.com', 'na', 'SAMPLE PROPOSAL V1', 'Health and Wellness Development', 'Tarlac', 12, 121, 212, 212, 'fsdf', 'sdfsdfsd', 'fsdfsdf', 'fsdf', 'sdfsf', 'sdf', 'sdfs', 'dfsd', 'fsd', 'fsdf', 'sdf', 'fsd', 'fsdf', 'sdf', 'sdfsf', 'sdfsdfd', 'fsdfsf', 'Approved', '', 'Complete', 1, '', 1, 0, '2017-03-07', 0, 0, 1, '2017-04-27,'),
(16, 1, 0, '128', 'College-Based', 'Faculty of Arts and Letters', 'Sayon', 'Jose Benigno', 'Duque', '09163331635', 'ustsociologicalsociety@gmail.com', 'Cahoy', 'Neem Danielle', 'C.', '09053219329', 'neemdcahoy@gmail.com', 'Integrated Bar of  the Phil., Central Luzon Chapter ', 'LOL: Leadership Training, Organization, Legal Counselling For MUP Diocese Officers', 'Leadership, Organizational Development and Good Governance', 'MUP', 10, 9280, 24600, 20000, 'The Ministry of the Urban Poor (MUP) is an institution that comprises of various groups from different urban poor communities in Caloocan, Malabon, and Navotas. MUP serves to empower its members to solve the needs of the community. Thus as an organization, one of its important objectives is to mobilize its members through community organization and organizational development. Based from the ocular we had last February 21, 2017, Tuesday, among the needs shared by the community leaders to enhance their community organizing initiatives include leadership training seminars especially for new community leaders brought about by the new administration in the church due to the rotation of priests among parishes. More so, it has been shared that legal housing issues have been common in the communities, thus making people vulnerable to relocation. The project aims to also provide rights and legal assistance on housing for the community members. ', 'Community organizing is crucial in identifying the issues that concern their respective communities and , therefore enabling members to act and promote local political participation. These initiatives are fully realized through highly effective leaders that will enable members to participate and organize themselves in order to develop their community. Legal assistance, on the other hand, will equip community members regarding rights and laws on housing which shall preserve their human rights and protect them and their fellow neighbors from unwanted relocation. ', 'Our program sociology equipped us with lens that allows us to understand the society in different aspects. It also taught us the necessary skills needed for social change and development hence our project on community organization and advocacy training is something that we sociology students could provide for the community.', 'The project targets members of MUP, who usually come from different urban poor communities, in order to promote Simbahayanâ€™s advocacy goal on good governance and active participation in local governance and development work, especially for marginalized sectors. We believe that through this project, MUP will not only grow as an institution, but develop individuals who would be able to empower others as well. This project aims to contribute to the following UCDP success indicators:  \r\n\r\n\r\n(a)	By 2020, at least 40% of community members from partner communities who have undergone trainings on political participation will be involved in community affairs and governance. \r\n\r\n(b)	By 2020, at least 30% of the partner communities who have undergone human rights and paralegal education formation will be able to strengthen their human rights engagements, community justice system (barangay justice, tribal justice, & etc.) and access to free legal aids. \r\n', 'Considering the duration of the project, its general objective is to provide leadership trainings and legal counsel so that members will also be empowered as individuals.', '1.	Phase 1: To provide leadership training to the members through seminar and workshop', '-The members will learn how to propose and mobilize activities/projects that promote community development\r\n-The members will be empowered to do their role as a member of the community by actively engaging in such activities\r\n', '2.	Phase 2: To provide legal counselling that shall address their issues on housing/land ownership security, regional trials through seminar and personal counselling with a supervising ', '-The members will be familiar with the potential threats involving housing security\r\n-At the same time, this will also shed light on their rights as house/land settlers and learn how to respond to such potential threats\r\n', '3.	Phase 3: To evaluate the overall results of the community development project', 'The organizers shall provide a SWOT analysis and recommendations for future community development organizers', 'NA', 'NA', 'NA', 'NA', 'The achievements of the project depend on whether the general and specific objectives are met. To know whether such achievements have been attained, the process of evaluation entails the participation of both the community members and students. There', 'The activities at the end of the day will be evaluated through evaluation forms provided by the group. The evaluation forms will be related to the specific phases (leadership and housing), where the programâ€™s initiative to promote leadership and pr', 'Approved', '', 'Complete', 1, '', 1, 0, '2017-03-08', 0, 0, 1, '2017-04-29,'),
(17, 1, 0, '128', 'College-Based', 'Faculty of Arts and Letters', 'Valencia', 'Erika Mae', 'L', '09178995551', 'emvalenciaa@gmail.com', 'Nano', 'Rudyard Jose, IV', 'R', '09157916429', 'arjo.nano@yahoo.com', 'International Rice Research Institute (IRRI)', 'BIGASAN (Bigyang Asenso ang Ani): A Training Program on Business Plan Prep', 'Employability and Social Enterprise Development', 'Kanlurang Kabubuhayan, Nagcarlan, Laguna', 20, 12345, 12345, 12345, 'The Group 2 of 4-Sociology wishes to address the needs of the community on creating opportunities for an alternative livelihood. Because the majority of the population in the chosen community is on farming/planting (6.1%) and small business (8.6%); the group decided to help the community in putting up a rice business or bigasan. In putting up a community business, it takes a long process and time. Thus, due to limited time duration, the group only attempts to facilitate a training program for writing a feasible business plan as the very first step in establishing a bigasan.', 'This training will serve as the first step in establishing a community business such as a bigasan. Moreover, it will serve as a measuring instrument in evaluating the business potential of the community. It also wishes to make the community meet and satisfy the needed requirements such as processing business permits and other legal documents, choosing the right workers, and so on.', 'This project is a requirement in our major course entitled, â€œSocial Change and Social Development.â€ As students of sociology and future facilitators of change and development, conducting this project is not just a mere business proposal. But rather, it is a program that: (1) encourages the people in the chosen community to plan and work together in unity; (2) empower the individual and the community through a process that makes them aware of the opportunities within their reach; and (3) discover their freedom to chair their own course as they hone their capabilities.', 'The Group 2 of 4-Sociology aims to address the Employability and Social Enterprise Development success indicator. It follows the UCDPâ€™s aim on making the chosen partner community, who have undergone entrepreneurial development trainings, be able to establish their own community business such as bigasan.', 'The Group 2 of 4-Sociology, in partnership with the UST Sociological Society, aims to facilitate a training program on creating a feasible business plan. It intends to prepare the community for a rice business or bigasan by helping them detail what is possible for the business, how it will be done, and the reasons it will be successful.', 'To identify and define the communityâ€™s strengths and weaknesses relative to its market and customers', 'To be equipped with communityâ€™s market profile that will serve as the estimation of business success', 'To establish a road map with realistic, attainable goals on establishing a community business', 'To be equipped with essential guidelines for making day-to-day operating decisions and standards for measuring the businessâ€™ success', 'To create a true picture of the current financial position of the community and its expected financial needs for the business', 'To be able to attract the interest of a prospective financier ', 'NA', 'NA', 'NA', 'NA', 'The project evaluation will comprises four parts: First, a per event and overall evaluation tool to be filled up by both participants from the community and implementers; Second, the UST Simbahayan Community Development Office provided activity evalu', 'The project evaluation will comprises four parts: First, a per event and overall evaluation tool to be filled up by both participants from the community and implementers; Second, the UST Simbahayan Community Development Office provided activity evalu', 'Pending', '', '129', 1, '', 1, 0, '2017-03-08', 0, 0, 1, '2017-04-28,');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `proposal_id` int(11) NOT NULL,
  `date_received` date NOT NULL,
  `lead_org` varchar(50) NOT NULL,
  `proj_title` varchar(250) NOT NULL,
  `proj_area` varchar(250) NOT NULL,
  `beneficiaries` int(11) NOT NULL,
  `date_target` varchar(50) NOT NULL,
  `budget_approved` varchar(50) NOT NULL,
  `budget_code` varchar(50) NOT NULL,
  `report_id` int(11) NOT NULL,
  `transaction_code` int(11) NOT NULL,
  `cr_code` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `faculty` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `alumni` int(11) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`proposal_id`, `date_received`, `lead_org`, `proj_title`, `proj_area`, `beneficiaries`, `date_target`, `budget_approved`, `budget_code`, `report_id`, `transaction_code`, `cr_code`, `student`, `faculty`, `admin`, `staff`, `alumni`, `remarks`) VALUES
(15, '2017-03-07', '', 'SAMPLE PROPOSAL V1', 'Tarlac', 12, '2017-04-27,', '', '', 5, 0, 0, 0, 0, 0, 0, 0, ''),
(16, '2017-03-08', '', 'LOL: Leadership Training, Organization, Legal Counselling For MUP Diocese Officers', 'MUP', 10, '2017-04-29,', '', '', 6, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `saaf`
--

CREATE TABLE IF NOT EXISTS `saaf` (
  `saaf` int(11) NOT NULL,
  `lead_org` varchar(100) NOT NULL,
  `optradio` varchar(100) NOT NULL,
  `coordination` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `objective` varchar(100) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `participant_type` varchar(100) NOT NULL,
  `participants` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date0` varchar(100) NOT NULL,
  `start0` varchar(100) NOT NULL,
  `end0` varchar(100) NOT NULL,
  `nature` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `cover_letter` varchar(100) NOT NULL,
  `budget_proposal` varchar(100) NOT NULL,
  `clearance` varchar(100) NOT NULL,
  `background` varchar(100) NOT NULL,
  `project_proposal` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL,
  `mechanics` varchar(100) NOT NULL,
  `request_letter` varchar(100) NOT NULL,
  `script` varchar(100) NOT NULL,
  `judges` varchar(100) NOT NULL,
  `route` varchar(100) NOT NULL,
  `moa` varchar(100) NOT NULL,
  `other_remarks` varchar(100) NOT NULL,
  `itinerary` varchar(100) NOT NULL,
  `consent` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL,
  `medcert` varchar(100) NOT NULL,
  `participant_list` varchar(100) NOT NULL,
  `floor_plan` varchar(100) NOT NULL,
  `name_president` varchar(100) NOT NULL,
  `signature_president` blob NOT NULL,
  `name_faculty` varchar(100) NOT NULL,
  `signature_faculty` blob NOT NULL,
  `signature_campus` blob NOT NULL,
  `signature_comdev` blob NOT NULL,
  `name0` varchar(100) NOT NULL,
  `attach0` varchar(100) NOT NULL,
  `number0` varchar(100) NOT NULL,
  `name_swdb` varchar(100) NOT NULL,
  `signature_swdb` blob NOT NULL,
  `date_swdb` varchar(100) NOT NULL,
  `name_dean` varchar(100) NOT NULL,
  `signature_dean` blob NOT NULL,
  `date_dean` varchar(100) NOT NULL,
  `name_regent` varchar(100) NOT NULL,
  `signature_regent` blob NOT NULL,
  `date_regent` varchar(100) NOT NULL,
  `office` varchar(100) NOT NULL,
  `name_approver` varchar(100) NOT NULL,
  `signature_approver` blob NOT NULL,
  `date_venue` varchar(100) NOT NULL,
  `name_osa` varchar(100) NOT NULL,
  `signature_osa` blob NOT NULL,
  `date_osa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `signatory_profile`
--

CREATE TABLE IF NOT EXISTS `signatory_profile` (
  `signatory_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mi` varchar(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `security_question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `signatory_profile`
--

INSERT INTO `signatory_profile` (`signatory_id`, `user_id`, `fname`, `mi`, `lname`, `position`, `college`, `email`, `contact_number`, `address`, `security_question`, `answer`, `signature`) VALUES
(16, 20, 'Mark', 'D.', 'Abenir', 'Simbahayan Director', 'Simbahayan ', 'mabenir@gmail.com', '09126574565', 'manila', 'color?', 'Blue', ''),
(17, 22, 'Froilan', 'H.', 'Alipao', 'Simbahayan Program Area Coordinator', 'Simbahayan ', 'kp@gmail.com', '09126574567', 'Manila', 'color?', 'Blue', ''),
(18, 21, 'Jasmin', 'J.', 'Victoria', 'Simbahayan Program Area Coordinator', 'Simbahayan ', 'j@gmail.com', '09163454345', 'manila', 'color?', 'pink', ''),
(19, 26, 'Adriel', 'J.', 'Benitez', 'Organization President', 'NA - University Wide', 'ab@gmail.com', '09126574565', 'manila', 'color?', 'Blue', ''),
(20, 27, 'Luis', 'V.', 'Padilla', 'Organization Adviser', 'NA - University Wide', 'lp@gmail.com', '09126574567', 'manila', 'color?', 'Blue', ''),
(21, 24, 'Khrisnamonte', 'D.', 'Balmeo', 'College Community Development Coordinator', 'Institute of Information and Computing Sciences', 'kb@gmail.com', '09126574567', 'manila', 'color?', 'Blue', ''),
(22, 23, 'Simbahayan ', 'Program', 'Coordinator', 'Simbahayan Program Area Coordinator', 'Simbahayan ', 'scdo@gmail.com', '09126574565', 'manila', 'color?', 'pink', ''),
(27, 34, 'analiza', 'asistin', 'yanga', 'College Community Development Coordinator', 'Faculty of Arts and Letters', 'aayanga67@gmail.com', '09151299985', 'faculty of arts and letters', 'am i beautiful', 'definitely!', ''),
(29, 97, 'Joshua', 'F.', 'De Guzman', 'College Community Development Coordinator', 'Institute of Information and Computing Sciences', 'jm@gmail.com', '09126574567', 'Manila', '1+2', '3', ''),
(32, 124, 'Kate', 'L.', 'Diaz', 'Organization President', 'Institute of Information and Computing Sciences', 'kk@gmail.com', '09126574565', 'Manila', 'color?', 'pink', ''),
(33, 125, 'Jay', 'G.', 'Ty', 'Organization Adviser', 'Institute of Information and Computing Sciences', 'jj@gmail.com', '09163454345', 'Manila', 'color?', 'Blue', ''),
(34, 126, 'Alex', 'A.', 'Santos', 'College Dean', 'Institute of Information and Computing Sciences', 'aa@gmail.com', '09126574565', 'Manila', 'color?', 'Blue', ''),
(35, 127, 'Hermel', 'G.', 'Pama', 'College Regent', 'Institute of Information and Computing Sciences', 'hh@gmail.com', '09163454345', 'Manila', 'color?', 'Blue', ''),
(36, 129, 'Christian', 'Genova', 'Catinguil', 'Organization President', 'Faculty of Arts and Letters', 'christiancatinguil@gmail.com', '09262499301', 'Cavite', 'What is your major course', 'Sociology', ''),
(37, 130, 'Josephine', 'Aguilar', 'Placido', 'Organization Adviser', 'Faculty of Arts and Letters', 'ss@gmail.com', '09179780800', 'Manila', 'What Department are you in', 'Sociology', ''),
(38, 131, 'Michael Anthony', 'C.', 'Vasco', 'College Dean', 'Faculty of Arts and Letters', 'mvasco@gmail.com', '09126574569', 'Manila', 'What College are you in', 'AB', ''),
(39, 132, 'Rodel', 'E.', 'Aligan', 'College Regent', 'Faculty of Arts and Letters', 'raligan@gmail.com', '09163454345', 'Manila', 'What college are you in', 'AB', '');

-- --------------------------------------------------------

--
-- Table structure for table `simbahayan_order`
--

CREATE TABLE IF NOT EXISTS `simbahayan_order` (
  `signatory_id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `signatory_num` int(11) NOT NULL,
  `signatory_name` varchar(255) NOT NULL,
  `reference` int(11) NOT NULL,
  `simbahayan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_update`
--

CREATE TABLE IF NOT EXISTS `status_update` (
  `update_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_update`
--

INSERT INTO `status_update` (`update_id`, `date`, `proposal_id`, `user_id`, `action`, `reason`) VALUES
(33, 0, 15, 124, 'Approved', ''),
(34, 0, 15, 125, 'Approved', ''),
(35, 0, 15, 24, 'Approved', ''),
(36, 0, 15, 126, 'Approved', ''),
(37, 0, 15, 127, 'Approved', ''),
(38, 0, 15, 22, 'Approved', ''),
(39, 0, 15, 20, 'Approved', ''),
(40, 0, 16, 129, 'Approved', ''),
(41, 0, 16, 130, 'Approved', ''),
(42, 0, 16, 34, 'Approved', ''),
(43, 0, 16, 131, 'Approved', ''),
(44, 0, 16, 132, 'Approved', ''),
(45, 0, 16, 22, 'Approved', ''),
(46, 0, 16, 20, 'Approved', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_profile`
--

CREATE TABLE IF NOT EXISTS `student_profile` (
  `org_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `org_name` varchar(100) NOT NULL,
  `affiliation` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mi` varchar(100) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `security_question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_profile`
--

INSERT INTO `student_profile` (`org_id`, `user_id`, `org_name`, `affiliation`, `college`, `fname`, `mi`, `lname`, `position`, `email`, `contact_number`, `signature`, `security_question`, `answer`) VALUES
(22, 25, 'EARTH_UST', 'University-Wide', 'NA - University Wide', 'Abigail', 'D.', 'Brioles', 'Organization Community Development Representative', 'eust@gmail.com', '09126574565', 'uploads/earthadv.jpg', 'color?', 'pink'),
(25, 123, 'ISS', 'College-Based', 'Institute of Information and Computing Sciences', 'paul', 'J.', 'Cruz', 'Organization Community Development Representative', 'pp@gmail.com', '09126574567', 'uploads/earthadv.jpg', '1+2', '3'),
(26, 128, 'UST Sociological Society', 'College-Based', 'Faculty of Arts and Letters', 'Mae', 'D', 'Era', 'Organization Community Development Representative', 'ustsociologicalsociety@gmail.com', '0912346566', 'uploads/earthadv.jpg', 'favorite color', 'yellow');

-- --------------------------------------------------------

--
-- Table structure for table `terminal`
--

CREATE TABLE IF NOT EXISTS `terminal` (
  `terminal_id` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_path1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehiclerequest`
--

CREATE TABLE IF NOT EXISTS `vehiclerequest` (
  `vehicle_id` int(11) NOT NULL,
  `osg_num` varchar(100) NOT NULL,
  `borrower` varchar(50) NOT NULL,
  `contact_person` varchar(30) NOT NULL,
  `contact_num` varchar(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `datetrip` varchar(100) NOT NULL,
  `etd` varchar(10) NOT NULL,
  `place` varchar(100) NOT NULL,
  `passengersnum` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `driver` varchar(30) NOT NULL,
  `rental` varchar(10) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `date_submitted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `approval_form`
--
ALTER TABLE `approval_form`
  ADD PRIMARY KEY (`approval_id`);

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `budget_proposal`
--
ALTER TABLE `budget_proposal`
  ADD PRIMARY KEY (`budget_id`);

--
-- Indexes for table `college_list`
--
ALTER TABLE `college_list`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `cover_letter`
--
ALTER TABLE `cover_letter`
  ADD PRIMARY KEY (`cover_id`), ADD UNIQUE KEY `proposal_id` (`proposal_id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `username_2` (`username`);

--
-- Indexes for table `order_signatory`
--
ALTER TABLE `order_signatory`
  ADD PRIMARY KEY (`signatory_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `program_flow`
--
ALTER TABLE `program_flow`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `proj_proposal`
--
ALTER TABLE `proj_proposal`
  ADD PRIMARY KEY (`proposal_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `signatory_profile`
--
ALTER TABLE `signatory_profile`
  ADD PRIMARY KEY (`signatory_id`);

--
-- Indexes for table `simbahayan_order`
--
ALTER TABLE `simbahayan_order`
  ADD PRIMARY KEY (`signatory_id`);

--
-- Indexes for table `status_update`
--
ALTER TABLE `status_update`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `student_profile`
--
ALTER TABLE `student_profile`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `terminal`
--
ALTER TABLE `terminal`
  ADD PRIMARY KEY (`terminal_id`);

--
-- Indexes for table `vehiclerequest`
--
ALTER TABLE `vehiclerequest`
  ADD PRIMARY KEY (`vehicle_id`), ADD UNIQUE KEY `proposal_id` (`proposal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `approval_form`
--
ALTER TABLE `approval_form`
  MODIFY `approval_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2007;
--
-- AUTO_INCREMENT for table `budget_proposal`
--
ALTER TABLE `budget_proposal`
  MODIFY `budget_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `college_list`
--
ALTER TABLE `college_list`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cover_letter`
--
ALTER TABLE `cover_letter`
  MODIFY `cover_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `order_signatory`
--
ALTER TABLE `order_signatory`
  MODIFY `signatory_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `program_flow`
--
ALTER TABLE `program_flow`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `proj_proposal`
--
ALTER TABLE `proj_proposal`
  MODIFY `proposal_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `signatory_profile`
--
ALTER TABLE `signatory_profile`
  MODIFY `signatory_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `simbahayan_order`
--
ALTER TABLE `simbahayan_order`
  MODIFY `signatory_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_update`
--
ALTER TABLE `status_update`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `student_profile`
--
ALTER TABLE `student_profile`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `terminal`
--
ALTER TABLE `terminal`
  MODIFY `terminal_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehiclerequest`
--
ALTER TABLE `vehiclerequest`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
