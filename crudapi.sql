CREATE DATABASE crudapi;

USE crudapi;

CREATE TABLE tbl_employee
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    gender VARCHAR(255),
    department VARCHAR(255),
    dob DATE
);


DROP TABLE IF EXISTS `upload_toys`;
CREATE TABLE `upload_toys` (
    ID BIGINT NOT NULL AUTO_INCREMENT,
    FILE_NAME VARCHAR(500),
    FILE_URL VARCHAR(255) ,
     PRIMARY KEY (`ID`) 
) ;