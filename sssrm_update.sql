-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 07:51 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sssrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `replied` int(11) NOT NULL,
  `question_id` varchar(50) NOT NULL,
  `answer_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` bigint(11) NOT NULL,
  `like` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `replied`, `question_id`, `answer_detail`, `datetime`, `user_id`, `like`) VALUES
(1, 0, '1', 'asdfdsafsadfdsa', '2019-05-05 19:01:19', 1, 0),
(2, 0, '1', 'asdhjsakjdashjkd', '2019-05-07 05:45:17', 1, 0),
(3, 0, '1', 'asdjhasjkhdasjhkdasjkh', '2019-05-07 05:45:51', 1, 0),
(4, 0, '23', 'eeezzzzzzzz', '2019-05-07 05:56:42', 1, 0),
(5, 0, '1', 'heheheheheeheheheeyyyy', '2019-05-07 06:27:33', 16002396800, 0),
(6, 0, '22', 'fdzvczxcxz', '2019-05-07 06:29:42', 16002396800, 0),
(7, 0, '22', 'zxzxcxzcz', '2019-05-07 06:29:51', 16002396800, 0),
(8, 0, '1', 'asjsadhkjsadhjksdakjhsadkjhsadhkjasdkjhsdajhksdahjksdajhksdajhksdahkjsadhjksadkjh', '2019-05-07 06:42:03', 16002396800, 0),
(9, 0, '27', 'ahsgdashjgdashgjasdghjsadhgjsghjadghjsadghjasdashjgdghjasdghsjad', '2019-05-07 06:59:47', 16002396800, 0),
(10, 0, '25', 'asdjkhashjkdsahkjdjhk', '2019-05-07 07:03:32', 16002396800, 0),
(11, 0, '26', 'asdsadsadasdas', '2019-05-07 14:37:25', 16002396800, 0),
(12, 0, '25', 'asdasdasdas', '2019-05-07 14:42:55', 1, 0),
(13, 0, '1', 'asdasdasdsa', '2019-05-07 15:36:02', 16002396800, 0),
(14, 0, '1', 'asasasasa', '2019-05-07 15:42:33', 16002396800, 0),
(15, 0, '1', 'dsddsdsdsdsds', '2019-05-07 15:42:41', 16002396800, 0),
(16, 0, '1', 'asdhasdhjasdhjajkhdjkadsa', '2019-05-07 15:44:32', 1, 0),
(17, 0, '1', 'addasdaadsdas', '2019-05-07 15:44:58', 1, 0),
(18, 0, '1', 'asdasdasdasdasdas', '2019-05-07 15:49:27', 12002398700, 0),
(19, 0, '26', 'asdsadasdsada', '2019-05-07 16:20:15', 1, 0),
(20, 0, '27', 'dasdasdasda', '2019-05-07 16:20:32', 1, 0),
(21, 0, '27', 'asdasdasdas', '2019-05-07 16:21:20', 1, 0),
(22, 0, '21', 'asdasdasdasds', '2019-05-07 16:21:36', 1, 0),
(23, 0, '1', 'asdasdsa', '2019-05-08 16:56:53', 1, 0),
(24, 0, '1', 'asdasdas', '2019-05-08 16:58:58', 16002396800, 0),
(25, 0, '1', 'asdasdasdas', '2019-05-08 17:03:00', 12002398700, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cys`
--

CREATE TABLE `cys` (
  `cys_id` int(11) NOT NULL,
  `cys` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cys`
--

INSERT INTO `cys` (`cys_id`, `cys`) VALUES
(1, 'BSED 1A'),
(2, 'BEED 1A'),
(3, 'BEED 1B');

-- --------------------------------------------------------

--
-- Table structure for table `exam_sched`
--

CREATE TABLE `exam_sched` (
  `sched_id` int(11) NOT NULL,
  `time_id` int(1) NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `cys1` varchar(10) NOT NULL,
  `term` varchar(10) NOT NULL,
  `encoded_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `cpnumber` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `usn`, `password`, `name`, `cpnumber`) VALUES
(1, '16002396800', 'abc123', 'Jan Marco A. Jazmine', '09085988811'),
(2, '12345678901', 'qwerty', 'asdgskdahf', '09312738128'),
(3, '09876543211', '827ccb0eea8a706c4c34', 'ajsdhasjhkd', '01293129319');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_sched`
--

CREATE TABLE `instructor_sched` (
  `instruc_sched_id` int(10) NOT NULL,
  `instructor_id` bigint(30) NOT NULL,
  `subject_id` int(20) NOT NULL,
  `time_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_last` varchar(30) NOT NULL,
  `member_first` varchar(30) NOT NULL,
  `member_rank` varchar(50) NOT NULL,
  `member_salut` varchar(30) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `program_code` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_last`, `member_first`, `member_rank`, `member_salut`, `dept_code`, `designation_id`, `program_code`, `username`, `password`, `status`) VALUES
(27, 'Admin', 'Admin', 'Assistant Professor I', 'Mrs', 'CIT', 5, '', 'admin', 'admin', 'admin'),
(177, 'Rizal', 'Jose', 'Assistant Professor I', 'Dr', 'CAS', 66, '', 'josecas', 'rizal', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `prog_id` int(11) NOT NULL,
  `prog_code` varchar(10) NOT NULL,
  `prog_title` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`prog_id`, `prog_code`, `prog_title`) VALUES
(6, 'BSPsych ', 'Bachelor of Science in Psychology'),
(13, 'BSED', 'Bachelor of Science in Secondary Education'),
(14, 'BEED', 'Bachelor of Science in Elementary Education');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `question_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` bigint(15) NOT NULL,
  `subtopic_id` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `heading`, `question_detail`, `datetime`, `user_id`, `subtopic_id`, `views`) VALUES
(1, 'testing testing check', 'test test test test test test test', '2019-05-03 18:58:45', 1, 1, 335),
(2, '', '', '2019-05-05 15:56:47', 8, 0, 0),
(3, 'Hellow', 'Question?', '2019-05-05 16:18:59', 8, 1, 0),
(4, '', '', '2019-05-05 16:19:41', 8, 0, 0),
(5, 'asdasd', 'asdasdas', '2019-05-05 16:19:53', 8, 1, 0),
(6, 'asdasd', 'asdasdas', '2019-05-05 16:20:18', 8, 1, 0),
(7, '', '', '2019-05-05 16:20:48', 8, 0, 0),
(8, 'hello', 'asdasdas', '2019-05-05 16:22:54', 8, 1, 0),
(9, 'hello', 'asdasdas', '2019-05-05 16:23:11', 8, 1, 0),
(10, 'sdasdas', 'asdasdasdsa', '2019-05-05 16:23:19', 8, 1, 0),
(11, 'asdasd', 'asdasdas', '2019-05-05 16:23:35', 8, 1, 0),
(12, 'asdasd', 'asdasdas', '2019-05-05 16:24:10', 8, 1, 0),
(13, 'asdasdsa', 'asdasdas', '2019-05-05 16:24:16', 8, 1, 0),
(14, 'dasdsa', 'asdasdsa', '2019-05-05 16:29:37', 0, 1, 0),
(15, 'asd', 'asd', '2019-05-05 16:32:15', 0, 1, 0),
(16, 'asdasd', 'asdasdsadas', '2019-05-05 16:35:03', 0, 0, 0),
(17, 'asdas', 'asdasdsa', '2019-05-05 16:35:58', 0, 1, 0),
(18, 'asdsadsa', 'asdsadasdsa', '2019-05-05 16:36:22', 0, 1, 0),
(19, 'asdasd', 'asdasdasdas', '2019-05-05 16:44:38', 0, 1, 0),
(20, 'dasdasdas', 'dasdasdasd', '2019-05-05 17:23:39', 0, 1, 0),
(21, 'dasdasdas', 'sadasdsadsa', '2019-05-05 17:56:08', 1, 1, 13),
(22, 'meee', 'meeee', '2019-05-05 19:29:06', 2, 1, 11),
(23, 'Testing', 'aajshdasjhdashkjdaskjhasdkjhadkjhasd', '2019-05-07 05:56:32', 1, 4, 6),
(24, 'saljdasjhkdsa', 'asjkhdasjkhdaskjhd', '2019-05-07 06:21:23', 2147483647, 1, 0),
(25, 'asdasdas', 'asdasdasdas', '2019-05-07 06:23:47', 16002396800, 1, 55),
(26, 'aslkdasjldasj', 'akjshdhjkasdjhkasjkhdaskjhdhsakj', '2019-05-07 06:49:29', 12002398700, 1, 33),
(27, 'asdkjhashkjdashjkdhjkasdhjashkjda', 'akjhsdhkjasdhkjasdhskjahjksadhkjasd', '2019-05-07 06:56:07', 12002398700, 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `sched_id` int(11) NOT NULL,
  `time_id` int(1) NOT NULL,
  `day` varchar(50) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `student_id` int(10) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `encoded_by` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`sched_id`, `time_id`, `day`, `instructor_id`, `student_id`, `subject_code`, `cys`, `room`, `remarks`, `settings_id`, `encoded_by`) VALUES
(1, 4, 'm', 177, 0, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(2, 4, 'w', 177, 0, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(3, 4, 'f', 177, 0, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(4, 7, 'm', 177, 0, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(5, 7, 'w', 177, 0, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(6, 7, 'f', 177, 0, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(7, 19, 't', 177, 0, 'ALG', 'BSED 1A', '101', '', 12, '27'),
(8, 19, 'th', 177, 0, 'ALG', 'BSED 1A', '101', '', 12, '27');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `term` varchar(10) NOT NULL,
  `sem` varchar(15) NOT NULL,
  `sy` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `term`, `sem`, `sy`, `status`) VALUES
(12, 'Midterm', '1st', '2017-2018', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `usn`, `password`, `name`) VALUES
(1, '12002398700', 'abc123', 'kajdhfkjhasdfjhkasd'),
(2, '13002396800', '827ccb0eea8a706c4c34', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `student_sched`
--

CREATE TABLE `student_sched` (
  `student_sched_id` int(10) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(60) NOT NULL,
  `subject_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_description`) VALUES
(1, 'CS101', 'Computer Programming 1');

-- --------------------------------------------------------

--
-- Table structure for table `subtopic`
--

CREATE TABLE `subtopic` (
  `subtopic_id` int(11) NOT NULL,
  `subtopic_name` varchar(50) NOT NULL,
  `subtopic_description` varchar(500) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subtopic`
--

INSERT INTO `subtopic` (`subtopic_id`, `subtopic_name`, `subtopic_description`, `topic_id`) VALUES
(1, 'Testtttt', 'testingtestingtestingtesting', 1),
(2, 'testesttest', 'typetyepedesc', 0),
(3, 'testesttest', 'typetyepedesc', 0),
(4, 'testestitigntitng', 'asdasdasd', 2),
(5, 'asdasdasdasd', 'asdasdasd', 1),
(6, 'CS101', 'Computer Programming 1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sy`
--

CREATE TABLE `sy` (
  `sy_id` int(11) NOT NULL,
  `sy` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sy`
--

INSERT INTO `sy` (`sy_id`, `sy`) VALUES
(1, '2017-2018');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `time_id` int(11) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `days` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `time_start`, `time_end`, `days`) VALUES
(4, '07:30:00', '08:30:00', 'mwf'),
(5, '08:30:00', '09:30:00', 'mwf'),
(6, '09:30:00', '10:30:00', 'mwf'),
(7, '10:30:00', '11:30:00', 'mwf'),
(8, '11:30:00', '12:30:00', 'mwf'),
(9, '12:30:00', '13:30:00', 'mwf'),
(10, '13:30:00', '14:30:00', 'mwf'),
(11, '14:30:00', '15:30:00', 'mwf'),
(12, '15:30:00', '16:30:00', 'mwf'),
(13, '16:30:00', '17:30:00', 'mwf'),
(14, '17:30:00', '18:30:00', 'mwf'),
(15, '18:30:00', '19:30:00', 'mwf'),
(18, '07:30:00', '09:00:00', 'tth'),
(19, '09:00:00', '10:30:00', 'tth'),
(20, '10:30:00', '12:00:00', 'tth'),
(21, '12:00:00', '13:30:00', 'tth'),
(22, '13:30:00', '15:00:00', 'tth'),
(23, '15:00:00', '16:30:00', 'tth'),
(24, '16:30:00', '18:00:00', 'tth'),
(25, '18:00:00', '19:30:00', 'tth'),
(37, '19:30:00', '20:30:00', 'mwf'),
(56, '15:00:00', '16:00:00', 'fst'),
(52, '10:00:00', '11:00:00', 'fst'),
(51, '09:00:00', '10:00:00', 'fst'),
(41, '08:00:00', '09:00:00', 'fst'),
(55, '14:00:00', '15:00:00', 'fst'),
(54, '13:00:00', '14:00:00', 'fst'),
(53, '11:00:00', '12:00:00', 'fst'),
(57, '16:00:00', '17:00:00', 'fst'),
(58, '17:00:00', '18:00:00', 'fst');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL,
  `topic_name` varchar(50) NOT NULL,
  `topic_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topic_id`, `topic_name`, `topic_type`) VALUES
(1, 'Operating System', 'Threading'),
(2, 'Testing', 'Testing Testing'),
(3, 'asdasd', 'asdasd'),
(4, 'testing', 'thread'),
(5, 'Make-up Classes', 'Announcements');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Username` varchar(16) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Username`, `name`, `Password`) VALUES
(1, 'admin', 'admin', 'password'),
(2, 'meme', '', 'meme');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `cys`
--
ALTER TABLE `cys`
  ADD PRIMARY KEY (`cys_id`),
  ADD UNIQUE KEY `cys` (`cys`);

--
-- Indexes for table `exam_sched`
--
ALTER TABLE `exam_sched`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_sched`
--
ALTER TABLE `instructor_sched`
  ADD PRIMARY KEY (`instruc_sched_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_sched`
--
ALTER TABLE `student_sched`
  ADD PRIMARY KEY (`student_sched_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `subtopic`
--
ALTER TABLE `subtopic`
  ADD PRIMARY KEY (`subtopic_id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `instructor_sched`
--
ALTER TABLE `instructor_sched`
  MODIFY `instruc_sched_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `student_sched`
--
ALTER TABLE `student_sched`
  MODIFY `student_sched_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subtopic`
--
ALTER TABLE `subtopic`
  MODIFY `subtopic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
