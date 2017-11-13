create database submitform;


use submitform;
Drop table users;

CREATE TABLE users(
    user_id INT NOT NULL AUTO_INCREMENT,
	first_name text NOT NULL,
    last_name text NOT NULL,
	user_name varchar(20) NOT NULL,
	password varchar(15) NOT NULL,
    PRIMARY KEY ( user_id )
    );

CREATE TABLE submits(
    submits_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL ,
	email text NOT NULL,
    comments text NOT NULL,
    PRIMARY KEY ( submits_id ), 
    FOREIGN KEY (user_id) REFERENCES users(user_id) 
) ENGINE=INNODB;

