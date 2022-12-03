-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'George', 'Popescu', 'Male', 'Georgesmart0@gmail.com', '8838489464', 'Valentin', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'George', 'Popescu', 'Male', 'Georgesmart0@gmail.com', '8838489464', 'Tiberiu', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'George', 'Popescu', 'Male', 'Georgesmart0@gmail.com', '8838489464', 'Adrian', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Irina', 'Nan', 'Female', 'Irina@gmail.com', '9768946252', 'Andrei', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'George', 'Popescu', 'Male', 'Georgesmart0@gmail.com', '8838489464', 'Tiberiu', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'George', 'Popescu', 'Male', 'Georgesmart0@gmail.com', '8838489464', 'Valentin', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Iulia', 'Popa', 'Female', 'Iulia@gmail.com', '8976897689', 'Valentin', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Marius', 'Ion', 'Male', 'Marius@gmail.com', '9070897653', 'Valentin', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'George', 'Popescu', 'Male', 'Georgesmart0@gmail.com', '8838489464', 'Valentin', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'George', 'Popescu', 'Male', 'Georgesmart0@gmail.com', '8838489464', 'Tiberiu', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'Dragos', 'Ionescu', 'Male', 'Dragos@gmail.com', '8683619153', 'Sebastian', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'Dragos', 'Ionescu', 'Male', 'Dragos@gmail.com', '8683619153', 'Mihai', 450, '2020-03-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anuta', 'anu@gmail.com', '7896677554', 'Salut Admin'),
(' Viki', 'viki@gmail.com', '9899778865', 'Super clinica!'),
('Iulian', 'iuli@gmail.com', '9997888879', 'Aveti clinici in Craiova?'),
('Geo', 'geo@gmail.com', '8788979967', 'Super echipa'),
('Manu', 'manu@gmail.com', '8977768978', 'test'),
('Maria', 'maria@gmail.com', '9898989898', 'Servicii de top'),
('Andi', 'andi@gmail.com', '8979776868', 'Foarte multumit'),
('Aurel', 'aurel@gmail.com', '9087897564', 'Multumesc'),
('Giovana', 'gio@gmail.com', '7869869757', 'Foarte multumita');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Andrei', 'Andrei123', 'Andrei@gmail.com', 'Generalist', 500),
('Andi', 'andi123', 'arun@gmail.com', 'Cardiolog', 600),
('Tiberiu', 'Tiberiu123', 'Tiberiu@gmail.com', 'Generalist', 700),
('Valentin', 'Valentin123', 'Valentin@gmail.com', 'Pediatru', 550),
('Sebastian', 'Sebastian123', 'Sebastian@gmail.com', 'Pediatru', 800),
('Adrian', 'Adrian123', 'Adrian@gmail.com', 'Cardiolog', 1000),
('Gabriel', 'Gabriel123', 'Gabriel@gmail.com', 'Neurolog', 1500),
('Mihai', 'Mihai123', 'Mihai@gmail.com', 'Pediatru', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Gabi', 'Sebastian', 'Male', 'Gabi@gmail.com', '9876543210', 'Gabi123', 'Gabi123'),
(2, 'Iulia', 'Popa', 'Female', 'Iulia@gmail.com', '8976897689', 'Iulia123', 'Iulia123'),
(3, 'Dragos', 'Ionescu', 'Male', 'Dragos@gmail.com', '8976898463', 'Dragos123', 'Dragos123'),
(4, 'George', 'Popescu', 'Male', 'Georgesmart0@gmail.com', '8838489464', 'George123', 'George123'),
(5, 'Marius', 'Ion', 'Male', 'Marius@gmail.com', '9070897653', 'Marius123', 'Marius123'),
(6, 'Ion', 'Pop', 'Male', 'Ion@gmail.com', '9059986865', 'Ion123', 'Ion123'),
(7, 'Elena', 'Nanu', 'Female', 'Elena@gmail.com', '9128972454', 'Elena123', 'Elena123'),
(8, 'Mihai', 'Sebastian', 'Male', 'Mihai@gmail.com', '9809879868', 'Mihai123', 'Mihai123'),
(9, 'Dragos', 'Ionescu', 'Male', 'Dragos@gmail.com', '8683619153', 'Dragos123', 'Dragos123'),
(10, 'Petre', 'Bobescu', 'Male', 'Petre@gmail.com', '9609362815', 'Petre123', 'Petre123'),
(11, 'Irina', 'Nan', 'Female', 'Irina@gmail.com', '9768946252', 'Irina123', 'Irina123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Tiberiu', 4, 11, 'George', 'Popescu', '2020-03-27', '15:00:00', 'Tuse', 'Nicio alergie', 'sirop Grintuss'),
('Valentin', 2, 8, 'Iulia', 'Popa', '2020-03-21', '10:00:00', 'Febra', 'Xilina', 'Antiinflamator'),
('Sebastian', 9, 12, 'Dragos', 'Ionescu', '2020-03-26', '12:00:00', 'Febra', 'Nicio alergie', 'Paracetamol -> la 8h'),
('Mihai', 9, 13, 'Dragos', 'Ionescu', '2020-03-26', '14:00:00', 'Gripa', 'Dermatita', 'Bioderma atoderm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
