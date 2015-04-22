/*
SQLyog - Free MySQL GUI v5.02
Host - 5.0.36 : Database - trainingportal
*********************************************************************
Server version : 5.0.36
*/


create database if not exists `trainingportal`;

USE `trainingportal`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL auto_increment,
  `address1` varchar(255) default NULL,
  `address2` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `postal_code` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  PRIMARY KEY  (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `course_details` */

DROP TABLE IF EXISTS `course_details`;

CREATE TABLE `course_details` (
  `course_detail_id` int(255) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) default NULL,
  `level` varchar(255) default NULL,
  `format` varchar(255) default NULL COMMENT 'pdf, doc,vedio ect.',
  `status` bit(1) default NULL,
  `training_detail_id` int(255) NOT NULL,
  PRIMARY KEY  (`course_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `individual_member_details` */

DROP TABLE IF EXISTS `individual_member_details`;

CREATE TABLE `individual_member_details` (
  `exp_detail` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `dob` datetime default NULL,
  `last_name` varchar(255) default NULL,
  `member_id` int(255) NOT NULL,
  KEY `FK_trainer` (`dob`),
  KEY `FK_member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `industry_type` */

DROP TABLE IF EXISTS `industry_type`;

CREATE TABLE `industry_type` (
  `industry_type_id` int(255) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`industry_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `member_Id` int(255) NOT NULL auto_increment,
  `phone_no` varchar(255) default NULL,
  `mobile_no` varchar(255) default NULL,
  `created_date` datetime default NULL,
  `modified_date` datetime default NULL,
  `status` bit(1) default NULL,
  `address_id` int(255) default NULL,
  `image_location` varchar(255) default NULL,
  PRIMARY KEY  (`member_Id`),
  UNIQUE KEY `email` (`email`),
  KEY `FK_member_details` (`role_id`),
  KEY `FK_member` (`address_id`),
  CONSTRAINT `member_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `organization_details` */

DROP TABLE IF EXISTS `organization_details`;

CREATE TABLE `organization_details` (
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `website` varchar(255) default NULL,
  `member_id` int(255) default NULL,
  KEY `FK_organization` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `role_id` int(255) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `training_details` */

DROP TABLE IF EXISTS `training_details`;

CREATE TABLE `training_details` (
  `training_detail_id` int(255) NOT NULL auto_increment,
  `industry_type_id` int(255) default NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `start_date` datetime default NULL,
  `end_date` datetime default NULL,
  `duration` int(255) default NULL,
  `status` bit(1) default NULL,
  `created_date` datetime default NULL,
  `modified_date` datetime default NULL,
  `member_id` int(255) NOT NULL,
  PRIMARY KEY  (`training_detail_id`),
  KEY `FK_training_detail` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
