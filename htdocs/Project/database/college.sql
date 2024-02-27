-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 11:22 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `princ_id` int(11) NOT NULL,
  `Log_Id` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `contactno` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `utype` varchar(200) NOT NULL,
  `design` varchar(200) NOT NULL,
  `addrs` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`princ_id`, `Log_Id`, `name`, `contactno`, `email`, `password`, `date`, `utype`, `design`, `addrs`, `photo`) VALUES
(1, 'AKL0021542786003', 'Arjun', '9847011213', 'college@gmail.com', 'college', '2022-02-02', 'Admin', 'Administrator', 'PALAKKAD', 'Lighthouse.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chatm`
--

CREATE TABLE `chatm` (
  `cht_id` int(11) NOT NULL,
  `sender_id` text NOT NULL,
  `sname` text NOT NULL,
  `smessage` text NOT NULL,
  `sdatetime` text NOT NULL,
  `sphoto` text NOT NULL,
  `receiver_id` text NOT NULL,
  `rname` text NOT NULL,
  `rmessage` text NOT NULL,
  `rdatetime` text NOT NULL,
  `rphoto` text NOT NULL,
  `chtsr_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE `contest` (
  `cnt_id` int(11) NOT NULL,
  `Log_Id` text NOT NULL,
  `sname` varchar(200) NOT NULL,
  `qstn` varchar(200) NOT NULL,
  `opta` varchar(200) NOT NULL,
  `optb` varchar(200) NOT NULL,
  `optc` varchar(200) NOT NULL,
  `optd` varchar(200) NOT NULL,
  `answr` varchar(200) NOT NULL,
  `mrk` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `photo` text NOT NULL,
  `qno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contestattend`
--

CREATE TABLE `contestattend` (
  `cnt_id` int(11) NOT NULL,
  `Log_Id` text NOT NULL,
  `sname` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mrk` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `photo` text NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exm_id` int(11) NOT NULL,
  `Log_Id` text NOT NULL,
  `sname` varchar(200) NOT NULL,
  `deprt` varchar(200) NOT NULL,
  `semstr` varchar(200) NOT NULL,
  `qstn` varchar(200) NOT NULL,
  `opta` varchar(200) NOT NULL,
  `optb` varchar(200) NOT NULL,
  `optc` varchar(200) NOT NULL,
  `optd` varchar(200) NOT NULL,
  `answr` varchar(200) NOT NULL,
  `mrk` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `photo` text NOT NULL,
  `qno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exm_id`, `Log_Id`, `sname`, `deprt`, `semstr`, `qstn`, `opta`, `optb`, `optc`, `optd`, `answr`, `mrk`, `date`, `photo`, `qno`) VALUES
(1, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'WHICH OF THE FOLLOWING IS NOT A INPUT DEVICE', 'MOUSE', 'PRINTER', 'KEYBOARD', 'WEBCAM', 'PRINTER', '1', '2023-03-21', 'TABLE.jfif', '1'),
(2, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'WHICH STORAGE UNIT IS THE FASTEST', 'RAM', 'ROM', 'CACHE', 'REGISTER', 'CACHE', '1', '2023-03-21', 'TABLE.jfif', '2'),
(3, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'WHICH NUMBER SYSTEM HAS BASE 16', 'OCTAL', 'HEXADECIMAL', 'BINARY', 'DECIMAL', 'HEXADECIMAL', '1', '2023-03-21', 'TABLE.jfif', '3'),
(4, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'BASE OF OCTAL NUMBER SYSTEM IS', 'TWO', 'EIGHT', 'TEN', 'ZERO', 'EIGHT', '1', '2023-03-21', 'TABLE.jfif', '4'),
(5, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'WWW STANDS FOR', 'WORLD WIDE WEB', 'WORLD WEATHER WEB', 'WORLD WRAMTH WEB', 'WORLD WAYS WEB', 'WORLD WIDE WEB', '1', '2023-03-21', 'TABLE.jfif', '5'),
(6, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'b TAG STANDS FOR', 'BOLD', 'BREAK', 'BREAD', 'BAG', 'BOLD', '1', '2023-03-21', 'TABLE.jfif', '6'),
(7, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'WHICH OF THE FOLLWING ARE NOT BASIC FORMATTING TAGS', 'HEADING', 'PARAGARAPH', 'BOLD', 'ORDERED LIST', 'ORDERED LIST', '1', '2023-03-21', 'TABLE.jfif', '7'),
(8, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'WHICH OF THE FOLLOWING IS NOT A LIST', 'ORDERED LIST', 'UNORDERED LIST', 'DEFENITION LIST', 'UNION LIST', 'UNION LIST', '1', '2023-03-21', 'TABLE.jfif', '8'),
(9, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'CSS STANDS FOR', 'CASCADING STYLE SHEET', 'CASCADING STLYE SYSTEM', 'CASCADING SYSTEM SHEET', 'CASCADING STYLE SET', 'CASCADING STYLE SHHET', '1', '2023-03-21', 'TABLE.jfif', '9'),
(10, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'WHICH OF THE FOLLOWING IS NOT A FORM CONTROL', 'TEXT', 'PASSWORD', 'BUTTON', 'NUMBER', 'NUMBER', '1', '2023-03-21', 'TABLE.jfif', '10'),
(11, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'First', 'WHICH OF THE FOLLOWING IS NOT A DATATYPE', 'CHAR', 'INT', 'FLOAT', 'PASSWORD', 'PASSWORD', '1', '2023-03-21', 'binary.png', '1'),
(12, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'First', 'QUEUE FOLLOWS', 'LIFO', 'FIFO', 'SISO', 'NIMO', 'FIFO', '1', '2023-03-21', 'binary.png', '2'),
(13, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'First', 'STACK FOLLOWS', 'LIFO', 'FIFO', 'NISO', 'SISO', 'LIFO', '1', '2023-03-21', 'binary.png', '3'),
(14, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'Second', 'POP STANDS FOR', 'INSERTION', 'DELETION', 'SORTING', 'TRAVERSING', 'DELETION', '1', '2023-03-21', 'binary.png', '4'),
(15, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'Second', 'PUSH USED FOR', 'INSERTION', 'DELETION', 'SORTING', 'TRAVERSING', 'INSERTION', '1', '2023-03-21', 'binary.png', '5'),
(16, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'Third', 'IN QUEUE INSERTION TAKES THROUGH', 'REAR', 'FRONT', 'END', 'START', 'END', '1', '2023-03-21', 'binary.png', '6'),
(17, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'Third', 'IN STACK INSERTION TAKES PALCE THROUGH', 'REAR', 'FRONT', 'END', 'MIDDLE', 'FRONT', '1', '2023-03-21', 'binary.png', '7'),
(18, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'Third', 'WHICH OF THE FOLLOWING IS NOT A TYPE OF GRAPH', 'DIRECT', 'INDIRECT', 'WEIGHTED', 'LINEAR', 'LINEAR', '1', '2023-03-21', 'binary.png', '8'),
(19, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'Third', 'WHICH OF FOLLOWING IS  A TYPE OF QUEUE', 'CIRCULAR QUEUE', 'LINEAR QUEUE', 'MIDDLE QUEUE', 'END QUEUE', 'CIRCULAR QUEUE', '1', '2023-03-21', 'binary.png', '9'),
(20, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'Third', 'WHICH OF THE FOLLOWING IS NOT A SORT', 'QUICK SORT', 'BUBBLE SORT', 'SELECTION SORT', 'LINEAR SORT', 'LINEAR SORT', '1', '2023-03-21', 'binary.png', '10'),
(21, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'WHICH TRANSLATOR IS USED IN C', 'COMPLIER', 'INTERPRETER', 'ASSEMBLER', 'CONVERTOR', 'COMPLIER', '1', '2023-03-21', 'DATATYPE.png', '1'),
(22, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'HOW MUCH BYTES DOES FLOAT OCCUPY IN MEMORY ', 'FOUR', 'TWO', 'ONE', 'FIVE', 'FOUR', '1', '2023-03-21', 'DATATYPE.png', '2'),
(23, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'WHICH OF THE FOLLOWINGIS NOT AN OPERATOR ', 'ASSIGNMENT ', 'LOGICAL', 'BITWISE', 'JUMP', 'JUMP', '1', '2023-03-21', 'DATATYPE.png', '3'),
(24, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'WHICH OF THE FOLLOWING IS NOT A DECESION MAKING STATEMENT', 'IF ', 'IF ELSE', 'IF ELSE IF', 'IF ELSE ELSE ', 'IF ELSE ELSE', '1', '2023-03-21', 'DATATYPE.png', '5'),
(25, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'WHICH OF THE FOLLOWING IS NOT A LOOPING STAEMENT', 'WHILE LOOP', 'DO WHILE', 'WHILE', 'IF', 'IF', '1', '2023-03-21', 'DATATYPE.png', '5'),
(26, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'WHICH OF THE FOLLOWING IS NOT TYPE OF ARRAY', 'ONE DIMENSIONAL', 'TWO DIMENSIONAL', 'MULTI DIMENSIONAL', 'FOUR DIMENSIONAL', 'FOUR DIMENSIONAL', '1', '2023-03-21', 'DATATYPE.png', '6'),
(27, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'PROBLEM SOLVING USING C  S WHICH DATA TYPE', 'STRING', 'INT', 'FLOAT', 'DOUBLE', 'STRING', '1', '2023-03-21', 'DATATYPE.png', '7'),
(28, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'WHAT DOES A POINTER HOLD', 'ADDRESS', 'VALUE', 'VARIABLE', 'STRING', 'ADDRESS', '1', '2023-03-21', 'DATATYPE.png', '8'),
(29, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'FUNCTON CANNOT  BE CALLED USING', 'WITH ARGUMENTS', 'ARGUMENT LIST', 'STRING', 'INT', 'WITH ARGUMENTS', '1', '2023-03-21', 'DATATYPE.png', '8'),
(30, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'WHICH OF THE FOLLOWING IS ARE ARITHMETIC OPERATORS', 'ADDITION', 'DIVISION', 'SUBTRACTION', 'ALL OF THE ABOVE', 'ALL OF THE ABOVE', '1', '2023-03-21', 'DATATYPE.png', '9'),
(31, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'WHICH OF THE FOLLOWING ARE PRIMITIVE DATA TYPE', 'INT', 'CHAR', 'FLOAT', 'ALL OF THE ABOVE', 'ALL OF THE ABOVE', '1', '2023-03-21', 'DATATYPE.png', '10');

-- --------------------------------------------------------

--
-- Table structure for table `examattend`
--

CREATE TABLE `examattend` (
  `exmat_id` int(11) NOT NULL,
  `Log_Id` text NOT NULL,
  `sname` varchar(200) NOT NULL,
  `qstn` varchar(200) NOT NULL,
  `answr` varchar(200) NOT NULL,
  `mrk` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `qno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examattend`
--

INSERT INTO `examattend` (`exmat_id`, `Log_Id`, `sname`, `qstn`, `answr`, `mrk`, `date`, `qno`) VALUES
(1, 'STP4171236', 'COMPUTER FUNDAMENTALS AND HTML', 'WHICH OF THE FOLLOWING IS NOT A INPUT DEVICE', 'PRINTER', '1', '2023-03-21', '1'),
(2, 'STP4171236', 'COMPUTER FUNDAMENTALS AND HTML', 'WHICH STORAGE UNIT IS THE FASTEST', 'CACHE', '1', '2023-04-03', '2'),
(3, 'STP2416653', 'PROBLEM SOLVING USING C', 'WHICH TRANSLATOR IS USED IN C', 'COMPLIER', '1', '2023-04-05', '1'),
(4, 'STP2416653', 'PROBLEM SOLVING USING C', 'HOW MUCH BYTES DOES FLOAT OCCUPY IN MEMORY ', 'FOUR', '1', '2023-04-05', '2'),
(5, 'STP2416653', 'DATA STRUCTURE USING C', 'WHICH OF THE FOLLOWING IS NOT A DATATYPE', 'PASSWORD', '1', '2023-04-05', '1'),
(6, 'STP2416653', 'DATA STRUCTURE USING C', 'QUEUE FOLLOWS', 'FIFO', '1', '2023-04-05', '2'),
(7, 'STP2416653', 'DATA STRUCTURE USING C', 'STACK FOLLOWS', 'LIFO', '1', '2023-04-05', '3'),
(8, 'STP2416653', 'COMPUTER FUNDAMENTALS AND HTML', 'WHICH OF THE FOLLOWING IS NOT A INPUT DEVICE', 'PRINTER', '1', '2023-04-05', '1'),
(9, 'STP2416653', 'COMPUTER FUNDAMENTALS AND HTML', 'WHICH STORAGE UNIT IS THE FASTEST', 'CACHE', '1', '2023-04-05', '2'),
(10, 'STP2416653', 'COMPUTER FUNDAMENTALS AND HTML', 'WHICH NUMBER SYSTEM HAS BASE 16', 'HEXADECIMAL', '1', '2023-04-05', '3'),
(11, 'STP2416653', 'COMPUTER FUNDAMENTALS AND HTML', 'BASE OF OCTAL NUMBER SYSTEM IS', 'EIGHT', '1', '2023-04-05', '4'),
(12, 'STP2416653', 'COMPUTER FUNDAMENTALS AND HTML', 'WWW STANDS FOR', 'WORLD WIDE WEB', '1', '2023-04-05', '5'),
(13, 'STP2416653', 'COMPUTER FUNDAMENTALS AND HTML', 'b TAG STANDS FOR', 'BOLD', '1', '2023-04-05', '6'),
(14, 'STP4171236', 'COMPUTER FUNDAMENTALS AND HTML', 'WHICH NUMBER SYSTEM HAS BASE 16', 'HEXADECIMAL', '1', '2023-04-19', '3'),
(15, 'STP4171236', 'DATA STRUCTURE USING C', 'WHICH OF THE FOLLOWING IS NOT A DATATYPE', 'PASSWORD', '1', '2023-04-19', '1'),
(16, 'STP4171236', 'DATA STRUCTURE USING C', 'QUEUE FOLLOWS', 'FIFO', '1', '2023-04-19', '2'),
(17, 'STP4171236', 'COMPUTER FUNDAMENTALS AND HTML', 'BASE OF OCTAL NUMBER SYSTEM IS', 'EIGHT', '1', '2023-04-26', '4'),
(18, 'STP4171236', 'DATA STRUCTURE USING C', 'STACK FOLLOWS', 'LIFO', '1', '2023-04-26', '3'),
(19, 'STP4171236', 'DATA STRUCTURE USING C', 'POP STANDS FOR', 'DELETION', '1', '2023-04-26', '4'),
(20, 'STP4171236', 'DATA STRUCTURE USING C', 'PUSH USED FOR', 'INSERTION', '1', '2023-04-26', '5'),
(21, 'STP4171236', 'PROBLEM SOLVING USING C', 'WHICH TRANSLATOR IS USED IN C', 'COMPLIER', '1', '2023-04-26', '1');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `msg_id` int(11) NOT NULL,
  `Log_Id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subjct` varchar(200) NOT NULL,
  `descp` text NOT NULL,
  `date` date NOT NULL,
  `reply` text NOT NULL,
  `rdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `usr_id` int(11) NOT NULL,
  `Log_Id` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `cntno` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `photo` text NOT NULL,
  `addr` text NOT NULL,
  `password` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `utype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`usr_id`, `Log_Id`, `name`, `sex`, `age`, `cntno`, `email`, `photo`, `addr`, `password`, `date`, `utype`) VALUES
(1, 'STP4171236', 'ARJUN', '', 21, '9447675234', 'TPARJUN12@GMAIL.COM', 'download.jfif', 'NN Nivas Kottayi', 'Arjun@2002', '2023-03-21', 'User'),
(2, 'STP2416653', 'fazil', '', 0, '6282805240', 'fazilh922@gmail.com', '', '', '123abc', '2023-04-05', 'User'),
(3, 'STP5492622', 'Ambro', '', 0, '9200424384', 'minnalambro@gmail.com', '', '', 'Ambrp@2003', '2023-04-19', 'User'),
(4, 'STP5904590', 'Akshay', '', 0, '9447675231', 'sabariachu12@gmail.com', '', '', 'Akshay@2003', '2023-04-19', 'User'),
(5, 'STP4704189', 'Sutharya', '', 0, '9447675236', 'sutharya12@gmail.com', '', '', 'Sutharya@2003', '2023-04-19', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `pst_id` int(11) NOT NULL,
  `Log_Id` text NOT NULL,
  `sname` varchar(200) NOT NULL,
  `deprt` varchar(200) NOT NULL,
  `semstr` varchar(200) NOT NULL,
  `mdule` varchar(200) NOT NULL,
  `photo` text NOT NULL,
  `date` text NOT NULL,
  `descp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`pst_id`, `Log_Id`, `sname`, `deprt`, `semstr`, `mdule`, `photo`, `date`, `descp`) VALUES
(1, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'First', 'Untitled-drawing-4-4.png', '2023-03-20', '<p><span style=\"font-size: medium;\"><strong>Concepts of Hardware and Software Computer Hardware</strong></span></p>\r\n<p><span style=\"font-size: small;\">The term hardware refers to mechanical device that makes up computer. Computer Hardware is any part of the computer that we can touch these parts. Computer hardware consists of interconnected electronic devices that we can use to control computer&rsquo;s operation, input and output. Examples of hardware are CPU, keyboard, mouse, hard disk, etc. </span></p>\r\n<p><span style=\"font-size: small;\">Computer Software</span></p>\r\n<p><span style=\"font-size: small;\"> Software is a collection of instructions, procedures, documentation that performs different tasks on a computer system. We can say also Computer Software is a programming code executed on a computer processor. The code can be machine-level code or the code written for an operating system. Examples of software are Ms Word, Excel, Power Point, Google Chrome, Photoshop, MySQL etc.</span></p>\r\n<p><span style=\"font-size: small;\">1) System Software System software operates directly on hardware devices of computer. It provides a platform to run an application. It provides and supports user functionality. Examples of system software include operating systems such as Windows, Linux, UNIX, etc. </span></p>\r\n<p><span style=\"font-size: small;\">2) Application Software An application software is designed for benefit of users to perform one or more tasks. Examples of application software include Microsoft Word, Excel, PowerPoint, Oracle, etc.</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"font-size: small;\">Computer Languages The user of a computer must be able to communicate with it. That means, he must be able to give the computer commands and understand the output that the computer generates. This is possible due to the invention of computer languages. </span></p>\r\n<p><span style=\"font-size: small;\">1. Low Level Languages The main function of low level languages is to interact with the hardware of the computer. They help in operating, syncing and managing all the hardware and system components of the computer. Machine Language: This is one of the most basic low level languages. The language was first developed to interact with the first generation computers. It is written in binary code or machine code, which means it basically comprises of only two digits &ndash; 1 and 0.</span></p>\r\n<p><span style=\"font-size: small;\">Assembly Language: This is the second generation programming language. It is a development on the machine language, where instead of using only numbers, we use English words, names, and symbols. It is the most basic computer language necessary for any processor.</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"font-size: small;\">2] High Level Language The important feature about such high level languages is that they allow the programmer to write programs for all types of computers and systems. Every instruction in high level language is converted to machine language for the computer to comprehend</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"font-size: small;\">Language Translators A translator is a programming language processor that converts a computer program from one language to another. It takes a program written in source code and converts it into machine code. It discovers and identifies the error during translation</span></p>\r\n<p><span style=\"font-size: small;\">1) Compiler A compiler is a translator used to convert high-level programming language to low-level programming language. It converts the whole program in one session and reports errors detected after the conversion. Compiler takes time to do its work as it translates high-level code to lower-level code all at once and then saves it to memory. A compiler is processor-dependent and platform-dependent. But it has been addressed by a special compiler, a cross-compiler and a source-to-source compiler.&nbsp; Microsoft Visual Studio, GCC, COBOL</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: small;\">2) Interpreter Just like a compiler, is a translator used to convert high-level programming language to low-level programming language. It converts the program one at a time and reports errors detected at once, while doing the conversion. With this, it is easier to detect errors than in a compiler. An interpreter is faster than a compiler as it immediately executes the code upon reading the code.It is often used as a debugging tool for software development as it can execute a single line of code at a time.An interpreter is also more portable than a compiler as it is not processordependent, you can work between hardware architectures.&nbsp; OCaml,LISP,Python</span></p>\r\n<p><span style=\"font-size: small;\">3) Assembler An assembler is is a translator used to translate assembly language to machine language. It is like a compiler for the assembly language but interactive like an interpreter. Assembly language is difficult to understand as it is a lowlevel programming language. An assembler translates a low-level language, an assembly language to an even lowerlevel language, which is the machine code. The machine code can be directly understood by the CPU.</span></p>\r\n<p><span style=\"font-size: small;\">Von Neumann Model: Von-Neumann proposed his computer architecture design in 1945 which was later known as Von-Neumann Architecture. It consisted of a Control Unit, Arithmetic, and Logical Memory Unit (ALU), Registers and Inputs/Outputs. On Neumann architecture is based on the stored-program computer concept, where instruction data and program data are stored in the same memory. This design is still used in most computers produced today. A Von Neumann-based computer: o Uses a single processor o Uses one memory for both instructions and data. o Executes programs following the fetch-decode-execute cycle Central Processing Unit The part of the Computer that performs the bulk of data processing operations is called the Central Processing Unit and is referred to as the CPU. The Central Processing Unit can also be defined as an electric circuit responsible for executing the instructions of a computer program. The CPU performs a variety of functions dictated by the type of instructions that are incorporated in the computer. The major components of CPU are Arithmetic and Logic Unit (ALU), Control Unit (CU) and a variety of registers. Arithmetic and Logic Unit (ALU) The Arithmetic and Logic Unit (ALU) performs the required micro-operations for executing the instructions. In simple words, ALU allows arithmetic (add, subtract, etc.) and logic (AND, OR, NOT, etc.) operations to be carried out. Control Unit The Control Unit of a computer system controls the operations of components like ALU, memory and input/output devices.The Control Unit consists of a program counter that contains the address of the instructions to be fetched and an instruction register into which instructions are fetched from memory for execution. Registers Registers refer to high-speed storage areas in the CPU. The data processed by the CPU are fetched from the registers. Following is the list of registers that plays a crucial role in data processing. MAR (Memory Address Register)-This register holds the memory location of the data that needs to be accessed. MDR (Memory Data Register)-This register holds the data that is being transferred to or from memory. AC (Accumulator)-This register holds the intermediate arithmetic and logic results. PC (Program Counter)-This register contains the address of the next instruction to be executed. CIR (Current Instruction Register)-This register contains the current instruction during processing. Buses Buses are the means by which information is shared between the registers in a multiple-register configuration system.A bus structure consists of a set of common lines, one for each bit of a register, through which binary information is transferred one at a time. Control signals determine which register is selected by the bus during each particular register transfer. Address Bus-Address Bus carries the address of data (but not the data) between the processor and the memory. Data Bus-Data Bus carries data between the processor, the memory unit and the input/output devices. Control Bus-Control Bus carries signals/commands from the CPU. Memory Unit A memory unit is a collection of storage cells together with associated circuits needed to transfer information in and out of the storage. The memory stores binary information in groups of bits called words. The internal structure of a memory unit is specified by the number of words it contains and the number of bits in each word. </span></p>\r\n<p><span style=\"font-size: small;\">A memory unit is the collection of storage units or devices together. The memory unit stores the binary information in the form of bits. Generally, memory/storage is classified into 2 categories:&nbsp;</span></p>\r\n<p><span style=\"font-size: small;\"> Volatile Memory: This loses its data, when power is switched off.&nbsp;</span></p>\r\n<p><span style=\"font-size: small;\"> Non-Volatile Memory: This is a permanent storage and does not lose any data when power is switched off.</span></p>\r\n<p><span style=\"font-size: small;\">CPU Registers : Registers are a type of computer memory used to quickly accept, store, and transfer data and instructions that are being used immediately by the CPU. The registers used by the CPU are often termed as Processor registers.</span></p>\r\n<p><span style=\"font-size: small;\">Cache Memory : The data or contents of the main memory that are used frequently by CPU are stored in the cache memory so that the processor can easily access that data in a shorter time. Whenever the CPU needs to access memory, it first checks the cache memory. If the data is not found in cache memory, then the CPU moves into the main memory</span></p>\r\n<p><span style=\"font-size: small;\">Secondary storage Devices Alternatively referred to as external memory, secondary memory, and auxiliary storage, a secondary storage device is a non-volatile device that holds data until it is deleted or overwritten. Hard Disk Drive : Hard disk drive is made up of a series of circular disks called platters arranged one over the other almost &frac12; inches apart around a spindle. Disks are made of non-magnetic material like aluminum alloy and coated with 10-20 nm of magnetic material</span></p>'),
(2, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'Second', 'download.jfif', '2023-03-20', '<p><span style=\"font-size: small;\">Number systems The language we use to communicate with each other is comprised of words and characters. We understand numbers, characters and words. But this type of data is not suitable for computer</span></p>\r\n<p><span style=\"font-size: small;\">Non-Positional Number Systems:</span></p>\r\n<p><span style=\"font-size: small;\"> Non-Positional Number System does not use digits for the representation instead it use symbols for the representation. Each symbol represents same value regardless of its position in number. To find the value one has to count the symbols present in the number. For example, the roman number system is a good example of the non-positional number system. 1-2 II-2 III-3 IV-4 &hellip;.. Positional Number Systems: Positional Number System uses digits for the representation. Only few symbols called digits. These symbols represent different values. These values depending on the position.</span>&nbsp;</p>\r\n<p><span style=\"font-size: small;\">Binary number system: The base is 2. We can use only two symbols (0, 1) to represent any number. Each digit is called a bit. A group of four bits (1101) is called a nibble and group of eight bits (11001010) is called a byte. The position of each digit in a binary number represents a specific power of the base (2) of the number system.</span></p>\r\n<p><span style=\"font-size: small;\">Decimal number: In our daily life we use decimal number system. It has base ten. Because there are 10 different Symbols (0,1,2,3,4,5,6,7,8,9 )in this system to represent any number. Each position of a digit represents a specific power of the base (10). </span></p>\r\n<p><span style=\"font-size: small;\">Octal number system: There are only eight symbols in this number system .0, 1,2,3,4,5,6,7 .The largest single digit is 7. Each position of a digit represents a specific power of the base (8). Since there are only 8 digits, 3 bits (23 = 8) are sufficient to represent any octal number in binary.</span></p>\r\n<p><span style=\"font-size: small;\">Hexadecimal number system: The base is 16 in this number system. First 10 digits are same digits of decimal number system(0,1,2,3,4,5,6,7,8,9). The remaining six digit denoted by symbols A,B,C,D,E,F represent decimal value 10,11,12,13,14,15 respectively. Each position of a digit represents a specific power of the base (16). Since there are only 16 digits, 4 bits (24 = 16) are sufficient to represent any hexadecimal number in binary</span></p>\r\n<p><span style=\"font-size: small;\">Unicode Unicode is a universal character encoding standard. This standard includes roughly 100000 characters to represent characters of different languages. While ASCII uses only 1 byte the Unicode uses 4 bytes to represent characters. Hence, it provides a very wide variety of encoding. It has three types namely UTF-8, UTF-16, UTF-32. Among them, UTF-8 is used mostly it is also the default encoding for many programming languages.</span></p>\r\n<p><span style=\"font-size: small;\">Gray code The reflected binary code or Gray code is an ordering of the binary numeral system such that two successive values differ in only one bit (binary digit). Gray codes are very useful in the normal sequence of binary numbers generated by the hardware that may cause an error or ambiguity during the transition from one number to the next. So, the Gray code can eliminate this problem easily since only one bit changes its value during any transition between two numbers</span></p>'),
(3, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'Third', 'flowchart-example.png', '', '<p>&nbsp;</p>\r\n<div class=\"wDYxhc\" lang=\"en-IN\" data-md=\"61\">\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QAA\"><span class=\"ILfuVd\" style=\"font-size: small;\" lang=\"en\"><span class=\"hgKElc\">Algorithms: their meaning in computer science. In Computer Science, an algorithm is&nbsp;a list set of instructions, used to solve problems or perform tasks, based on the understanding of available alternatives.</span></span></div>\r\n<div><span class=\"ILfuVd\" style=\"font-size: small;\" lang=\"en\"><span class=\"hgKElc\"><br /></span></span></div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"g\">\r\n<div lang=\"en\" data-hveid=\"CAgQAA\" data-ved=\"2ahUKEwiyyYzsker9AhUEVmwGHYISCiAQFSgAegQICBAA\">&nbsp;<span style=\"font-size: small;\">A flowchart is&nbsp;a diagram that shows an overview of a program&nbsp;. Flowcharts normally use standard symbols to represent the different types of instructions . These symbols are used to construct the flowchart and show the step-by-step solution to the problem. Flowcharts are sometimes known as flow diagrams.</span></div>\r\n</div>\r\n<p><span style=\"font-size: small;\"><br /></span></p>'),
(4, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'Fourth', 'download (1).jfif', '', '<p><span style=\"font-size: medium;\"><strong>World Wide Web</strong></span></p>\r\n<p><span style=\"font-size: small;\">World Wide Web, which is also known as a Web, is a collection of websites or web pages stored in web servers and connected to local computers through the internet. These websites contain text pages, digital images, audios, videos, etc. Users can access the content of these sites from any part of the world over the internet using their devices such as computers, laptops, cell phones, etc. The WWW, along with internet, enables the retrieval and display of text and media to your device.</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"font-size: small;\">Hyper Text Transfer Protocol (HTTP) is an application layer protocol which enables WWW to work smoothly and effectively. It is based on a client-server model. The client is a web browser which communicates with the web server which hosts the website. This protocol defines how messages are formatted and transmitted and what actions the Web Server and browser should take in response to different commands. When you enter a URL in the browser, an HTTP command is sent to the Web server, and it transmits the requested Web Page.</span></p>\r\n<p><span style=\"font-size: small;\">A browser is a software program that is used to explore, retrieve, and display the information available on the World Wide Web. This information may be in the form of pictures, web pages, videos, and other files that all are connected via hyperlinks and categorized with the help of URLs (Uniform Resource Identifiers). For example, you are viewing this page by using a browser. A browser is a client program as it runs on a user computer or mobile device and contacts the webserver for the information requested by the user. The web server sends the data back to the browser that displays the results on internet supported devices. On behalf of the users, the browser sends requests to web servers all over the internet by using HTTP</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"font-size: small;\">A uniform resource locator is the address of a resource on the internet or the World Wide Web. It is also known as a web address or uniform resource identifier (URI). For example, https: www.javatpoint.com, which is the URL or web address for the javatpoint website. A URL represents the address of a resource, including the protocol used to access it.</span></p>\r\n<p><span style=\"text-decoration: underline;\"><strong><span style=\"font-size: medium;\">SERVER</span></strong></span></p>\r\n<p><span style=\"font-size: small;\"> A server commonly refers to a computer program that receives and responds to requests made over a network. It receives the request for a web document from the client and sends the requested information to the client computer on the Internet. A device can be both a client and a server at the same time, as an individual system has the ability to provide resources and use them from another system in one go. There are different types of servers, including mail servers, virtual servers, and web servers.</span></p>\r\n<p><span style=\"font-size: small;\">HTML 5 HTML5 is the fifth revision of HTML, a markup language to present and structure web document. Though not officially released, developers have started using HTML5 and creating excellent web applications. </span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"text-decoration: underline; font-size: medium;\"><strong>HTML Tags </strong></span></p>\r\n<p><span style=\"font-size: small;\">HTML tags are like keywords which defines that how web browser will format and display the content. When a web browser reads an HTML document, browser reads it from top to bottom and left to right. HTML tags are used to create HTML documents and render their properties</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"font-size: small;\">Heading Tag A HTML heading or HTML h tag can be defined as a title or a subtitle which you want to display on the webpage. When you place the text within the heading tags</span></p>\r\n<h1>&nbsp;</h1>'),
(5, 'AKL0021542786003', 'COMPUTER FUNDAMENTALS AND HTML', 'BSc CS', 'First', 'Fifth', 'TABLE.jfif', '', '<p><span style=\"font-size: medium;\"><strong>HTML Table width</strong></span></p>\r\n<p><span style=\"font-size: small;\">We can specify the HTML table width using the CSS width property. It can be specify in pixels or percentage.We can adjust our table width as per our requirement. Following is the example to display table with width</span></p>\r\n<p><span style=\"font-size: small;\">HTML Table with colspan :If you want to make a cell span more than one column, you can use the colspan attribute.It will divide one cell/row into multiple columns, and the number of columns depend on the value of colspan attribute</span></p>\r\n<p><span style=\"font-size: small;\">HTML Table with rowspan :If you want to make a cell span more than one row, you can use the rowspan attribute.It will divide a cell into multiple rows. The number of divided rows will depend on rowspan values.</span></p>\r\n<p><span style=\"font-size: small;\">An HTML form is a section of a document which contains controls such as text fields, password fields, checkboxes, radio buttons, submit button, menus etc.An HTML form facilitates the user to enter data that is to be sent to the server for processing such as name, email address, password, phone number, etc. .</span></p>\r\n<p><span style=\"font-size: small;\">HTML TextField Control :The type=\"text\" attribute of input tag creates textfield control also known as single line textfield control. The name attribute is optional, but it is required for the server side component such as JSP, ASP, PHP etc</span></p>\r\n<p><span style=\"font-size: small;\">Label Tag in Form :It is considered better to have label in form. As it makes the code parser/browser/user friendly.If you click on the label tag, it will focus on the text control. To do so, you need to have for attribute in label tag that must be same as id attribute of input tag.</span></p>\r\n<p><span style=\"font-size: small;\">Radio Button Control :The radio button is used to select one option from multiple options. It is used for selection of gender, quiz questions etc.If you use one name for all the radio buttons, only one radio button can be selected at a time.Using radio buttons for multiple options, you can only choose a single option at a time.</span></p>\r\n<p><span style=\"font-size: small;\">Select Boxes in HTML Forms : Select boxes are used to allow users to select one or more than one option from a pull-down list of options. Select boxes are created using two elements which are &ldquo;select&rdquo; and &ldquo;option&rdquo;.List items are defined within the select element.</span></p>\r\n<p><span style=\"font-size: small;\">HTML tag define the particular area within an HTML file where another HTML web page can be displayed.A tag is used with , and it divides a webpage into multiple sections or frames, and each frame can contain different web pages</span>.</p>\r\n<p><span style=\"text-decoration: underline; font-size: medium;\"><strong>Concept of CSS CSS</strong></span></p>\r\n<p><span style=\"font-size: small;\">(Cascading Style Sheets) is a stylesheet language used to design the webpage to make it attractive. The reason of using CSS is to simplify the process of making web pages presentable. CSS allows you to apply styles to web pages. More importantly, CSS enables you to do this independent of the HTML that makes up each web page.</span></p>\r\n<p><span style=\"font-size: small;\">CSS ID and Class The selectors in CSS are part of the CSS ruleset and used to select the content we want to style. Id and class both are the CSS element selectors and are used to identify an element based on its assigned name. CSS id and class selectors are the most used selectors in CSS.</span></p>'),
(6, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'Third', 'First', 'DS.png', '2023-03-20', '<p><span style=\"text-decoration: underline;\"><strong><span style=\"font-size: medium;\">Elementary Data Organization Data</span></strong></span></p>\r\n<p><span style=\"font-size: small;\">&nbsp;data can be defined as a representation of facts, concepts or instructions in a formalized manner suitable for communication, interpretation or processing by human or electronic machine. Data is represented with the help of characters like alphabets(A-Z , a-z), digits(0-9) or special character(+,- ,*,&amp;,? Etc.) . Data may be a single value or it may be a set of values, must be organized in a particular fashion.</span></p>\r\n<p><span style=\"font-size: small;\">Data Item:- A set of characters which are used together to represent a specific data element e.g. name of a student in a class is represented by the data item NAME.</span></p>\r\n<p><span style=\"font-size: small;\">Types of data items:- </span></p>\r\n<p><span style=\"font-size: small;\">1.</span><span style=\"font-size: small;\">Elementary data items:- these data items can not be further sub divided. For exp. SID </span></p>\r\n<p><span style=\"font-size: small;\">2. Group data items:- These data items can be further sub-divided into elementary data items. For example Date. Date may be divided into days, months and years</span></p>\r\n<p><span style=\"font-size: small;\">Record:- record is a collection of related data items e.g. a payroll record for an employee contains data fields such as name, age, qualification, sex, basic pay, DA, HRA, PF etc</span></p>\r\n<p><span style=\"font-size: small;\">File:- File is a collection of logically related records e.g. a payroll file might consist of the employee pay records for a company.</span></p>\r\n<p><span style=\"font-size: small;\">Data Structure is a representation of the logical relationship existing between individual elements of data.</span></p>\r\n<p><span style=\"font-size: small;\">Primitive Data Structure :- The data structure that are atomic or indivisible are called primitive. Example are integer, real, float, Boolean and characters. Non-Primitive data structure :- The data structure that are not atomic are called non primitive or composite. Examples are records, arrays and strings. These are more sophisticated. The non primitive data structures emphasize on structuring f a group of homogenous or heterogeneous data items. </span></p>\r\n<p><span style=\"font-size: small;\">Arrays:- An array is defined as a set of finite number of homogenous elements or data items. It means an array can contain one type of data only, either all integers, all floating point numbers or all characters</span></p>\r\n<p><span style=\"font-size: small;\">Lists:- A list can be defined as a collection of variable number of data items. List are the most commonly used non-primitive data structures. An element of list must contain at least two fields, one for storing data or information and other for storing address of next element</span></p>\r\n<p><span style=\"font-size: small;\">Stack :- A stack is also an ordered collection of elements like array but it has a special feature that deletion and insertion of elements can be done only from one end, called the top of the stack</span></p>\r\n<p><span style=\"font-size: small;\">Queue :- Queues are first in first out type of data structures. In a queue new elements are added to the queue from one end called rear end and the elements are always removed from other end called the front end.</span></p>\r\n<p><span style=\"font-size: small;\">Trees:- A tree can be defined as finite set of data items. Tree is non-linear type of data structure in which data items are arranged in a sorted sequence. Trees represent the hierarchical relationship between various elements.</span></p>\r\n<p><span style=\"font-size: small;\">Graphs :- Graph is a mathematical non-linear data structure capable of representing many kinds of physical structures. It has found applications in diverse fields like geography, chemistry and engineering sciences</span></p>\r\n<p><span style=\"font-size: small;\">A memory management technique determines how memory should be allocated to the variables declared in the program. There are two technique for memory management.</span></p>'),
(7, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'Third', 'Second', 'DS.png', '2023-03-20', '<p><span style=\"text-decoration: underline; font-size: medium;\"><strong>Arrays</strong></span><span style=\"font-size: small;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: small;\">An array is defined as a set of finite number of homogenous elements or data items. It means an array can contain one type of data only, either all integers, all floating point numbers or all characters.</span></p>\r\n<p><span style=\"font-size: small;\">The individual element of an array can be accessed by specifying name of the array, followed by index or subscript inside square bracket. Exp. to access the 10th element statement will be a[9]. </span></p>\r\n<p><span style=\"font-size: small;\">The first element of the array has index zero[0]. So in an array of 10 elements the first array will be a[0] and last a[9] </span></p>\r\n<p><span style=\"font-size: small;\">The elements of array will always be stored in consecutive memory location.</span></p>\r\n<p><span style=\"font-size: small;\">The size of an array can be calculate by this equation (upper bound- lower bound )+1 (9-0)+1 </span></p>\r\n<p><span style=\"font-size: small;\">Arrays can always be read or written through loop. In case of one dimensional array it required one loop for reading and one loop for writing and in case of two dimensional array it requires two loops for each operation.</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"text-decoration: underline; font-size: medium;\"><strong>Operation performed on array</strong></span></p>\r\n<p><span style=\"font-size: small;\">1. Creation of an array </span></p>\r\n<p><span style=\"font-size: small;\">2. Traversing of an array </span></p>\r\n<p><span style=\"font-size: small;\">3. Insertion of new elements</span></p>\r\n<p><span style=\"font-size: small;\"> 4. Deletion of required elements </span></p>\r\n<p><span style=\"font-size: small;\">5. Modification of an element </span></p>\r\n<p><span style=\"font-size: small;\">6. Merging of arrays&nbsp;</span></p>\r\n<p><span style=\"text-decoration: underline; font-size: medium;\"><strong>Lists</strong></span></p>\r\n<p><span style=\"font-size: small;\">A list can be defined as a collection of variable number of data items. List are the most commonly used non-primitive data structures. An element of list must contain at least two fields, one for storing data or information and other for storing address of next element.</span></p>\r\n<p><span style=\"text-decoration: underline; font-size: medium;\"><strong>Linked Lists</strong></span></p>\r\n<p><span style=\"font-size: small;\"> A list can be defined as a collection of variable number of data items. List are the most commonly used non-primitive data structures. A linked list consisting of elements called nodes where each node is composed of two parts : information part and a link part or a pointer part.</span></p>\r\n<p><span style=\"font-size: small;\"><span style=\"font-size: medium;\"><strong>Advantages</strong></span>:</span></p>\r\n<p><span style=\"font-size: small;\"> 1. Linked lists are dynamic data structure. They can grow or shrink during the execution of a program</span></p>\r\n<p><span style=\"font-size: small;\"> 2. Efficient memory utilization . Memory is not pre allocated. Memory is allocated whenever it is required and it is deallocated when it is no longer required. </span></p>\r\n<p><span style=\"font-size: small;\">3. Insertion and deletions are easier and efficient. Linked lists provide flexibility in inserting a data item at a specified position and deletion of data from the given position</span></p>\r\n<p><span style=\"font-size: medium;\"><strong><span style=\"text-decoration: underline;\">Disadvantages</span></strong></span></p>\r\n<p><span style=\"font-size: small;\"> 1. More memory : if the number of fields are more, then more memory space is needed. </span></p>\r\n<p><span style=\"font-size: small;\">2. Access to an arbitrary data item is little cumbersome and also time consuming.</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"text-decoration: underline; font-size: medium;\"><strong>Singular linked list&nbsp;</strong></span></p>\r\n<p><span style=\"font-size: small;\"> It is a dynamic data structure.&nbsp;</span></p>\r\n<p><span style=\"font-size: small;\"> It may grow or shrink.&nbsp;</span></p>\r\n<p><span style=\"font-size: small;\"> Linked list can be created using structures,, pointers and dynamic memory allocation function malloc.&nbsp;</span></p>\r\n<p><span style=\"font-size: small;\"> We consider head as an external pointer. This helps in creating and accessing other nodes in the linked list.</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>'),
(8, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'Third', 'Third', 'queue.jfif', '', '<p><span style=\"font-size: small;\">A Stack is&nbsp;a linear data structure that follows the LIFO (Last-In-First-Out) principle. Stack has one end, whereas the Queue has two ends (front and rear). It contains only one pointer top pointer pointing to the topmost element of the stack.</span></p>\r\n<p><span style=\"font-size: small;\">Queue :- Queues are first in first out type of data structures. In a queue new elements are added to the queue from one end called rear end and the elements are always removed from other end called the front end.</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"font-size: small;\">Stack :- A stack is also an ordered collection of elements like array but it has a special feature that deletion and insertion of elements can be done only from one end, called the top of the stack.</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"font-size: small;\">The storage requirement of linked representation of a queue with n elements is o(n) while the time requirement for operations is o(1). In a linked queue,&nbsp;each node of the queue consists of two parts i.e. data part and the link part. Each element of the queue points to its immediate next element in the memory</span></p>\r\n<p><span style=\"font-size: small;\">Managing requests on a single shared resource such as CPU scheduling and disk scheduling.</span></p>\r\n<p><span style=\"font-size: small;\">Handling hardware or real-time systems interrupts.Handling website traffic.</span></p>\r\n<p><span style=\"font-size: small;\">Routers and switches in networking</span>.</p>\r\n<p><span style=\"font-size: small;\">Maintaining the playlist in media players.</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"font-size: medium;\"><br /></span></p>'),
(9, 'AKL0021542786003', 'DATA STRUCTURE USING C', 'BSc CS', 'Third', 'Fourth', 'binary.png', '2023-03-20', '<p><span style=\"text-decoration: underline;\"><span style=\"font-size: medium;\"><strong>Trees</strong></span></span></p>\r\n<p><span style=\"font-size: small;\">A tree can be defined as finite set of data items. Tree is non-linear type of data structure in which data items are arranged in a sorted sequence. Trees represent the hierarchical relationship between various elements.</span></p>\r\n<p><span style=\"font-size: small;\">There is a special data item at the top of hierarchy called the Root of the tree&nbsp;</span></p>\r\n<p><span style=\"font-size: small;\"> The remaining data items called the subtree.&nbsp;</span></p>\r\n<p><span style=\"font-size: small;\"> The tree always grows in length towards bottom in data structure.</span></p>\r\n<p><span style=\"font-size: small;\"><em>Binary Tree in C is a non-linear data structure in which the node is linked to two successor nodes, namely root, left and right.</em><span>&nbsp;Binary trees are a very popular concept in the C programming language. But, before we begin this tutorial, it is important to have a crystal clear understanding of pointers and linked lists in C.</span></span></p>\r\n<p><span style=\"font-size: small;\">In mathematical terminology, a tree is referred to as a finite and non-empty set of elements. It can also be regarded as an abstract model of a hierarchical structure that follows a parent-child relationship.</span></p>\r\n<p><span style=\"font-size: small;\">In programming terminology, a tree is nothing but a non-linear data structure that has multiple nodes, rather than just one like we saw in a&nbsp;linked list, stack, and queue.</span></p>\r\n<h4 class=\"fittexted_for_content_h4\"><span style=\"font-size: medium;\">Full binary tree</span></h4>\r\n<p><span style=\"font-size: small;\">A tree in which every node has two children except the external node (leaves) is called a full binary tree.</span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p id=\"introduction\"><span style=\"font-size: small;\"><strong>A binary tree is a tree data structure in which each parent node can have at most two children.&nbsp;</strong></span></p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>'),
(11, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'Second', 'operators.png', '2023-03-21', '<p><span style=\"text-decoration: underline;\"><span style=\"font-size: medium;\"><strong>Arithmetic Operators</strong></span></span></p>\r\n<p><span style=\"font-size: small;\">Relational Operators</span></p>\r\n<p><span style=\"font-size: small;\">Logical Operators</span></p>\r\n<p><span style=\"font-size: small;\">Bitwise Operator</span></p>\r\n<p><span style=\"font-size: small;\">Assignment operators</span></p>'),
(12, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'Third', 'IF.jfif', '2023-03-21', '<p><span style=\"font-size: medium;\">In every C program, three basic functions take place &ndash;&nbsp;accepting of data as input, the processing of data, and the generation of output. The acceptance of data refers to input and the presentation of data refers to the output. The C program accepts input from the keyboard and displays output on the screen.</span></p>\r\n<p><span style=\"font-size: medium;\"><br /></span></p>\r\n<div class=\"YTtZaf\">\r\n<div>\r\n<div class=\"ZjzLYc\">\r\n<div class=\"wDYxhc\" lang=\"en-IN\" data-md=\"401\" data-hveid=\"CA4QAA\" data-ved=\"2ahUKEwjcxMv12ez9AhWLcGwGHQWoCocQ6YgDegQIDhAA\">\r\n<div class=\"Ss2Faf zbA8Me qLYAZd q8U8x\"><span style=\"text-decoration: underline;\"><strong><span style=\"font-size: medium;\">Loop in C programming</span></strong></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"WC0BKe\">\r\n<div class=\"g wF4fFd JnwWd g-blk\" lang=\"en-IN\">\r\n<div class=\"dG2XIf XzTjhb\">\r\n<div class=\"c2xzTb\">\r\n<div class=\"xpdopen\">\r\n<div class=\"ifM9O\">\r\n<h2 class=\"Uo8X3b OhScic zsYMMe\"><strong><span style=\"font-size: small;\">What are Loops in C</span></strong></h2>\r\n<h2 class=\"Uo8X3b OhScic zsYMMe\"><strong><span style=\"font-size: small;\"> Loop is&nbsp;used to execute the block of code several times according to the condition given in the loop</span><span style=\"font-size: 10px;\"><span style=\"font-size: small;\">. It means it executes the same code multiple times so it saves code and also helps to traverse the elements of an array. There are 3 types of loop &ndash; while loop</span>.</span></strong></h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p><span style=\"font-size: medium;\"><br /></span></p>'),
(13, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'Fourth', 'array.png', '2023-03-21', '<p><span style=\"text-decoration: underline; font-size: medium;\"><strong><span>ARRAYS IN C</span></strong></span></p>\r\n<p><span style=\"font-size: small;\">In computer science, an array is&nbsp;a data structure consisting of a collection of elements (values or variables), each identified by at least one array index or key. An array is stored such that the position of each element can be computed from its index tuple by a mathematical formula.</span></p>\r\n<p><strong><span style=\"text-decoration: underline;\"><span style=\"font-size: medium;\">STRING IN C</span></span></strong></p>\r\n<p><span style=\"font-size: small;\"><span>String in C programming is a sequence of characters terminated with a null character &lsquo;\0&rsquo;. Strings are defined as an array of characters. The difference between a character array and a string is the string is terminated with a unique character&nbsp;</span></span></p>\r\n<p><span style=\"text-decoration: underline;\"><strong><span style=\"font-size: medium;\">FUNCTIONS</span></strong></span></p>\r\n<p><span style=\"font-size: small;\"><span><span>A function is&nbsp;</span><span>a relation between a set of inputs and a set of permissible outputs with the property that each input is related to exactly one output</span><span>. Let A &amp; B be any two non-empty sets; mapping from A to B will be a function only when every element in set A has one end, only one image in set B</span></span></span></p>\r\n<p><span style=\"font-size: small;\"><span><span><span>A union is&nbsp;</span><span>a special data type available in C that allows to store different data types in the same memory location</span><span>. You can define a union with many members, but only one member can contain a value at any given time. Unions provide an efficient way of using the same memory location for multiple-purpose</span></span></span></span></p>'),
(14, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'Fifth', 'POINTERS.jfif', '2023-03-21', '<div>\r\n<div class=\"dnXCYb\" data-hveid=\"CCwQAQ\">\r\n<div class=\"JlqpRe\"><span style=\"font-size: medium;\"><strong><span style=\"text-decoration: underline;\"><span class=\"JCzEY ZwRhJd\">What are the pointers in C</span></span></strong></span></div>\r\n<div class=\"aj35ze\">&nbsp;</div>\r\n<div class=\"L3Ezfd\" data-ved=\"2ahUKEwjOjobW2-z9AhViT2wGHVfiBmQQuk56BAgsEAI\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div id=\"_zHkZZM74IeKeseMP18SboAY_42\" class=\"bCOlv\" data-ved=\"2ahUKEwjOjobW2-z9AhViT2wGHVfiBmQQ7NUEegQILBAE\">\r\n<div class=\"IZE3Td\">\r\n<div class=\"t0bRye r2fjmd\" data-hveid=\"CCwQBQ\" data-ved=\"2ahUKEwjOjobW2-z9AhViT2wGHVfiBmQQu04oAHoECCwQBQ\">\r\n<div id=\"zHkZZM74IeKeseMP18SboAY__49\">\r\n<div class=\"wDYxhc\" data-md=\"61\">\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CDoQAA\"><span class=\"ILfuVd\" style=\"font-size: small;\" lang=\"en\"><span class=\"hgKElc\">A pointer is&nbsp;<strong>a variable that stores the memory address of another variable as its value</strong>. A pointer variable points to a data type (like int ) of the same type, and is created with the&nbsp; operator.</span></span></div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CDoQAA\"><span class=\"ILfuVd\" style=\"font-size: small;\" lang=\"en\"><span class=\"hgKElc\"><br /></span></span></div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CDoQAA\">\r\n<div>\r\n<div class=\"dnXCYb\" data-hveid=\"CD4QAQ\">\r\n<div class=\"JlqpRe\"><span style=\"text-decoration: underline; font-size: medium;\"><strong><span class=\"JCzEY ZwRhJd\">What are files in C programming</span></strong></span></div>\r\n<div class=\"aj35ze\">&nbsp;</div>\r\n<div class=\"L3Ezfd\" data-ved=\"2ahUKEwja7t_u2-z9AhU1RmwGHWSXBJIQuk56BAg-EAI\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div id=\"_AHoZZNruFbWMseMP5K6SkAk_36\" class=\"bCOlv\" data-ved=\"2ahUKEwja7t_u2-z9AhU1RmwGHWSXBJIQ7NUEegQIPhAE\">\r\n<div class=\"IZE3Td\">\r\n<div class=\"t0bRye r2fjmd\" data-hveid=\"CD4QBQ\" data-ved=\"2ahUKEwja7t_u2-z9AhU1RmwGHWSXBJIQu04oAHoECD4QBQ\">\r\n<div id=\"AHoZZNruFbWMseMP5K6SkAk__38\">\r\n<div class=\"wDYxhc\" data-md=\"61\">\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CDwQAA\"><span class=\"ILfuVd\" style=\"font-size: small;\" lang=\"en\"><span class=\"hgKElc\">A File is&nbsp;<strong>a collection of data stored in the secondary memory</strong>. So far data was entered into the programs through the keyboard. So Files are used for storing information that can be processed by the programs. Files are not only used for storing the data, programs are also stored in files.</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<span class=\"ILfuVd\" style=\"font-size: small;\" lang=\"en\"><span class=\"hgKElc\"><br /></span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(15, 'AKL0021542786003', 'PROBLEM SOLVING USING C', 'BSc CS', 'Second', 'First', 'DATATYPE.png', '', '<p><span style=\"font-size: small;\">C is&nbsp;a general-purpose programming language created by Dennis Ritchie at the Bell Laboratories in 1972. It is a very popular language, despite being old. C is strongly associated with UNIX, as it was developed to write the UNIX operating system.</span></p>\r\n<p><span style=\"font-size: small;\">program structure in c</span></p>\r\n<p><span style=\"font-size: small;\">Most programming languages have a structure, including the C language. A C program is divided into six sections:&nbsp;Documentation, Link, Definition, Global Declaration, Main() Function, and Subprograms. While the main section is compulsory, the rest are optional in the structure of the C program.</span></p>\r\n<p><span style=\"text-decoration: underline;\"><strong><span style=\"font-size: medium;\">IDE IN C</span></strong></span></p>\r\n<p><span style=\"font-size: small;\">C/C++ integrated development environments, or C/C++ IDEs, are software platforms that provide programmers and developers a comprehensive set of tools for software development in a single product, specifically in the C and/or C++ programming languages.</span></p>\r\n<p><span><span><span><span>DATA TYPES IN C</span></span></span></span></p>\r\n<p><strong><span style=\"text-decoration: underline;\"><span style=\"font-size: medium;\">CHAR</span></span></strong></p>\r\n<p><span style=\"font-size: small;\">In the C programming language, the character set refers to&nbsp;a set of all the valid characters that we can use in the source program for forming words, expressions, and numbers. The source character set contains all the characters that we want to use for the source program text.</span></p>\r\n<p><span style=\"font-size: medium;\"><strong>FLOAT</strong></span></p>\r\n<p><span style=\"font-size: small;\">Float is&nbsp;a datatype which is used to represent the floating point numbers. It is a 32-bit IEEE 754&nbsp;<span class=\"c5aZPb\" data-enable-toggle-animation=\"true\" data-extra-container-classes=\"ZLo7Eb\" data-hover-hide-delay=\"1000\" data-hover-open-delay=\"500\" data-send-open-event=\"true\" data-theme=\"0\" data-width=\"250\" data-ved=\"2ahUKEwjV7d6K2Oz9AhXoTWwGHc_aAZkQmpgGegQIDhAE\"><span class=\"JPfdse\" data-bubble-link=\"\" data-segment-text=\"single precision floating point\">single precision floating point</span></span>&nbsp;number ( 1-bit for the sign, 8-bit for exponent</span></p>\r\n<p><span style=\"font-size: small;\">int in c</span></p>\r\n<p><span style=\"font-size: small;\">int. Integers are&nbsp;whole numbers that can have both zero, positive and negative values but no decimal values. For example, 0 , -5 , 10. We can use int for declaring an integer variable.</span></p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`princ_id`);

--
-- Indexes for table `chatm`
--
ALTER TABLE `chatm`
  ADD PRIMARY KEY (`cht_id`);

--
-- Indexes for table `contest`
--
ALTER TABLE `contest`
  ADD PRIMARY KEY (`cnt_id`);

--
-- Indexes for table `contestattend`
--
ALTER TABLE `contestattend`
  ADD PRIMARY KEY (`cnt_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exm_id`);

--
-- Indexes for table `examattend`
--
ALTER TABLE `examattend`
  ADD PRIMARY KEY (`exmat_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`usr_id`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`pst_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `princ_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chatm`
--
ALTER TABLE `chatm`
  MODIFY `cht_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contest`
--
ALTER TABLE `contest`
  MODIFY `cnt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contestattend`
--
ALTER TABLE `contestattend`
  MODIFY `cnt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `examattend`
--
ALTER TABLE `examattend`
  MODIFY `exmat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_post`
--
ALTER TABLE `user_post`
  MODIFY `pst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
