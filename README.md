# SpringBoot-with-Mysql-Db
A simple Spring Boot MVC web app with Mysql Database.


--Create SQL statement---

CREATE DATABASE `contact_book`delimiter $$

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1$$

How to run app???

1. create db and table using above sql script.
2. change sql credentials from 'application.properties' .
3. simply run Application.java
4. nvaigate browser to  'http://localhost:8080/'
