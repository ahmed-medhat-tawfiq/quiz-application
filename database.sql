DROP TABLE IF EXISTS articles;
-- ---- Create Articles Table:
	CREATE TABLE `articles` (
	`id` int(11) primary key auto_increment,
	`title` varchar(100) default NULL,
	`seftitle` varchar(100) default NULL,
	`text` longtext,
	`date` datetime default NULL,
	`category` int(8) NOT NULL default '0',
	`position` int(6) default NULL,
	`extraid` varchar(8) default NULL,
	`page_extra` varchar(8) default NULL,
	`displaytitle` char(3) NOT NULL default 'YES',
	`displayinfo` char(3) NOT NULL default 'YES',
	`commentable` varchar(5) NOT NULL default '',
	`published` int(3) NOT NULL default '1',
	`description_meta` varchar(255) default NULL,
	`keywords_meta` varchar(255) default NULL,
	`show_on_home` enum('YES','NO') default 'YES',
	`show_in_subcats` enum('YES','NO') default 'NO',
	`artorder` smallint(6) NOT NULL default '0',
	`visible` varchar(6) default 'YES',
	`default_page` varchar(6) default 'NO',
	KEY show_on_home (show_on_home)
	);

DROP TABLE IF EXISTS categories;
-- ---- Create Categories table:
        CREATE TABLE `categories` (
	`id` int(8) primary key auto_increment,
 	`name` varchar(100) NOT NULL,
 	`seftitle` varchar(100) NOT NULL,
 	`description` varchar(255) NOT NULL,
 	`published` varchar(4) NOT NULL default 'YES',
 	`catorder` smallint(6) NOT NULL default '0',
 	`subcat` int(8) NOT NULL default '0'
	);

-- ---- Insert data in Categories table:
	INSERT INTO `categories` VALUES ('1', 'Uncategorized', 'uncategorized', '', 'YES', '1', '0');

DROP TABLE IF EXISTS comments;
-- ---- Create Comments table:
	CREATE TABLE `comments` (
 	`id` int(11) primary key auto_increment,
 	`articleid` int(11) default '0',
 	`name` varchar(50),
 	`url` varchar(100) NOT NULL,
 	`comment` text,
 	`time` datetime NOT NULL default '0000-00-00 00:00:00',
 	`approved` varchar(5) NOT NULL default 'True',
 	KEY articleid (articleid)
	);

DROP TABLE IF EXISTS extras;
-- ---- Create Extras table:
	CREATE TABLE `extras` (
	`id` int(8) primary key auto_increment,
 	`name` varchar(40) NOT NULL,
	`seftitle` varchar(100) default NULL,
	`description` varchar(100) NOT NULL
	);

-- ---- Insert date in Extras table:
	INSERT INTO `extras` VALUES (1, 'Extra', 'extra', 'The default extra');

DROP TABLE IF EXISTS settings;
-- ---- Create Settings table:
	CREATE TABLE `settings` (
 	`id` int(8) primary key auto_increment,
 	`name` varchar(20) NOT NULL,
 	`value` varchar(255) NOT NULL
	);
