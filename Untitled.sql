
#create database newuniversity2;
use newuniversity;

DROP TABLE IF EXISTS `semester`;
DROP TABLE IF EXISTS `register`;
DROP TABLE IF EXISTS `students`;
DROP TABLE IF EXISTS `courses`;
DROP TABLE IF EXISTS `professor`;
DROP TAble if exists `login`;


CREATE TABLE `students` (
  `sid` int(9) unsigned NOT NULL primary key,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `bday` date NOT NULL,
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (29, 'Lexus', '331-450-8150', '1988-08-22');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (99, 'Brant', '1-328-810-1067', '1999-11-22');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (16, 'Mazie', '282-975-8835', '1973-04-02');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (66, 'Daphne', '1-548-392-6504', '1972-02-15');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (11, 'Kailee', '1-356-770-2611', '2005-11-13');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (90, 'Monserrate', '1-036-342-5267', '1975-03-27');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (37, 'Otho', '1-980-140-9265', '2017-04-07');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (49, 'Shany', '1-478-363-8631', '1997-03-28');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (62, 'Bret', '+88(3)2109282705', '2014-09-30');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (92, 'Adriana', '590-040-4625', '1996-03-31');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (22, 'Melyna', '585-902-4104', '1975-09-19');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (71, 'Deion', '1-395-452-5100', '1996-07-02');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (96, 'Mason', '160.917.1971', '1979-12-21');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (84, 'Torey', '556.322.5503', '2011-10-30');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (73, 'Jody', '(533)969-8285', '2016-04-26');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (0, 'Joyce', '162-257-8893', '1989-07-23');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (60, 'Darryl', '249.996.2956', '2014-10-29');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (42, 'Jason', '446-442-7011', '2015-10-12');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (78, 'Lenna', '(727)293-2300', '1971-06-29');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (101, 'Kari', '(698)239-0708', '1975-10-08');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (75, 'Sim', '(001)655-2354', '2018-01-21');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (21, 'Eleanore', '03272270830', '2012-11-01');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (32, 'Jeramy', '676.069.6513', '1996-02-25');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (33, 'Sigmund', '1-137-382-6115', '1974-10-19');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (50, 'Ruben', '529-116-2733', '2021-02-07');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (38, 'Anya', '+26(7)3826576410', '2020-11-30');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (9, 'Ara', '(929)284-9465', '1990-01-24');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (95, 'Julien', '1-360-015-1109', '1997-12-18');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (41, 'Waino', '1-542-054-9471', '2016-09-09');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (97, 'Fatima', '1-480-026-4585', '1983-05-31');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (6, 'Billie', '754.226.8373', '1970-11-18');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (98, 'Jazmyn', '236.410.9334', '1979-01-30');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (80, 'Gertrude', '428-774-7829', '2002-06-15');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (61, 'Raven', '+53(2)2259085508', '2010-01-14');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (23, 'Duane', '869-445-3195', '1993-12-19');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (28, 'Ben', '1-212-565-4488', '1978-12-08');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (100, 'Trycia', '(588)069-2651', '2020-02-04');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (64, 'Americo', '128-515-7850', '1987-04-17');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (59, 'Arden', '075-405-2978', '2018-08-29');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (48, 'Samara', '007.283.4091', '2012-06-15');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (8, 'Armand', '1-581-623-1533', '1975-07-03');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (91, 'Elinore', '393-968-1749', '1984-07-15');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (46, 'Sincere', '963-735-4464', '2004-04-05');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (43, 'Zakary', '391-885-8277', '1981-12-14');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (83, 'Brenna', '021.925.6422', '2019-05-10');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (13, 'Alaina', '247-713-6998', '1993-08-11');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (51, 'Gwen', '516-826-7259', '1979-09-24');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (45, 'Otis', '1-677-548-6326', '2011-04-22');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (2, 'Fannie', '662.043.3096', '1978-07-25');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (82, 'Reynold', '+46(6)2470679766', '1997-03-29');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (3, 'Helga', '1-431-984-8304', '1987-10-18');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (18, 'Savanna', '969.558.0566', '2005-04-20');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (89, 'Rupert', '550.455.0434', '2016-01-27');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (67, 'Camille', '+58(7)9408058815', '1998-12-04');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (77, 'Domenica', '820.135.9472', '2012-04-23');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (47, 'Mariano', '146.164.4831', '2005-03-14');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (19, 'Sydnie', '632-440-0035', '1986-02-12');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (74, 'Delores', '741-455-6942', '1976-04-17');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (25, 'Addie', '1-869-088-9829', '1983-06-15');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (5, 'Celestino', '1-104-338-5708', '2007-11-22');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (14, 'Demond', '(868)030-5828', '2014-04-30');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (69, 'Glenna', '06615916515', '2006-09-01');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (7, 'Shad', '(919)484-3088', '2013-09-08');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (58, 'Amos', '(165)154-7963', '2019-01-02');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (88, 'Melvina', '816.937.5915', '1981-11-15');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (44, 'Nyah', '(656)759-6852', '2015-07-07');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (10, 'Elizabeth', '(650)806-9747', '2008-10-22');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (30, 'Lula', '1-275-826-4875', '2005-05-25');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (12, 'Danielle', '1-415-723-8337', '2017-04-03');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (34, 'Julie', '631.735.7102', '1979-04-30');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (20, 'Kirsten', '(063)925-1589', '1981-03-14');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (87, 'Rowan', '08716828139', '2007-01-06');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (36, 'Juana', '03839964889', '1999-04-08');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (56, 'Mozelle', '187.288.9911', '1976-03-19');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (93, 'Phoebe', '113-525-6123', '2007-08-25');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (4, 'Tavares', '+27(4)1898200006', '1973-10-09');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (81, 'Minerva', '278-844-7200x03767', '1982-10-05');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (15, 'Joan', '06069264735', '2010-03-28');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (26, 'Jessica', '(805)112-7016', '1985-06-24');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (86, 'Pascale', '640.874.7257x7185', '1984-01-28');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (53, 'Efrain', '+84(6)4578606100', '2015-07-13');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (57, 'Tiffany', '+83(8)0185021390', '1998-03-04');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (17, 'Shyanne', '(292)512-4165x912', '1992-09-12');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (85, 'Van', '(072)436-4260x05292', '2011-02-10');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (68, 'Tatum', '073.317.2973x48321', '1995-03-06');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (40, 'Mossie', '02709085721', '2016-04-15');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (70, 'Izaiah', '137.390.0127', '1982-02-17');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (54, 'Augustine', '1-708-726-9664x04796', '2006-03-22');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (39, 'Deon', '1-363-061-1208', '1971-01-31');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (79, 'Judd', '739.847.0456', '2012-07-28');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (94, 'Aryanna', '317-982-6536', '1991-04-27');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (27, 'Beaulah', '+58(1)3683323246', '1994-07-24');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (31, 'Shany', '701-515-4783', '2020-10-25');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (72, 'Lenny', '410-996-0882x1186', '1991-02-04');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (65, 'Annalise', '(037)950-1847x431', '1971-11-12');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (35, 'Hilton', '341.817.5831', '1991-11-22');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (24, 'Frida', '102-428-6268', '1994-01-13');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (76, 'Jeremie', '926-410-9686x72579', '1991-03-14');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (63, 'Mack', '(888)964-6201x9630', '1977-01-20');
INSERT INTO `students` (`sid`, `name`, `phone`, `bday`) VALUES (55, 'Kaylah', '879.901.5449', '1971-02-28');


CREATE TABLE `courses` (
  `cid` int(9) unsigned NOT NULL primary key,
  `cred` int(1) unsigned NOT NULL,
  `department` enum('Science','Math','CS','History','LA') NOT NULL,
  `prereqs` set('c1','c2','c3') DEFAULT NULL,
  `cname` varchar(255) NOT NULL,
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (215, 5, 'CS', 'c2', 'eum');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (275, 0, 'Science', 'c3', 'incidunt');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (255, 3, 'Math', 'c3', 'tenetur');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (272, 3, 'LA', 'c3', 'et');
# INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (205, 5, 'Math', 'c1', 'natus');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (242, 0, 'History', 'c2', 'non');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (282, 0, 'LA', 'c2', 'eligendi');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (203, 4, 'History', 'c1', 'saepe');
#INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (219, 0, 'Science', 'c3', 'veniam');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (257, 4, 'CS', 'c3', 'perferendis');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (285, 5, 'CS', 'c2', 'enim');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (251, 3, 'CS', 'c3', 'sed');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (261, 4, 'History', 'c2', 'nihil');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (205, 2, 'History', 'c3', 'reiciendis');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (219, 5, 'History', 'c1', 'qui');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (271, 0, 'LA', 'c2', 'officiis');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (246, 4, 'History', 'c3', 'eaque');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (292, 4, 'Science', 'c2', 'dicta');
#INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (282, 0, 'Math', 'c2', 'magni');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (284, 2, 'CS', 'c1', 'asperiores');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (254, 1, 'History', 'c3', 'facere');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (245, 2, 'History', 'c3', 'officiis');
#INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (282, 1, 'History', 'c3', 'est');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (249, 5, 'Math', 'c1', 'est');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (233, 0, 'LA', 'c2', 'dolorem');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (286, 4, 'Math', 'c1', 'dolor');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (265, 4, 'History', 'c1', 'labore');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (290, 1, 'Math', 'c3', 'consequatur');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (262, 3, 'Math', 'c2', 'provident');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (208, 3, 'LA', 'c1', 'velit');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (283, 3, 'Math', 'c2', 'beatae');
#INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (225, 2, 'LA', 'c2', 'rem');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (244, 3, 'LA', 'c1', 'maxime');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (217, 4, 'LA', 'c2', 'assumenda');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (225, 4, 'LA', 'c3', 'quisquam');
#INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (215, 1, 'Science', 'c3', 'pariatur');
#INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (262, 2, 'Math', 'c3', 'rem');
#INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (215, 3, 'CS', 'c3', 'possimus');
#INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (292, 0, 'History', 'c1', 'ad');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (240, 2, 'Math', 'c1', 'est');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (294, 0, 'Math', 'c3', 'dolorem');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (279, 4, 'CS', 'c1', 'expedita');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (226, 3, 'History', 'c1', 'et');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (237, 0, 'Science', 'c2', 'commodi');
#INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (249, 3, 'History', 'c2', 'quaerat');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (276, 0, 'History', 'c3', 'dolores');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (220, 0, 'Math', 'c1', 'omnis');
INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (263, 5, 'CS', 'c2', 'laborum');
#INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (275, 1, 'History', 'c2', 'officiis');
#INSERT INTO `courses` (`cid`, `cred`, `department`, `prereqs`, `cname`) VALUES (276, 1, 'History', 'c3', 'doloremque');


#
# TABLE STRUCTURE FOR: professor
#



CREATE TABLE `professor` (
  `pid` int(255) unsigned NOT NULL primary key,
  `pname` varchar(100) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `office` int(200) NOT NULL,
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (177, 'non', '423.374.2379x30511', 2147483647);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (179, 'quia', '1-110-171-9771x045', 0);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (159, 'exercitationem', '1-672-583-2414', 718728);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (119, 'autem', '(793)417-8631', 0);
#INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (158, 'et', '444-488-7063x7459', 725658);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (181, 'magni', '657-055-1617x0666', 0);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (157, 'consequatur', '07469624624', 0);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (123, 'fuga', '(745)979-1109x20388', 458);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (189, 'deserunt', '+43(0)8128916092', 0);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (158, 'itaque', '04892012056', 1);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (131, 'facilis', '(122)132-8598', 703066);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (137, 'aliquam', '595.957.2146x86200', 2147483647);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (140, 'autem', '04513763670', 391);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (102, 'omnis', '07813076154', 341316);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (194, 'necessitatibus', '808-120-1014x7033', 2147483647);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (154, 'reiciendis', '700.165.7683x66434', 0);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (130, 'sit', '684-284-5137x19368', 749);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (170, 'voluptatibus', '(306)728-2702x31589', 0);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (101, 'architecto', '531.808.5357x2251', 594);
INSERT INTO `professor` (`pid`, `pname`, `phone`, `office`) VALUES (187, 'dolores', '1-085-884-9578', 0);


#
# TABLE STRUCTURE FOR: register
#

CREATE TABLE `register` (
	`rid` int primary key auto_increment,
  `grade` varchar(3)  NOT NULL DEFAULT 'N',
  `sid` int(9) unsigned NOT NULL,
  `pid` int(255) unsigned NOT NULL,
  `section` int(10) unsigned NOT NULL,
  `cid` int(9) unsigned NOT NULL,
   Unique KEY `regID` (`cid`,`sid`,`pid`),
  Foreign key (pid) references professor(pid),
  Foreign key (cid) references courses(cid),
  Foreign key (sid) references students(sid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `register` (`grade`, `sid`, `pid`, `section`,`cid`) VALUES ('N', 29, 179, 4,215);
INSERT INTO `register` (`grade`, `sid`, `pid`, `section`,`cid`) VALUES ('N', 37, 177, 4,215);
INSERT INTO `register` (`grade`, `sid`, `pid`, `section`,`cid`) VALUES ('N', 49, 179, 4,215);
INSERT INTO `register` (`grade`, `sid`, `pid`, `section`,`cid`) VALUES ('N', 62, 177, 4,215);
INSERT INTO `register` (`grade`, `sid`, `pid`, `section`,`cid`) VALUES ('N', 76, 179, 3,283);


#
# TABLE STRUCTURE FOR: semester
#

CREATE TABLE `semester` (
  `section` varchar(255) NOT NULL,
  `stime` time NOT NULL,
  `sday` set('mon','teus','wed','thurs','friday') NOT NULL,
  `cid` int(9) unsigned NOT NULL,
  `pid` int(255) unsigned NOT NULL,
  UNIQUE KEY `cid` (`cid`),
  UNIQUE KEY `pid` (`pid`),
  Foreign key (pid) references professor(pid),
  Foreign key (cid) references courses(cid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `login` (
  `id` int(9) unsigned not null ,
  `acctype` int unsigned not null,
  `pass` varchar(50) not null default "password",
  primary key(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `login` (id,acctype,pass) values (19,1,"password");
insert into `login` (id,acctype,pass) values (99,1,"password");
insert into `login` (id,acctype,pass) values (16,1,"password");
insert into `login` (id,acctype,pass) values (66,1,"password");
insert into `login` (id,acctype,pass)values (177,2,"password");
insert into `login` (id,acctype,pass) values (170,2,"password");
insert into `login` (id,acctype,pass) values (130,2,"password");
insert into `login` (id,acctype,pass) values (179,2,"password");
insert into `login` (id,acctype,pass) values (189,2,"password");
insert into `login` (id,acctype,pass) values (160,2,"password");
insert into `login` (id,acctype,pass) values (102,2,"password");
insert into `login` (id,acctype,pass) values (187,2,"password");
insert into `login` (id,acctype,pass) values (194,2,"password");
insert into `login` (id,acctype,pass) values (154,2,"password");
insert into `login` (id,acctype,pass) values (1,3,"password");
insert into `login` (id,acctype,pass) values (2,3,"password");
insert into `login` (id,acctype,pass) values (3,3,"password");
insert into `login` (id,acctype,pass) values (4,3,"password");
insert into `login` (id,acctype,pass) values (5,3,"password");


 
