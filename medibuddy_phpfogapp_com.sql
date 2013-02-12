-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2013 at 01:08 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medibuddy_phpfogapp_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `ans_body` text COLLATE utf8_unicode_ci NOT NULL,
  `ans_id` int(11) NOT NULL AUTO_INCREMENT,
  `ans_docid` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `a_rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ans_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`ans_body`, `ans_id`, `ans_docid`, `q_id`, `a_rank`) VALUES
('thanks for tour question about whooping cough', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE IF NOT EXISTS `disease` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` text COLLATE utf8_unicode_ci NOT NULL,
  `d_local` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=67 ;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`d_id`, `d_name`, `d_local`) VALUES
(1, 'Whooping cough', ''),
(2, 'Diphtheria', ''),
(3, 'Measles', ''),
(4, 'Chickenpox', ''),
(5, 'Mumps', ''),
(6, 'Diarrhea', ''),
(7, 'Dysentery', ''),
(8, 'Abdominal Cramp', ''),
(9, 'Abdominal Menstruation', ''),
(10, 'Heartburn', ''),
(11, 'Hay fever', ''),
(12, 'Diarrhoea', ''),
(13, 'Piles', ''),
(14, 'Anaemia', ''),
(15, 'Typhoid Fever', ''),
(16, 'Food Poisoning', ''),
(17, 'Malaria', ''),
(18, 'Asthma', ''),
(19, 'Urinary tract infecton', ''),
(20, 'Arthralgia', ''),
(21, 'Anorexia', ''),
(22, 'anthrax', ''),
(23, 'ascarasis', ''),
(24, 'babesiousis', ''),
(25, 'coronary plumb', ''),
(26, 'rhemotoid infectoin', ''),
(27, 'Dry rash allergy', ''),
(28, 'Migrane', ''),
(29, 'Channelopathy disorder', ''),
(30, 'Lightoculosis', ''),
(31, 'miosis/myopia', ''),
(32, 'epithorumiane', ''),
(33, 'coronary perforation', ''),
(34, 'easy bruison', ''),
(35, 'botulism', ''),
(36, 'Bronchiectasis', ''),
(37, 'colon cancer', ''),
(38, 'Channelopathy', ''),
(39, 'lumber cunosis', ''),
(40, 'Agranulocytosis', ''),
(41, 'tellow fever', ''),
(42, 'tiphoid', ''),
(43, 'tuberclosis', ''),
(44, 'step throat', ''),
(45, 'schitzophrenia', ''),
(46, 'cryptosporidiosis', ''),
(47, 'hypercondria', ''),
(48, 'influenza', ''),
(49, 'arthirisis', ''),
(50, 'dengue', ''),
(51, 'meningitis', ''),
(52, 'pneumonia', ''),
(53, 'trapnosmiasis', ''),
(54, 'hepatitis a', ''),
(55, 'hepatitis b', ''),
(56, 'lumber pain', ''),
(57, 'gastroliver acids', ''),
(58, 'perkinson disease', ''),
(59, 'Testicular/pelvic pain', ''),
(60, 'Sexual dysfunction/loss libido', ''),
(61, 'Unexpl. Menstrual irregularity', ''),
(62, 'Breast cancer', ''),
(63, 'Bladder irritability/dysfunction', ''),
(64, 'alzheimer', ''),
(65, 'nervosa', ''),
(66, 'epileptic ositem', '');

-- --------------------------------------------------------

--
-- Table structure for table `disease_doctor`
--

CREATE TABLE IF NOT EXISTS `disease_doctor` (
  `dis_id` int(11) NOT NULL,
  `field` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `disease_doctor`
--

INSERT INTO `disease_doctor` (`dis_id`, `field`) VALUES
(1, 'Chest'),
(5, 'ENT'),
(1, 'ENT'),
(2, 'Chest'),
(3, 'Cardiac'),
(4, 'Orthopaedic'),
(5, 'Opthalmology'),
(6, 'Anesthesiology'),
(7, 'Liver & Gastroenterology'),
(8, 'Medicine & Rheumatology '),
(8, 'Liver & Gastroenterology '),
(8, 'General Surgeon '),
(8, 'Child - Pediatric '),
(9, 'Urology'),
(8, 'Medicine'),
(8, 'Internal Medicine '),
(10, 'General Surgeon '),
(10, 'Liver & Gastroenterology '),
(10, 'Medicine & Cardiology '),
(11, 'Medicine'),
(11, 'Child - Pediatric '),
(11, 'Oncology'),
(12, 'Hematology'),
(12, 'Medicine'),
(12, 'Pathology & Laboratory '),
(13, 'Urology'),
(13, 'Hematology'),
(13, 'General Surgeon '),
(13, 'Internal Medicine '),
(14, 'Cancer - Oncology '),
(14, 'Pathology & Laboratory '),
(14, 'Internal Medicine '),
(15, 'Medicine'),
(15, 'Pathology & Laboratory '),
(15, 'Internal Medicine '),
(16, 'Liver & Gastroenterology '),
(16, 'Pathology & Laboratory '),
(16, 'Child - Pediatric '),
(17, 'Medicine'),
(18, 'Medicine & Rheumatology '),
(18, 'ENT - Head & Neck Surgeon '),
(19, 'Urology'),
(19, 'Pathology & Laboratory '),
(20, 'Thyroid '),
(20, 'Neuromedicine '),
(21, 'Psychiatry'),
(21, 'Medicine'),
(22, 'Pathology & Laboratory '),
(23, 'General & Laparoscopic Surgeon '),
(24, 'Thyroid '),
(24, 'Medicine & Cardiology '),
(25, 'Cardiology'),
(25, 'Medicine & Cardiology '),
(26, 'Medicine & Rheumatology '),
(26, 'Internal Medicine '),
(27, 'Dermatology '),
(27, 'Medicine'),
(28, 'ENT - Head & Neck Surgeon '),
(29, 'Cancer - Oncology '),
(38, 'Neuromedicine '),
(21, 'Neuromedicine '),
(30, 'Oncology'),
(31, 'General Surgeon '),
(32, 'ENT - Head & Neck Surgeon '),
(33, 'Hematology'),
(33, 'Cardiology'),
(34, 'Internal Medicine '),
(36, 'Internal Medicine '),
(37, 'Cancer - Oncology '),
(38, 'Neuromedicine '),
(39, 'Child - Pediatric '),
(40, 'Burn & Plastic Surgeon '),
(41, 'Thyroid '),
(42, 'Medicine'),
(42, 'Internal Medicine '),
(43, 'Pathology & Laboratory '),
(44, 'General Surgeon '),
(45, 'Psychiatry'),
(46, 'Hematology'),
(47, 'Child - Pediatric '),
(48, 'Medicine'),
(49, 'Medicine & Rheumatology '),
(50, 'Pathology & Laboratory '),
(50, 'Internal Medicine '),
(51, 'Neuromedicine '),
(52, 'Medicine'),
(53, 'Medicine & Diabetes '),
(52, 'Child - Pediatric '),
(53, 'Orthopaedic, Spine & Trauma Surgeon '),
(54, 'Hematology'),
(55, 'Pathology & Laboratory '),
(54, 'Liver & Gastroenterology '),
(56, 'General & Laparoscopic Surgeon '),
(57, 'Liver & Gastroenterology '),
(58, 'Neuromedicine '),
(59, 'Urology'),
(60, 'Hematology'),
(60, 'Psychiatry'),
(60, 'Urology'),
(61, 'Pathology & Laboratory '),
(62, 'Oncology'),
(63, 'Urology'),
(63, 'General Surgeon '),
(64, 'Neuromedicine '),
(64, 'Psychiatry'),
(65, 'Psychiatry'),
(66, 'Burn & Plastic Surgeon ');

-- --------------------------------------------------------

--
-- Table structure for table `disease_drugs`
--

CREATE TABLE IF NOT EXISTS `disease_drugs` (
  `disease_id` int(11) NOT NULL,
  `drug_name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disease_symptom`
--

CREATE TABLE IF NOT EXISTS `disease_symptom` (
  `d_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease_symptom`
--

INSERT INTO `disease_symptom` (`d_id`, `s_id`, `priority`) VALUES
(1, 13, 0),
(1, 19, 0),
(2, 3, 0),
(3, 14, 0),
(3, 2, 0),
(4, 2, 0),
(4, 16, 0),
(4, 20, 0),
(5, 2, 0),
(6, 2, 0),
(6, 11, 0),
(7, 2, 0),
(7, 9, 0),
(1, 15, 0),
(7, 28, 0),
(8, 26, 0),
(1, 25, 0),
(1, 57, 0),
(2, 35, 0),
(2, 15, 0),
(3, 27, 0),
(3, 44, 0),
(4, 63, 0),
(5, 68, 0),
(6, 55, 0),
(7, 10, 0),
(7, 11, 0),
(8, 22, 0),
(9, 23, 0),
(10, 90, 0),
(10, 41, 0),
(11, 27, 0),
(11, 20, 0),
(12, 9, 0),
(13, 9, 0),
(15, 33, 0),
(15, 69, 0),
(17, 74, 0),
(14, 9, 0),
(1, 48, 0),
(16, 35, 0),
(19, 57, 0),
(23, 35, 0),
(16, 33, 0),
(16, 21, 0),
(17, 37, 0),
(17, 35, 0),
(18, 31, 0),
(19, 23, 0),
(20, 32, 0),
(39, 30, 0),
(23, 36, 0),
(23, 85, 0),
(21, 47, 0),
(22, 80, 0),
(18, 90, 0),
(25, 18, 0),
(26, 64, 0),
(27, 5, 0),
(34, 50, 0),
(28, 72, 0),
(29, 73, 0),
(37, 51, 0),
(38, 88, 0),
(38, 78, 0),
(39, 25, 0),
(45, 66, 0),
(46, 81, 0),
(47, 84, 0),
(53, 93, 0),
(1, 21, 0),
(51, 62, 0),
(54, 28, 0),
(55, 2, 0),
(57, 15, 0),
(58, 12, 0),
(59, 23, 0),
(60, 83, 0),
(61, 23, 0),
(62, 30, 0),
(63, 72, 0),
(64, 88, 0),
(65, 52, 0),
(66, 89, 0),
(63, 26, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `fax` text COLLATE utf8_unicode_ci NOT NULL,
  `visit` text COLLATE utf8_unicode_ci NOT NULL,
  `field` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`name`, `location`, `address`, `phone`, `fax`, `visit`, `field`) VALUES
('Dr. Arun Dodhu Patole', 'Dhaka', 'plot 81 ,bolck e,Bashundhara R/A, dhaka-1229', '01814276556', '', '', 'ENT'),
('Professor Dr. Abul Hasnat Joarder', 'Dhaka', 'House 17, Road 8, Dhaka-1205', '9670295', '', '', 'ENT'),
('Dr. Hossain Imam Al Hadi', 'Dhaka', 'plot 81 ,bolck e,Bashundhara R/A, dhaka-1229', '01814276556', '', '', 'ENT'),
('Dr. M A Rouf Sarder', 'Dhaka', '44/16, Panthapath, Dhaka - 1215', '131901', '', '', 'ENT'),
('Dr. Mahmudul Hasan ', 'Dhaka', '74 G/ 75,Peacock Square, New Airport Road,Mohakhali, Dhaka -1215', '9122689', '', '', 'ENT'),
('Dr. A.K.M. Mostofa Hossain', 'Dhaka', 'Hosaf Tower, 6/9 Outer Circular Road, Malibag, Dhaka-1217', '8333811-3', '', '', 'Chest'),
('Dr. Abdul Hamid ', 'Dhaka', '	1/8, Block-E, Lalmatia, Sat Masjid Road, Dhaka - 1217', '9124436', '', '', 'Chest'),
('Dr. K.C Ganguly', 'Dhaka', 'House # 5, Road # 2, Dhanmondi, Dhaka', '9662741', '', '', 'Chest'),
('Dr. Kazi Mostafa Sarwar ', 'Dhaka', 'House # 75, Satmasjid Road, Sankar, Bus Stand , Dhanmondi, Dhaka - 1209', '9131207', '', '', 'Chest'),
('Dr. M. A. Qasem', 'Dhaka', 'Block - B, 22/12 Khilji Road, Mohammadpur, Dhaka - 1207, Bangladesh', '9101641', '', '', 'Chest'),
('Dr. A.K.M. Fazlur Rahman', 'Dhaka', 'House - 17, Road - 8, Dhanmondi Dhaka - 1205, Bangladesh', '9674609', '', '', 'Cardiac'),
('Dr. Abul Hasan Muhammad Bashar', 'Dhaka', '2/18 , Babor Road, Mohammadpur, Dhaka-1207', '9118138', '', '', 'Cardiac'),
('Dr. Golam Haider Rasul', 'Dhaka', 'Plot #15,Road #71,Gulshan,Dhaka-1212,Bangladesh', '8836000', '', '', 'Cardiac'),
('Dr. Jahangir Kabir', 'Dhaka', 'Plot #15, Road #71, Gulshan - 2, Dhaka-1212, Bangladesh', '8836434-44 ', '', '', 'Cardiac'),
('Dr. Kazi Abul Azad', 'Dhaka', '6/1 , Humayan Road, Block # B, Mohammadpur, Dhaka -1207', '9121613', '', '', 'Cardiac'),
('Dr. Lutfor Rahman', 'Dhaka', 'House # 1, Road # 4, Dhanmondi, Dhaka - 1205', '01713035970', '', '', 'Cardiac'),
('Dr. Moinul Kabir', 'Dhaka', 'House # 75, Road # 7/A, Dhanmondi - 1205.', '01747333315', '', '', 'Cardiac'),
('Professor Dr. Momenuzzaman', 'Dhaka', 'Plot # 15, Road # 71, Gulshan-2, Dhaka-1212, Bangladesh ', '8836000', '', '', 'Cardiac'),
('Professor Dr. Munshi Md. Mujibur Rahman', 'Dhaka', '32, Green Road, Room No - 414, Dhanmondi, Dhaka - 1205, Bangladesh', '9616074', '', '', 'Cardiac'),
('House # 75, Satmasjid Road, Sankar, Bus Stand , Dhanmondi, Dhaka - 1209', 'Dhaka', 'House # 75, Satmasjid Road, Sankar, Bus Stand , Dhanmondi, Dhaka - 1209', '9131207', '', '', 'Cardiac'),
('Brig Gen Professor Dr. A K M Masud ', 'Dhaka', 'House # 17, Road # 8, Dhanmondi, Dhaka - 1205, Bangladesh', '9670295', '', '', 'Orthopaedic'),
('Professor Dr. A.K.M. Akter Murshed', 'Dhaka', 'House # 71/A, road # 5/A, Dhanmondi R/A, Dhaka.', '8624907-10', '', '', 'Orthopaedic'),
('Dr. A.K.M. Jahangir Alam', 'Dhaka', '3/12, Humayun Road, Mohammadpur Dhakaâ€‘1207', '01711821578', '', '', 'Orthopaedic'),
('Dr. Abu Jafar Chowdhury ', 'Dhaka', 'House # 6, Road # 4, Dhanmondi, Dhaka - 1205', '8610793-8', '', '', 'Orthopaedic'),
('Dr. Zahurul Huq', 'Dhaka', '1/8, Block-E, Lalmatia, Sat Masjid Road, Dhaka - 1217', '9124436', '', '', 'Orthopaedic'),
('Dr. AKM Mamunur Rashid ', 'Dhaka', 'House # 18, Road # 6, Dhanmondi R/A, Dhaka -1205, Bangladesh', '8628512', '', '', 'Opthalmology'),
('Dr. Deen Mohd. Noorul Huq', 'Dhaka', 'House # 18, Road # 6, Dhanmondi R/A, Dhaka -1205, Bangladesh', '9119738', '', '', 'Opthalmology'),
('Dr. Halima Saidya Begum ', 'Dhaka', 'Fashion tower, 98/6-A, Bara Moghbazar, Dhaka - 1217', '9343961-2', '', '', 'Opthalmology'),
('Dr. Hiramoni Sarma ', 'Dhaka', '18/F Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath, Dhaka - 1205, Bangladesh.', '01713377773', '', '', 'Opthalmology'),
('Dr. Jasim Uddin ', 'Dhaka', '30, Anjuman-e-Mofidul Islam Road, Kakrail, Dhaka - 1000', '9360331-2', '', '', 'Opthalmology'),
('Professor Dr. Kazi Mesbahuddin lqbal', 'Dhaka', 'Plot # 81, Block # E, Basudhara R/A, Dhaka - 1229', '0 1841276556', '', '', 'Anesthesiology'),
('Dr. Lutful Aziz', 'Dhaka', 'Plot # 81, Block # E, Basudhara R/A, Dhaka - 1229', '0 1841276556', '', '', 'Anesthesiology'),
('Professor Dr. ( Brig. General ) M H M Delowar Hossain ', 'Dhaka', 'House # 48, Road # 9/A, Dhanmondi, SAtmasjid Road, Dhaka - 1209, Bangladesh', '0 1717351631', '', '', 'Anesthesiology'),
('Professor Dr. Md. Ahsanul Habib', 'Dhaka', '18/F Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath, Dhaka - 1205, Bangladesh.', '01713141447', '', '', 'Anesthesiology'),
('Dr. Md. Azharul Islam', 'Dhaka', '18/F Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath, Dhaka - 1205, Bangladesh.', '01713141447', '', '', 'Anesthesiology'),
('Professor Dr. A. B. M. Yunus ', '25/3, Green Road, Dhaka - 1205 ', '25/3, Green Road, Dhaka - 1205 ', '+880-2-8610313, ', '9661410', '9:00-5:00', 'Hematology'),
('Professor Dr. A.A. Quoreshi ', 'MUKTI ( Manashik & Madakashakti Niramoy Kendra Ltd. ) ', 'House # 2, Road # 49, Gulshan # 2, Dhaka - 1212, Bangladesh ', '+880 2 9896165, 9883991,', '8814562  ', '11:00-5:00', 'Psychiatry'),
('Professor Dr. A.K.M. Anwarul Islam ', 'Bangabandhu Sheikh Mujib Medical University ( BSMMU ) ', '2/1-A Iqbal Road, Mohammadpur, Dhaka-1207 ', '+880-2-9134407, 9132548, 8124974', '8110864', '9:00-10:00', 'Urology'),
('Professor Dr. ( Brig. Gen ) Md. Saidur Rahman ', 'Armed Forces Medical College, Dhaka ', 'House # 48, Road # 9/A, Dhanmondi, SAtmasjid Road, Dhaka - 1209, Bangladesh ', '+880-2-9126625, 9128835-7,', '01717351631 ', '11:00-5:00', 'General Surgeon '),
('Professor Dr. Sirajul Haque ', '', '', '', '', '', 'Dermatology '),
('Professor Dr. Sirajul Haque ', 'Bangladesh Medical College ', '68 Shat Masjid Road, Dhanmondi, Dhaka ', '+880-2- 9131207( Chamber ), 9118202(Office)  Members Only (Mobile no) ', '9131207', '9:00-10:00', 'Dermatology '),
('Professor Dr. (Rtd) N.I. Khan ', 'Dhaka Medical College Hospital ', '54, Siddeshwari Road , Dhaka - 1217 ', '+880-2-831-8135', '8814562  ', '9:00-10:00', 'Medicine'),
('Dr. A H M Rowshon ', 'Shaheed Suhrawardy Medical College & Hospital ', 'House # 16, Road # 2, Dhanmondi R/A, Dhaka - 1205 ', '+880-2-9669480, 9661491-3', ' 01553341060-1', '9:00-10:00', 'Liver & Gastroenterology '),
('Dr. A H M Shahidul Islam ', 'Thyroid Clinic ', 'Rangs Taz Tower ( 2nd floor ) , 20 Green Road , Dhaka - 1205 ', '+880-2-9667881  Members Only (Mobile no) ', '+880-2-9667881  Members Only (Mobile no) ', '9:00-10:00', 'Thyroid '),
('Dr. A K M Hamidur Rahman ', 'Ibn Sina Diagnostic & Imaging Center ', 'House # 48, Road # 9/A, Dhanmondi, SAtmasjid Road, Dhaka - 1209, Bangladesh ', '9126625', '9126625', '9:00-5:00', 'Cancer - Oncology '),
('Dr. A K M Motiur Rahman Bhuiyan ', 'Bangabandhu Sheikh Mujib Medical University (BSMMU) ', 'House-11/A, Road-2, Dhanmondi R/A, Dhaka-1205, Bangladesh ', '9661491', '9661491', '9:00-5:00', 'Medicine & Rheumatology '),
('Dr. A K M Shaeen Ahmed ', 'Labaid Specialized Hospital - Gulshan Branch ', 'House # 13/A, Road # 35, Gulshan # 2, Dhaka-1212 ', '8858943', '8858943', '9:00-5:00', 'Medicine & Diabetes '),
('Profesosr Dr. A Masud Chowdhury ', 'Bangabandhu Sheikh Mujib Medical University ( BSMMU ) ', 'Comfort Tower, 167/B, Green Road, Dhanmondi, Dhaka, Bangladesh ', '+880-2-8124990 (Master Line), 8129667, 8124380  Members Only (Mobile no) ', '8124990 ', '9:00-5:00', 'Liver & Gastroenterology '),
('Dr. A N M Zia-Ur- Rahman ', 'Popular Medical College & Hospital ', 'House # 16, Road # 2, Dhanmondi R/A, Dhaka - 1205 ', '9669480', '9669480', '11:00-5:00', 'General Surgeon '),
('Professor Dr. A U M Muhsin ', '245/2 New Circular Road, Malibagh, Dhaka - 1217 ', 'Dhaka Medical College ', '+880-2-9350383, 9351237, 9351424, 9352641  Members Only (Mobile no) ', '9352641  ', '11:00-5:00', 'Pathology & Laboratory '),
('', '', '', '', '', '', ''),
('Professor Dr. A Z M Maidul Islam ', 'Bangabandhu Sheikh Mujib Medical Univeristy ', 'Road # 7, Dhanmondi, Dhaka - 1205 ', '+880-2- 9123060( Chamber )  Members Only (Mobile no) ', '+880-2- 9123060( Chamber )  Members Only (Mobile no) ', '9:00-5:00', 'Skin & VD ( Dermatology ) '),
('Dr. A, B, Siddiq ', 'Dhaka Medical College & Hospital ', '14, Sweden Plaza , Main Road, Mirpur- 1, Dhaka ', '9015122', '9015122', '9:00-5:00', 'Internal Medicine '),
('Professor Dr. A. A. Ashraf Ali ', 'Dhaka Medical College & Hospital ', '167/B, Green Road Dhanmondi, Dhaka ', '8617806 ', '8617806 ', '9:00-5:00', 'General & Laparoscopic Surgeon '),
('Dr. Brig-Gen ( Rtd ) A. B. M Syeed Hossain ', 'Aysha Memorial Specialised Hospital ', 'Aysha Memorial Specialised Hospital ', '9122690', '8142371  ', '9:00-10:00', 'Neuromedicine '),
('Dr. A. B. M.Ruhul Amin Khan ', 'Medison Diagnostic Center ', '74 /G/ 75,Peacock Square, New Airport Road,Mohakhali, Dhaka -1215, Bangladesh. ', '8142370', '8142370', '9:00-10:00', 'General & Laparoscopic Surgeon '),
('Dr. A. B. M.Ruhul Amin Khan ', '3, Darus Salam Road, Mirpur-1, Dhaka ', 'Medison Diagnostic Center ', '9000089  ', '9000089  ', '9:00-5:00', 'Orthopaedic, Spine & Trauma Surgeon '),
('Professor Dr. A. F. M. Selim ', 'Institute of Child Health ( ICH ) , Shishu Hospital - Dhaka, Bangladesh ', 'House # 2, Road # 5, Green Road , Dhanmondi , Dhaka - 1205 ', '8624514', '8624514', '11:00-5:00', 'Child - Pediatric '),
('Dr. A. B. M.Rukmul Amin Khan ', 'Aysha Memorial Specialised Hospital ', 'Child - Pediatric ', '8919779', '8919779', '9:00-5:00', 'Cancer - Oncology '),
('Mahdi Habib', 'Yama plaza', '56/j baganbilash', '01716482782', '982341324', '9:00-5:00', 'Cancer - Oncology '),
('Mahdi Habib', 'Yama plaza', '56/j baganbilash', '01716482782', '982341324', '9:00-5:00', 'Cancer - Oncology '),
('Dr. A.B.M Mahb-Ul-Alam ', 'National Institute of Kidney Disease and Urology ', '22/8/A, Shamoli, Mirpur Road, Dhaka - 1207 ', '8130508', ' 01553341060-1', '11:00-5:00', 'Liver & Gastroenterology '),
('Dr. A.B.M Sarwar-E-Alam ', 'SQUARE Hospitals Ltd, Dhaka ', '18/F West Panthapath, Dhaka - 1205, Bangladesh. ', '8142431', '8142431', '11:00-5:00', 'General Surgeon '),
('Dr. A.B.M. Khorshed Alam ', 'Dhaka Medical College Hospital ', '54, Siddeshwari Road , Dhaka - 1217 ', '+880-2-831-8135', '8814562  ', '9:00-10:00', 'ENT - Head & Neck Surgeon '),
('Professor Dr. A.B.M.F. Karim ', 'Japan Bangladesh Friednship Hospital ', '55, Satmasjid Road ( Zigatola Bus Stand ), Dhanmondi, Dhaka - 1209, Bangladesh ', '9664028', '9664028', '9:00-5:00', 'Oncology'),
('Professor Dr. A.F. Masood ', 'Bangladesh Institue of Child Health, Dhaka Shishu Hospital ( From Rtd. ) ', 'House # 47, Road # 9/A, SAtmasjid Road, Dhanmondi, Dhaka - 1209, Bangladesh ', '+880-2- 9123060( Chamber )  Members Only (Mobile no) ', ' 01553341060-1', '9:00-10:00', 'Orthopaedic Surgeon '),
('Professor Dr. A.F. Mohiuddin Khan ', '245/2 New Circular Road, Malibagh, Dhaka - 1217 ', '14, Sweden Plaza , Main Road, Mirpur- 1, Dhaka ', '+880-2-8124990 (Master Line), 8129667, 8124380  Members Only (Mobile no) ', '8110864', '11:00-5:00', 'Dermatology '),
('Dr. A.F.M. Saidur Rahman ', 'Rainbow Heart Consultation Center ', '54, Siddeshwari Road , Dhaka - 1217 ', '+880 2 9896165, 9883991,', '+880-2-9667881  Members Only (Mobile no) ', '11:00-5:00', 'Cardiology'),
('Dr. A.H.M. Waliul Islam ', 'Dhaka Medical College & Hospital ', '18/F West Panthapath, Dhaka - 1205, Bangladesh. ', '+880-2- 9131207( Chamber ), 9118202(Office)  Members Only (Mobile no) ', '8814562  ', '11:00-5:00', 'Cardiology'),
('Dr. A.K. Takib Uddin Ahmed ', 'Dhaka Medical College & Hospital ', 'House # 48, Road # 9/A, Dhanmondi, SAtmasjid Road, Dhaka - 1209, Bangladesh ', '+880-2-831-8135', ' 01553341060-1', '9:00-10:00', 'Neuromedicine '),
('Dr. A.K.M Fazlul Haque ', '25/3, Green Road, Dhaka - 1205 ', 'Plot # 81, Block # E, Bashundhara R/A, Dhaka - 1229, Bangladesh ', '+880-2-8401661, Hotline - 10678  Members Only (Mobile no) ', '+880-2-8401661, Hotline - 10678 ', '9:00-5:00', 'Burn & Plastic Surgeon '),
('Dr. A.K.M Monwarul Islam ', 'National Institute of Cardiovascular Disease ', 'Hous# (22/7)29, Bir Uttam A.N.M Nuruzzaman Sorak, (Babor road) Block# b, Mohammadpur, Dhaka-1207, Bangladesh ', '9111911', '9111911', '11:00-5:00', 'Medicine & Cardiology '),
('Professor Dr. A.K.M. Akter Murshed ', 'Bangladesh Medical college & hospital ', 'House # 71/A, road # 5/A, Dhanmondi R/A, Dhaka. ', '8624907', '8624907', '9:00-5:00', 'Liver & Gastroenterology '),
('Professor Dr. A.K.M. Anowar-ul-Azim ', 'Ad-din Hospital, Dhaka ', '32, Green Road, Dhanmondi, Dhaka - 1205, Bangladesh ', '+880 2 9896165, 9883991,', '8814562  ', '9:00-10:00', 'General & Laparoscopic Surgeon '),
('Professor Dr. A.K.M. Anwar Ullah ', '245/2 New Circular Road, Malibagh, Dhaka - 1217 ', 'House # 16, Road # 2, Dhanmondi R/A, Dhaka - 1205 ', '+880-2-8124990 (Master Line), 8129667, 8124380  Members Only ', '8110864', '9:00-10:00', 'Cardiology'),
('Professor Dr. A.K.M. Anwar Ullah ', 'Bangabandhu Sheikh Mujib Medical University ( BSMMU ) ', '18/F West Panthapath, Dhaka - 1205, Bangladesh. ', '+880-2- 9131207( Chamber ), 9118202(Office)  Members Only (Mobile no) ', '+880-2-8401661, Hotline - 10678 ', '9:00-10:00', 'Neuromedicine'),
('Dr. A.K.M. Fazlur Rahman ', 'Cardiac Surgeon ', 'House # 48, Road # 9/A, Dhanmondi, SAtmasjid Road, Dhaka - 1209, Bangladesh ', '+880-2- 9123060( Chamber )  Members Only (Mobile no) ', ' 01553341060-1', '9:00-5:00', 'Cardiology');

-- --------------------------------------------------------

--
-- Table structure for table `parent_symptom`
--

CREATE TABLE IF NOT EXISTS `parent_symptom` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `parent_symptom`
--

INSERT INTO `parent_symptom` (`parent_id`, `parent_name`) VALUES
(1, 'fever'),
(2, 'rash'),
(3, 'stool'),
(4, 'vomit'),
(5, 'cough'),
(6, 'headache'),
(7, 'abdomen'),
(8, 'penis'),
(9, 'neck'),
(10, 'shoulder_left'),
(11, 'shoulder_right'),
(12, 'hand_left'),
(13, 'hand_right'),
(14, 'palm_left'),
(15, 'palm_right'),
(16, 'leg_left'),
(17, 'leg_right'),
(18, 'ankle_left'),
(19, 'ankle_right'),
(20, 'feet_left'),
(21, 'feet_right'),
(22, 'eye_left'),
(23, 'eye_right'),
(24, 'mouth'),
(25, 'hair'),
(26, 'head'),
(27, 'ear');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `q_description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `q_rank` int(11) NOT NULL DEFAULT '0',
  `no_of_comment` int(11) NOT NULL DEFAULT '0',
  `dis_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `q_description`, `q_rank`, `no_of_comment`, `dis_id`, `user_id`) VALUES
(1, 'this is a question about whooping cough', 0, 0, 1, 6),
(2, 'haga clear hoise?', 0, 0, 58, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ranktable`
--

CREATE TABLE IF NOT EXISTS `ranktable` (
  `object_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `symptom`
--

CREATE TABLE IF NOT EXISTS `symptom` (
  `symptom_id` int(11) NOT NULL AUTO_INCREMENT,
  `symptom_name` varchar(100) NOT NULL,
  `symptom_locale` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_name` text NOT NULL,
  PRIMARY KEY (`symptom_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `symptom`
--

INSERT INTO `symptom` (`symptom_id`, `symptom_name`, `symptom_locale`, `parent_id`, `parent_name`) VALUES
(1, 'low (below 99)', '', 1, 'fever'),
(2, 'medium (99-101)', '', 1, 'fever'),
(3, 'high (above 101)', '', 1, 'fever'),
(4, 'in hand', '', 2, 'rash'),
(5, 'in belly', '', 2, 'rash'),
(6, 'in leg', '', 2, 'rash'),
(7, 'in neck', '', 2, 'rash'),
(8, 'constipation', '', 3, 'stool'),
(9, 'blood', '', 3, 'stool'),
(10, 'watery with blood', '', 3, 'stool'),
(11, 'watery without blood', '', 3, 'stool'),
(12, 'blood', '', 4, 'vomit'),
(13, 'normal', '', 4, 'vomit'),
(14, 'normal', '', 5, 'cough'),
(15, 'with hooping sound', '', 5, 'cough'),
(16, 'slight', '', 6, 'headache'),
(17, 'medium', '', 6, 'headache'),
(18, 'high', '', 6, 'headache'),
(19, 'on chest', '', 2, 'rash'),
(20, 'blood', '', 5, 'cough'),
(21, 'pain in the belly,stomach', '', 0, ''),
(22, 'pain in the belly,stomach', '', 0, ''),
(23, 'Vaginal Bleeding', '', 0, ''),
(24, 'heart pain ', '', 0, ''),
(25, 'Itching nostrils', '', 0, ''),
(26, 'Abdominal Pains', '', 0, ''),
(27, 'Fatugue and diziness', '', 0, ''),
(28, 'abdomen becomes tender', '', 7, 'abdomen'),
(29, 'Abdominal pains and Cramps', '', 0, ''),
(30, 'Body pains', '', 0, ''),
(31, 'Difficulty in breathing, including wheezing', '', 0, ''),
(32, 'Feeling of heat and slight pain when urinating', '', 0, ''),
(33, 'puking', '', 0, ''),
(34, 'Fatigue', '', 0, ''),
(35, 'low grade fevers ', '', 0, ''),
(36, 'chills', '', 0, ''),
(37, 'frequent sore throats*', '', 0, ''),
(38, 'drenching night sweats', '', 0, ''),
(39, 'dry, sticky sweating day or night*', '', 0, ''),
(40, 'rashes that look like red stretch marks, usually on back or hips*', '', 0, ''),
(41, 'headaches in front or top of head*', '', 0, ''),
(42, 'headache in back of head**', '', 0, ''),
(43, 'eyes sensitive to bright light', '', 0, ''),
(44, 'blurry vision or red or dry eyes*', '', 0, ''),
(45, 'swollen glands*', '', 0, ''),
(46, 'shortness of breath**', '', 0, ''),
(47, 'bruising', '', 0, ''),
(48, 'pain in the belly,stomach', '', 0, ''),
(49, 'whooping cough', '', 0, ''),
(50, 'memory loss', '', 0, ''),
(51, 'enlarged colon', '', 0, ''),
(52, 'potaasium lackings', '', 0, ''),
(53, 'higged sweatings', '', 0, ''),
(54, 'Constipation', '', 0, ''),
(55, 'Diarrhea', '', 0, ''),
(56, 'Chest pain', '', 0, ''),
(57, 'Rib soreness', '', 0, ''),
(58, 'Shortness of breath', '', 0, ''),
(59, 'black Fevers', '', 0, ''),
(60, 'Light sensitivity', '', 0, ''),
(61, 'Ear buzzing/ringing', '', 0, ''),
(62, 'headache', '', 0, ''),
(63, 'frequent fevers', '', 0, ''),
(64, 'Blurry vision', '', 0, ''),
(65, 'Poor balance', '', 0, ''),
(66, 'Muscle twitching', '', 0, ''),
(67, 'tremor', '', 0, ''),
(68, 'pain in testicles', '', 0, ''),
(69, 'Poor balance', '', 0, ''),
(70, 'irregularity in menstruation', '', 0, ''),
(71, 'unusual stiffness in breast', '', 0, ''),
(72, 'Numbness/tingling', '', 0, ''),
(73, 'Facial paralysis', '', 0, ''),
(74, 'Muscle cramps', '', 0, ''),
(75, 'Reddened, watery and itchy eyes', '', 0, ''),
(76, 'rise in stomach acid', '', 0, ''),
(77, 'Semiliquid stool (containing mucus, pus, or blood)', '', 0, ''),
(78, 'Constipation (which causes bleeding)', '', 0, ''),
(79, 'Unusual breathlessness', '', 0, ''),
(80, 'Confusion and delirium', '', 0, ''),
(81, 'joint pain', '', 0, ''),
(82, 'Neck/back stiffness', '', 0, ''),
(83, 'sexual mistrust', '', 0, ''),
(84, 'Fatigue/poor stamina', '', 0, ''),
(85, 'Swollen glands', '', 0, ''),
(86, 'disconcentration', '', 0, ''),
(87, 'black blood clot thoughout body', '', 0, ''),
(88, 'Whitining of eyes, lips, tongue, palms, soless, and nails\r\n', '', 0, ''),
(89, 'Difficulty in thinking', '', 0, ''),
(90, 'Heart palpitations / skip beats', '', 0, ''),
(91, 'Mood swings', '', 0, ''),
(92, 'Difficulty with writing', '', 0, ''),
(93, 'Difficulty with speech', '', 0, ''),
(94, 'Disorientation/getting lost', '', 0, ''),
(95, 'hypertension', '', 0, ''),
(96, 'Ear pain\r\n', '', 0, ''),
(97, 'Cough', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `logged_in` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `password`, `email`, `rank`, `username`, `role_id`, `logged_in`) VALUES
(1, 'ruhaga', 'rup@haga.com', 0, 'ruhaga', 2, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
