-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2019 at 11:03 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `resume`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('s', 's');

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE IF NOT EXISTS `ans` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL,
  `q1` int(20) NOT NULL DEFAULT '0',
  `q2` int(20) NOT NULL DEFAULT '0',
  `q3` int(20) NOT NULL DEFAULT '0',
  `q4` int(20) NOT NULL DEFAULT '0',
  `q5` int(20) NOT NULL DEFAULT '0',
  `q6` int(20) NOT NULL DEFAULT '0',
  `q7` int(20) NOT NULL DEFAULT '0',
  `q8` int(20) NOT NULL DEFAULT '0',
  `q9` int(20) NOT NULL DEFAULT '0',
  `q10` int(20) NOT NULL DEFAULT '0',
  `a1` varchar(100) NOT NULL DEFAULT 'none',
  `a2` varchar(100) NOT NULL DEFAULT 'none',
  `a3` varchar(100) NOT NULL DEFAULT 'none',
  `a4` varchar(100) NOT NULL DEFAULT 'none',
  `a5` varchar(100) NOT NULL DEFAULT 'none',
  `a6` varchar(100) NOT NULL DEFAULT 'none',
  `a7` varchar(100) NOT NULL DEFAULT 'none',
  `a8` varchar(100) NOT NULL DEFAULT 'none',
  `a9` varchar(100) NOT NULL DEFAULT 'none',
  `a10` varchar(100) NOT NULL DEFAULT 'none',
  `result` varchar(20) NOT NULL DEFAULT 'Not calculated yet',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE IF NOT EXISTS `hr` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr`
--

INSERT INTO `hr` (`username`, `password`) VALUES
('hr', 'hr');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `marks` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `username`, `marks`) VALUES
(1, 'q', 6),
(2, 'raj', 8),
(3, 'a', 5),
(4, 's', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mem_info`
--

CREATE TABLE IF NOT EXISTS `mem_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobno` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `test` int(11) NOT NULL DEFAULT '0',
  `tcount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `mem_info`
--

INSERT INTO `mem_info` (`id`, `name`, `middlename`, `lastname`, `age`, `gender`, `email`, `mobno`, `username`, `password`, `test`, `tcount`) VALUES
(1, 'q', 'q', 'q', '7', 'male', 'q', '5', 'q', 'q', 0, 0),
(2, 'a', 'a', 'a', '4', 'male', 'a', '4', 'a', 'a', 0, 0),
(3, 's', 's', 's', '77', 'male', 's@gmail.com', '9638527419', 's', 's', 0, 0),
(4, 'Raj', 'Karan', 'Patil', '22/5/1995', 'male', 'd.srcdocs6@gmail.com', '9673929266', 'raj', '1122', 0, 0),
(6, 'Amol', 'S', 'Patil', '31', 'male', 'insource.tech144@gmail.com', '9854321222', 'amol', '1234', 0, 0),
(7, 'shrushti', 'milind', 'bhingardive', '22', 'female', 'bhingardiveshrushti@gmail.com', '8149332361', 'shrush', 'shrush17', 0, 0),
(12, 'San', 'S', 'Patil', '43', 'male', 'santosh.insrc@gmail.com', '9876543211', 'san', '1122', 0, 0),
(15, 'San', 'S', 'Patil', '34', 'male', 'san.insrc@gmail.com', '9876543211', 'san', '123', 0, 0),
(16, 'samridhi', 'pp', 'deokar', '21', 'female', 'samdeokar97@gmail.com', '7709076859', 'samridhi', '1234', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `monster`
--

CREATE TABLE IF NOT EXISTS `monster` (
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `specialization` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `mobno` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `monster`
--

INSERT INTO `monster` (`name`, `location`, `specialization`, `experience`, `mobno`, `email`, `username`, `password`) VALUES
('a', 'a', '.net', '2', '9874563210', 'a@gmal.com', 'a', 'a'),
('s', 's', 'java', 'fresher', '9685321470', 's@gmail.com', 's', 's');

-- --------------------------------------------------------

--
-- Table structure for table `naukri`
--

CREATE TABLE IF NOT EXISTS `naukri` (
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `specialization` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `mobno` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `naukri`
--

INSERT INTO `naukri` (`name`, `location`, `specialization`, `experience`, `mobno`, `email`, `username`, `password`) VALUES
('a', 'a', 'java', 'fresher', '6', 'a', 'a', 'a'),
('Raj', 'Pune', 'java', '1', '9673929266', 'd.srcdocs6@gmail.com', 'raj', '1122'),
('Jay Patil', 'Pune', 'java', '2', '9083723833', 'santosh.insrc@gmail.com', 'jay', '1122'),
('Amol Patil', 'Nashik', 'java', '2', '9876543212', 'insource.tech144@gmail.com', 'amol', '4545'),
('samridhi deokar', 'pune', 'java', 'fresher', '7709076859', 'samdeokar97@gmail.com', 'sam', '123');

-- --------------------------------------------------------

--
-- Table structure for table `qtable`
--

CREATE TABLE IF NOT EXISTS `qtable` (
  `qno` int(20) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT NULL,
  `a` varchar(100) DEFAULT NULL,
  `b` varchar(100) DEFAULT NULL,
  `c` varchar(100) DEFAULT NULL,
  `d` varchar(100) DEFAULT NULL,
  `ans` varchar(500) DEFAULT NULL,
  `f` varchar(10) DEFAULT '0',
  `topic` varchar(20) NOT NULL DEFAULT 'Not Mentioned',
  `chapter_no` varchar(10) DEFAULT '0',
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `qtable`
--

INSERT INTO `qtable` (`qno`, `question`, `a`, `b`, `c`, `d`, `ans`, `f`, `topic`, `chapter_no`) VALUES
(1, 'what is java?', 'software', 'coffee', 'programming lang', 'programming lang and platform', 'programming lang and platform', '0', 'Java', '1'),
(2, 'Who is founder of Java?', 'James Gosling', 'Rasmus Lerdorf', 'Linus Torvalds', 'Microsoft', 'James Gosling', '0', 'Java', '1'),
(3, 'Which team started Java operations?', 'Red Team', 'Green Team', 'Yellow Team', 'Blue Team', 'Green Team', '0', 'Java', '1'),
(4, 'On which language Java syntax is based?', 'C', 'Java', 'PHP', 'C++', 'C++', '0', 'Java', '2'),
(5, 'Which feature is not present in Java?', 'Overloading', 'Binding', 'Overriding', 'explicit pointers', 'explicit pointers', '0', 'Java', '2'),
(6, 'Which feature is present in Java?', 'Automatic object collection', 'linker', 'removing unreferenced objects', 'removing referenced objects', 'removing unreferenced objects', '0', 'Java', '2'),
(7, 'Which platform Java provides?', 'Software based', 'Eclipse based', 'Object based', 'Linux based', 'Software based', '0', 'Java', '3'),
(8, 'Which is platform independent code that Java produces?', 'Byte code', 'Machine code', 'Psuedo code', 'Source code', 'Byte code', '0', 'Java', '3'),
(9, 'What is WORA?', 'Wait Or Read Attribute', 'Write Once Read Anywhere', 'Wait Once Read Anytime', 'Write On Reading Anything', 'Write Once Read Anywhere', '0', 'Java', '3'),
(10, 'Which program we cant write in Java?', 'Operator Overloading', 'Pointers Program', 'Socket Program', 'Networking Program', 'Pointers Program', '0', 'Java', '4'),
(11, 'Which methods are virtual by default?', 'static methods', 'non-static methods', 'final methods', 'virtual methods', 'non-static methods', '0', 'Java', '4'),
(12, 'Which unsigned right shift operator is supported by Java? ', '>>', '>>>', '<<', '<<<', '>>>', '0', 'Java', '4'),
(13, 'Which one of these lists contains only Java programming language keywords?', 'class, if, void, long, Int, continue', 'goto, instanceof, native, finally, default, throws', 'try, virtual, throw, final, volatile, transient', 'strictfp, constant, super, implements, do', 'goto, instanceof, native, finally, default, throws', '0', 'Java', ''),
(14, 'Which will legally declare, construct, and initialize an array?', 'int [] myList = {"1", "2", "3"};', 'int [] myList = (5, 8, 2);', 'int myList [] [] = {4,9,7,0};', 'int myList [] = {4, 3, 7};', 'int myList [] = {4, 3, 7};', '0', 'Java', ''),
(15, 'Which is a reserved word in the Java programming language?', 'method', 'native', 'subclasses', 'reference', 'native', '0', 'Java', ''),
(16, 'Which is a valid keyword in java?', 'interface', 'string', 'Float', 'unsigned', 'interface', '0', 'Java', ''),
(17, 'Which one of the following will declare an array and initialize it with five numbers?', 'Array a = new Array(5);', 'int [] a = {23,22,21,20,19};', 'int a [] = new int[5];', 'int [5] array;', 'int [] a = {23,22,21,20,19};', '0', 'Java', ''),
(18, 'Which is the valid declarations within an interface definition?', 'public double methoda();', 'public final double methoda();', 'static void methoda(double d1);', 'protected void methoda(double d1);', 'public double methoda();', '0', 'Java', ''),
(19, 'Which one is a valid declaration of a boolean?', 'boolean b1 = 0;', 'boolean b2 = ''false'';', 'boolean b3 = false;', 'boolean b4 = Boolean.false();', 'boolean b3 = false;', '0', 'Java', ''),
(20, 'Which is a valid declarations of a String?', 'String s1 = null;', 'String s2 = ''null'';', 'String s3 = (String) ''abc'';', 'String s4 = (String) ''\\ufeed'';', 'String s1 = null;', '0', 'Java', ''),
(21, 'What is the numerical range of a char?', '-128 to 127', '-(215) to (215) - 1', '0 to 32767', '0 to 65535', '0 to 65535', '0', 'Java', ''),
(22, 'Which interface does java.util.Hashtable implement?', 'Java.util.Map', 'Java.util.List', 'Java.util.HashTable', 'Java.util.Collection', 'Java.util.Map', '0', 'Java', ''),
(23, 'Which interface provides the capability to store objects using a key-value pair?', 'Java.util.Map', 'Java.util.Set', 'Java.util.List', 'Java.util.Collection', 'Java.util.Map', '0', 'Java', ''),
(24, 'Which collection class allows you to access its elements by associating a key with an element''s value, and provides synchronization?', 'java.util.SortedMap', 'java.util.TreeMap', 'java.util.TreeSet', 'java.util.Hashtable', 'java.util.Hashtable', '0', 'Java', ''),
(25, 'What is the name of the method used to start a thread execution?', 'init();', 'start();', 'run();', 'resume();', 'start();', '0', 'Java', ''),
(26, 'Which of the following will directly stop the execution of a Thread?', 'wait()', 'notify()', 'notifyall()', 'exits synchronized code', 'wait()', '0', 'Java', ''),
(27, 'Which method must be defined by a class implementing the java.lang.Runnable interface?', 'void run()', 'public void run()', 'public void start()', 'void run(int priority)', 'public void run()', '0', 'Java', ''),
(28, 'Which will contain the body of the thread?', 'run();', 'start();', 'stop();', 'main();', 'run();', '0', 'Java', ''),
(29, 'Which method registers a thread in a thread scheduler?', 'run();', 'construct();', 'start();', 'register();', 'start();', '0', 'Java', ''),
(30, 'Which class or interface defines the wait(), notify(),and notifyAll() methods?', 'Object', 'Thread', 'Runnable', 'Class', 'Object', '0', 'Java', ''),
(31, 'The DBMS acts as an interface between what two components of an enterprise-class database system?', 'Database application and the database', 'Data and the database', 'The user and the database application', 'Database application and SQL', 'Database application and the database', '0', 'Java', ''),
(32, 'For which type of development PHP language is getting used?', 'Desktop application development', 'Database development', 'Networking development', 'Web development', 'Web development', '0', 'PHP', '1'),
(33, 'For which type of web applications PHP is mostly used?', 'control-driven web applications', 'user-driven web applications', 'data-driven web applications', 'system-driven web applications', 'data-driven web applications', '0', 'PHP', '1'),
(34, 'What PHP stands for?', 'HTTP Protocol ', 'Hibernate Preprocessor', 'Hypertext Preprocessor', 'Poly Hypertext Processor', 'Hypertext Preprocessor', '0', 'PHP', '1'),
(35, 'Which is the latest PHP engine version?', '5.1', '6.1', '5.0', '6.0', '5.0', '0', 'PHP', '2'),
(36, 'Which feature is used in new PHP engine?', 'optimized memory manager', 'virtual indexing', 'lighter language', 'auto scaling', 'optimized memory manager', '0', 'PHP', '2'),
(37, 'Which feature is supported by PHP?', 'Object oriented programming', 'Application level programming', 'portability', 'cross-platform development', 'cross-platform development', '0', 'PHP', '2'),
(38, 'Which operator is used for single line comment in PHP?', '<', '<?', '#', '?/', '#', '0', 'PHP', '3'),
(39, 'Which operator is used for multiline comment in PHP?', '<?..?>', '?/../?', '/*..*/', '//..//', '/*..*/', '0', 'PHP', '3'),
(40, 'Which is the delimiters for PHP syntax?', '<?..?>', '<?php..?>', '<php..>', '</php../>', '<?php..?>', '0', 'PHP', '3'),
(41, 'What is variable in PHP?', 'name of the memory location', 'name of value', 'memory space', 'memory address', 'name of the memory location', '0', 'PHP', '4'),
(42, 'Which sign in PHP used to start variable declaration?', '$', '#', '?', '_', '$', '0', 'PHP', '4'),
(43, 'Which characters a variable name can contain?', '(A-z, 0-9, -, . and _ )', '(A-z, 0-9, @ and _ )', '(A-z, 0-9, and _ )', '(A-z, 0-9, |, and _ )', '(A-z, 0-9, and _ )', '0', 'PHP', '4');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stdid` varchar(50) NOT NULL DEFAULT '0',
  `marks` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `stdid`, `marks`) VALUES
(1, '4', '2'),
(2, '7', '3'),
(3, '10', '3'),
(4, '10', '8'),
(5, '18', '0'),
(6, '18', '10');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE IF NOT EXISTS `resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `skills` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `attribute` varchar(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `username`, `skills`, `experience`, `location`, `salary`, `website`, `filename`, `email`, `attribute`) VALUES
(11, 'jay', '', '', '', '', 'Naukri.com', 'JD Resume.txt', 'santosh.insrc@gmail.com', 'cc5b7ad4aa71e6914e7b6db141e71ffb'),
(14, 'amol', '', '', '', '', 'Naukri.com', 'ResumeNew.txt', 'insource.tech144@gmail.com', 'b4003fd6e3021fd3f8ac6a832d99a723'),
(15, 'amol', '', '', '', '', 'Naukri.com', 'Data.txt', 'san.insrc@gmail.com', 'c95c54191c0c26fac322548d08988fea'),
(16, 'sam', '', '', '', '', 'Naukri.com', 'ResumeNew.txt', 'samdeokar97@gmail.com', 'b4003fd6e3021fd3f8ac6a832d99a723');

-- --------------------------------------------------------

--
-- Table structure for table `resumefile`
--

CREATE TABLE IF NOT EXISTS `resumefile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `portal` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `attribute` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `resumefile`
--

INSERT INTO `resumefile` (`id`, `username`, `filename`, `portal`, `email`, `attribute`) VALUES
(75, 'amol', 'ResumeNew.txt', 'Naukri.com', 'insource.tech144@gmail.com', 'b4003fd6e3021fd3f8ac6a832d99a723'),
(76, 'sam', 'ResumeNew.txt', 'Naukri.com', 'samdeokar97@gmail.com', 'b4003fd6e3021fd3f8ac6a832d99a723');

-- --------------------------------------------------------

--
-- Table structure for table `scheduletest`
--

CREATE TABLE IF NOT EXISTS `scheduletest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(200) NOT NULL DEFAULT '0',
  `duration` varchar(200) NOT NULL DEFAULT '0',
  `date1` varchar(200) NOT NULL DEFAULT '0',
  `time1` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `scheduletest`
--

INSERT INTO `scheduletest` (`id`, `course`, `duration`, `date1`, `time1`) VALUES
(1, 'java', '1', '2017-12-16', '14:00'),
(2, 'java', '1', '2017-12-18', '17:48'),
(3, 'c', 'c', '2017-12-23', '18:26'),
(4, 'C', '2', '2018-03-03', '14:14'),
(5, 'java', '3', '2019-04-03', '11:05');

-- --------------------------------------------------------

--
-- Table structure for table `shine`
--

CREATE TABLE IF NOT EXISTS `shine` (
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `specialization` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `mobno` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shine`
--

INSERT INTO `shine` (`name`, `location`, `specialization`, `experience`, `mobno`, `email`, `username`, `password`) VALUES
('Jay Patil', 'Shivajinagar, Pune', 'java', '1', '9876543211', 'santosh.insrc@gmail.com', 'jay', '1122');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
