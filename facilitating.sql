/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.16-nt : Database - sepdp
*********************************************************************
Server version : 5.0.16-nt
*/


create database if not exists `facilitating`;

USE `facilitating`;

SET FOREIGN_KEY_CHECKS=0;

/*Table structure for table `downloads` */

DROP TABLE IF EXISTS `downloads`;

CREATE TABLE `downloads` (
  `id` int(11) NOT NULL auto_increment,
  `downloadedUser` varchar(50) NOT NULL,
  `file_ID` varchar(50) NOT NULL,
  `fileName` varchar(50) NOT NULL,
  `oname` varchar(50) NOT NULL,
  `sqlDate` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `downloads` */

LOCK TABLES `downloads` WRITE;

UNLOCK TABLES;

/*Table structure for table `filedetails` */

DROP TABLE IF EXISTS `filedetails`;

CREATE TABLE `filedetails` (
  `fid` int(30) NOT NULL auto_increment,
  `ownername` varchar(30) default NULL,
  `fname` varchar(30) NOT NULL,
  `file` longblob,
  `encstr` longblob,
  `secretkey` varchar(30) NOT NULL,
  `abfile` varbinary(50) default NULL,
  `publickey` varchar(30) NOT NULL,
  `hkeystatus` varchar(30) default NULL,
  `hashkey` varchar(30) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filedetails` */

LOCK TABLES `filedetails` WRITE;

insert into `filedetails` values 

(1,'Harish','mails.txt','rameshshaik35\r\nravindranarayn\r\nanuhya.yellabarthi\r\nravina.8523\r\nrajinikanth.yerra\r\nsamhith.kanchi\r\ngrande.balram\r\nmounikaswarrop\r\nakshara.garikapati\r\npayalnandhini5','qHbZbc6zH8AcKuVMM4e0Z07tA3O2ZlEj0/y7p3/1w86K3Z67DpksjBu5irgKKc5QIEL5TLk50GfX1ddKhDs+AEUNSyWZallZvvfN7wxY76xCocUBLsci+c1mzcd/+FqiS3XEB1hZcD9S0HIQ0sNcmBOV1eoQNwSpbJnwOg2ZR07vlw6C5enjKhWpXR3Lq3TQN/9+Oh+TzPFUIfvMdQ/l3A==','5085340','Harish mail file','9910305','yes','0420304'),

(2,'sai','bittu.java','class S\r\n{\r\npublic static void main(String[] args)\r\n{\r\nSystem.out.println(\"helo\");\r\n}\r\n}','km5jncEOs1pnf4OGK8BGM6Su4/6jTGjrhAL+TlH48hj0ofJx7KeI0ESh4qelNqhOwlqjbHnn+u9rLWfetlK7l/uPTv404+cHxQgQaKya5+tJOi0ibkTiaQ==','9941359','this fiole is very dangerous dont open','4931862','yes','8785149'),

(3,'sai','dggxg.txt','  String hashkey = null;\r\n    Random RANDOM = new SecureRandom();\r\n    int mac1_LENGTH = 7;\r\n    String letters = \"0123456789\";\r\n    String uid = \"\";\r\n    for (int i = 0; i < mac1_LENGTH; i++) {\r\n        int index = (int) (RANDOM.nextDouble() * letters.length());\r\n        uid += letters.substring(index, index + 1);\r\n    }\r\n  hashkey=uid;\r\n\r\nps.setString(7, publickey);','8+o6X59O0LsaPlkeWHxqu/nqFtuIk+tkWfWOEcYddrMG+Y+kG6Crak1RrAoXlBzf93Nh0Ee6L6cmZ7+g7HOHgoFEYcdSsKtgYKYu07wn31C+MeyN1IBOYkMMTwMzDeobri4+0VzpifTbwOFV3i4KkWqzTMg5gIMLFny/nlioPxaAGwpZBWONxI7DgGyUOXYudTdMfxOB7kV1zn0glR0unGydxtIopRzlvxjQ2CbUaMHIg18kPaBBmKRObghQ7WYayQQynA3hT5Oa1i0uUrC3hddgn/zrIWsMNfMGFBP27DJ44K0jbF8y0Sy5X+IHzxADaEKk560mFsZ1vsDj/aZN/RlrMDBzF7Tn2PWCLwng+C27NUNujtK/1w4EuZ1DlkdgK5ELjojSGQQZ15EVjvlH7/lKMHYXdmBttkuMcjXN7n/8cLz55haStleqdJKLcrZZOUgdi/14wj/GyU6gALQ8u4Ptg66jBQ3SiSUqUJfX1CY=','9173211','484545','4931862','yes','0981570'),

(4,'sai','hello.txt','hello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello \r\nhello hello hello hello hello hello hello hello hello hello hello hello hello ','NLKAiEK+s2XnUPWmHaqTZVkGfjusPWn5NLKAiEK+s2XnUPWmHaqTZVkGfjusPWn5NLKAiEK+s2XnUPWmHaqTZVkGfjusPWn5Zbi2A94XG5d4Oj7L6VimOSJ9DyoV1z+3cWUx1u89EOJ4Oj7L6VimOSJ9DyoV1z+3cWUx1u89EOJ4Oj7L6VimOSJ9DyoV1z+3cWUx1u89EOJhHlB2NF5sdudQ9aYdqpNlWQZ+O6w9afk0soCIQr6zZedQ9aYdqpNlWQZ+O6w9afk0soCIQr6zZedQ9aYdqpNlWQZ+O6w9afk0soCIQr6zZQeR7Hc8JWj0In0PKhXXP7dxZTHW7z0Q4ng6PsvpWKY5In0PKhXXP7dxZTHW7z0Q4ng6PsvpWKY5In0PKhXXP7dxZTHW7z0Q4ng6PsvpWKY5Hr/lwAKX6LNZBn47rD1p+TSygIhCvrNl51D1ph2qk2VZBn47rD1p+TSygIhCvrNl51D1ph2qk2VZBn47rD1p+TSygIhCvrNl51D1ph2qk2UXqNaFxpGmY3FlMdbvPRDieDo+y+lYpjkifQ8qFdc/t3FlMdbvPRDieDo+y+lYpjkifQ8qFdc/t3FlMdbvPRDieDo+y+lYpjkifQ8qFdc/t02CBGM4KWcCNLKAiEK+s2XnUPWmHaqTZVkGfjusPWn5NLKAiEK+s2XnUPWmHaqTZVkGfjusPWn5NLKAiEK+s2XnUPWmHaqTZVkGfjusPWn5rVW2a3hfOZB4Oj7L6VimOSJ9DyoV1z+3cWUx1u89EOJ4Oj7L6VimOSJ9DyoV1z+3cWUx1u89EOJ4Oj7L6VimOSJ9DyoV1z+3PpweYma37tM0soCIQr6zZedQ9aYdqpNlWQZ+O6w9afk0soCIQr6zZedQ9aYdqpNlWQZ+O6w9afk0soCIQr6zZedQ9aYdqpNlWQZ+O6w9aflluLYD3hcbl3g6PsvpWKY5In0PKhXXP7dxZTHW7z0Q4ng6PsvpWKY5In0PKhXXP7dxZTHW7z0Q4ng6PsvpWKY5In0PKhXXP7dxZTHW7z0Q4mEeUHY0Xmx251D1ph2qk2VZBn47rD1p+TSygIhCvrNl51D1ph2qk2VZBn47rD1p+TSygIhCvrNl51D1ph2qk2VZBn47rD1p+TSygIhCvrNlB5HsdzwlaPQifQ8qFdc/t3FlMdbvPRDieDo+y+lYpjkifQ8qFdc/t3FlMdbvPRDieDo+y+lYpjkifQ8qFdc/t3FlMdbvPRDieDo+y+lYpjkev+XAApfos1kGfjusPWn5NLKAiEK+s2XnUPWmHaqTZVkGfjusPWn5NLKAiEK+s2XnUPWmHaqTZVkGfjusPWn5NLKAiEK+s2XnUPWmHaqTZReo1oXGkaZjcWUx1u89EOJ4Oj7L6VimOSJ9DyoV1z+3cWUx1u89EOJ4Oj7L6VimOSJ9DyoV1z+3cWUx1u89EOJ4Oj7L6VimOSJ9DyoV1z+3TYIEYzgpZwI0soCIQr6zZedQ9aYdqpNlWQZ+O6w9afk0soCIQr6zZedQ9aYdqpNlWQZ+O6w9afk0soCIQr6zZedQ9aYdqpNlWQZ+O6w9afmb0NZbVPtIJw==','3859576','Hello','4931862','yes','3792088'),

(5,'chaitu','input file.txt','The Indian state of Telangana was founded in 2014. Its territory had formerly been part of Andhra Pradesh. The Telangana movement was instrumental in the creation of the new state, and Telangana Rashtra Samithi, a party which led the Telangana movement after 2001, formed the government in the Telangana Legislative Assembly under Chief Minister K. Chandrashekar Rao. The political landscape of Telangana is dominated by the Indian National Congress and the Bharat Rashtra Samithi, with the Bharatiya Janata Party and the All India Majlis-e-Ittehadul Muslimeen being other significant forces.\r\n\r\nThe Indian National Congress draws most of its strength from rural areas whereas the Bharat Rashtra Samithi and All India Majlis-e-Ittehadul Muslimeen have their strongholds in the GHMC and surrounding areas.\r\n\r\nThe Telugu Desam Party and the YSR Congress Party also used to have major sway in the state, although they have since lost most of their presence, and have been limited to residual Andhra Pradesh.','wp8aWBPMjUeRFzpIxBlA9nj5nInl7G/APMLBZ19K+cyqzsNRjkhWxVI9SO7Zf+3ggPNTCtEVffzIBWTup6t6saga+ksLA22fFXcxx5eJZDSzT69kKDdAF7VUjxJ+B6XxJi0LURg4lgZrTitD1cPW8FzlODscUGDxjc5sojtZDv1b2SknCdGb3Exg52tYoBExZvYtMuoJzsLKCkLuRadu30PP7em3TftexaxwhWpXVhpP6STJrVnbqLg/9KL2/E5L7FYNenLe5fVU41w5TaQ1svZqmWXmpT0eSkC9+hFdbPfDHxBB+TVi1PLkpg3wwCD/070YJwZ0+uVn0AeIvnLHycvlzAYCsZUh81YUBcUA6+z2BS0JuE5LHZ86Ompiii6YWPVHOzFdRy6S9C0608zqSSS+9U5smi9vm7NpScfxpzzkZAlAvMc4ixh5XQe0VVjUsBuk8bnZ+Xnbz247zgCiL62twF79sj98nCmwuyUvvjjKSpep8gViUtUf0MNhUvM3Ds7HnfZLGB+MijUZG/sTSXmdWjclE78ZKc0gxkcOExueYCFWWD4uVanZAjHMQvB2991A31Pc3ZXGoVh2q5A89Kos1hwWQK0i5A4jqPfL+J0NKxkILjKidj86BvEVJhC99CWn3JSGC+xtlUZKL3W8DmqGM4RUaYV4mZ+B6xq2gLQzkAujVypl3zVK8tZM7mi16y5DAL9wFi9JpteEsCfWNE/jsmy7N2NkpeG4LMKUsMB3BeHvAhaU91xGVTCA3VDW18AOty66QHyyFAe/uZORDOA5EitV+tSxMebHW/pDJ0PzIOb/DcZcqyJqIYnwxWjpJFUY8INVz9hBl/IWYdwJNOtevhZhkgG8ftP+nIwYywLqNUZYbC0T0VcMT5C5Ez4CaGOEKbtl5m9NzhRsfV+6bT9YG19dgIlEIo0tRx7fjJ1hBrUj1nRnSOsuQwC/cBYvSabXhLAn1jRP47JsuzdjZKXhuCzClLDAP1yPCDVnx2bC9bjxB4mOYpy/j1x+RRaRaS/jTUPCYENwv8wtLAallJTaQl8pcVFV4NQv0j5b2WKpsZm1JNONYy7S6RvmgUnufuOpbCjOgZicQSu+olAffW6qyeWyOZm/T7jcTtPWsYI0ZfTLel/68YGfSC8cp8rgMUJjzp1XzEcMjX4JIJSWWWPOOHYExLTj4qjC1JJ4MF/iJIifC5dKNLpL96LwbQQJOarjhk5PigBUZXk+gqGGohcbVoCpkW2NLp53vOwwsRAFhvcK7eEEs5GbCMHrdGCM7nr5/huGKjp0UWsiRKS4yh5Bpoh7JeFfbAGG+NzF7r3JXzE6ayKfp5vQ1ltU+0gn','0326729','Hello','5237571','yes','no');

UNLOCK TABLES;

/*Table structure for table `ownerreg` */

DROP TABLE IF EXISTS `ownerreg`;

CREATE TABLE `ownerreg` (
  `ownerId` bigint(10) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `password` varchar(100) default NULL,
  `repassword` varchar(100) default NULL,
  `mobile` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `publickey` varchar(100) default NULL,
  `secretkey` varchar(100) default NULL,
  PRIMARY KEY  (`ownerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ownerreg` */

LOCK TABLES `ownerreg` WRITE;

insert into `ownerreg` values 

(1,'Harish','ram@508','ram@508','8019949556','gangisettyharish@gmail.com','Markapur','9910305',NULL),

(2,'sai','sai','sai','8885697874','prathap1.datapoint@gmail.com','2-140,yousufguda checkpost','4931862',NULL),

(3,'chaitu','a123456789A','a123456789A','7013949045','chethan.datapoint@gmail.com','Hyderabad','5237571',NULL);

UNLOCK TABLES;

/*Table structure for table `userdetails` */

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `uid` bigint(10) NOT NULL auto_increment,
  `uname` varchar(300) default NULL,
  `uemail` varchar(300) NOT NULL,
  `umobile` varchar(100) default NULL,
  `upassword` varchar(100) default NULL,
  `urepassword` varchar(100) default NULL,
  `uaddress` varchar(100) default NULL,
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `uemail` (`uemail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */

LOCK TABLES `userdetails` WRITE;

insert into `userdetails` values 

(1,'ram','harish9.datapoint@gmail.com','9182345426','ram@5081','ram@5081','Markapur'),

(2,'sai','prathap1.datapoint@gmail.com','8885697874','sai','sai','2-140,yousufguda checkpost'),

(3,'sai','chethan.datapoint@gmail.com','7013949045','a12345678A','a12345678A','hyderabad');

UNLOCK TABLES;

/*Table structure for table `userreq` */

DROP TABLE IF EXISTS `userreq`;

CREATE TABLE `userreq` (
  `fid` varchar(50) default NULL,
  `filename` varchar(50) default NULL,
  `hashkey` varchar(50) default NULL,
  `uemail` varchar(50) default NULL,
  `publickey` varchar(50) default NULL,
  `secretkey` varchar(50) default NULL,
  `ownername` varchar(50) default NULL,
  `tpaStatus` varchar(50) default NULL,
  `ownerstaus` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userreq` */

LOCK TABLES `userreq` WRITE;

insert into `userreq` values 

('1','mails.txt','0420304','harish9.datapoint@gmail.com','9910305','5085340','Harish','yes','yes'),

('1','mails.txt','0420304','harish9.datapoint@gmail.com','9910305','5085340','Harish','yes','yes'),

('3','dggxg.txt','0981570','prathap1.datapoint@gmail.com','4931862','9173211','sai','yes','yes'),

('4','hello.txt','no','prathap1.datapoint@gmail.com','4931862','3859576','sai','yes','yes');

UNLOCK TABLES;

SET FOREIGN_KEY_CHECKS=1;
