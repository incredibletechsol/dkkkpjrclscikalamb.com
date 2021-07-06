DROP TABLE IF EXISTS tbl_enquiry;

CREATE TABLE `tbl_enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




DROP TABLE IF EXISTS tbl_faculty;

CREATE TABLE `tbl_faculty` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `deptname` text NOT NULL,
  `designation` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `experience` int(2) NOT NULL,
  `photo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS tbl_gallery;

CREATE TABLE `tbl_gallery` (
  `photoid` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`photoid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

INSERT INTO tbl_gallery VALUES("52","physics.jpg","Physics Practicals");
INSERT INTO tbl_gallery VALUES("53","chemistry.jpg","Chemistry Practicals");
INSERT INTO tbl_gallery VALUES("54","biology.jpg","Biology Practicals");



DROP TABLE IF EXISTS tbl_login;

CREATE TABLE `tbl_login` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_login VALUES("1","lspsadmin","Phadtare12#$","Jayashri","Jamdade");



DROP TABLE IF EXISTS tbl_news;

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsdate` date NOT NULL,
  `subject` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `attachment` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;




