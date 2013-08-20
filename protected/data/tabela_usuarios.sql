
DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) CHARACTER SET latin1 NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `firstName` varchar(30) CHARACTER SET latin1 NOT NULL,
  `lastName` varchar(30) CHARACTER SET latin1 NOT NULL,
  `managerId` int(11) NOT NULL,
  `title` varchar(45) CHARACTER SET latin1 NOT NULL,
  `department` varchar(45) CHARACTER SET latin1 NOT NULL,
  `officePhone` varchar(45) CHARACTER SET latin1 NOT NULL,
  `cellPhone` varchar(45) CHARACTER SET latin1 NOT NULL,
  `city` varchar(45) CHARACTER SET latin1 NOT NULL,
  `picture` varchar(250) CHARACTER SET latin1 NOT NULL,
  `twitterId` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `blogURL` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `usuarios` (`id`, `email`, `password`, `firstName`, `lastName`, `managerId`, `title`, `department`, `officePhone`, `cellPhone`, `city`, `picture`, `twitterId`, `blogURL`)
VALUES
	(1,'jking@fakemail.com','demo','James','King',0,'President and CEO','Corporate','617-000-0001','781-000-0001','Boston, MA','james_king.jpg','@fakejking','http://coenraets.org'),
	(2,'jtaylor@fakemail.com','demo','Julie','Taylor',1,'VP of Marketing','Marketing','617-000-0002','781-000-0002','Boston, MA','julie_taylor.jpg','@fakejtaylor','http://coenraets.org'),
	(3,'elee@fakemail.com','demo','Eugene','Lee',1,'CFO','Accounting','617-000-0003','781-000-0003','Boston, MA','eugene_lee.jpg','@fakeelee','http://coenraets.org'),
	(4,'jwilliams@fakemail.com','demo','John','Williams',1,'VP of Engineering','Engineering','617-000-0004','781-000-0004','Boston, MA','john_williams.jpg','@fakejwilliams','http://coenraets.org'),
	(5,'rmoore@fakemail.com','demo','Ray','Moore',1,'VP of Sales','Sales','617-000-0005','781-000-0005','Boston, MA','ray_moore.jpg','@fakermoore','http://coenraets.org'),
	(6,'pjones@fakemail.com','demo','Paul','Jones',4,'QA Manager','Engineering','617-000-0006','781-000-0006','Boston, MA','paul_jones.jpg','@fakepjones','http://coenraets.org'),
	(7,'pgates@fakemail.com','demo','Paula','Gates',4,'Software Architect','Engineering','617-000-0007','781-000-0007','Boston, MA','paula_gates.jpg','@fakepgates','http://coenraets.org'),
	(8,'lwong@fakemail.com','demo','Lisa','Wong',2,'Marketing Manager','Marketing','617-000-0008','781-000-0008','Boston, MA','lisa_wong.jpg','@fakelwong','http://coenraets.org'),
	(9,'gdonovan@fakemail.com','demo','Gary','Donovan',2,'Marketing','Marketing','617-000-0009','781-000-0009','Boston, MA','gary_donovan.jpg','@fakegdonovan','http://coenraets.org'),
	(10,'kbyrne@fakemail.com','demo','Kathleen','Byrne',5,'Sales Representative','Sales','617-000-0010','781-000-0010','Boston, MA','kathleen_byrne.jpg','@fakekbyrne','http://coenraets.org'),
	(11,'ajones@fakemail.com','demo','Amy','Jones',5,'Sales Representative','Sales','617-000-0011','781-000-0011','Boston, MA','amy_jones.jpg','@fakeajones','http://coenraets.org'),
	(12,'swells@fakemail.com','demo','Steven','Wells',4,'Software Architect','Engineering','617-000-0012','781-000-0012','Boston, MA','steven_wells.jpg','@fakeswells','http://coenraets.org'),
	(25,'swells@fakemail.com','demo','Steven','Wells',4,'Software Architect','Engineering','617-000-0012','781-000-0012','Boston, MA','steven_wells.jpg','@fakeswells','http://coenraets.org'),
	(27,'demo','demo','demo','demo',4,'demo','demo','617-000-0012','781-000-0012','Boston, MA','steven_wells.jpg','@fakeswells','http://coenraets.org'),
	(28,'admin','admin','admin','admin',4,'admin','admin','617-000-0012','781-000-0012','Boston, MA','steven_wells.jpg','@fakeswells','http://coenraets.org');
