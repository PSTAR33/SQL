#날짜 : 2022/06/13
#이름 : 박세환
#내용 : SQL 기본실습

#실습하기 1-1
CREATE DATABASE `MyDB`;
DROP DATABASE `MYDB`;

#실습하기 1-2mydb
CREATE TABLE `User1` (
	`uid` VARCHAR(10),
	`name` VARCHAR(10),
	`hp`  CHAR(13),
	`age` TINYINT
);

DROP TABLE `User1`;

#실습하기 1-3
INSERT INTO `User1` VALUES ('A101', '김유신', '010-1234-1111', '25');
INSERT INTO `User1` VALUES ('A102', '김춘추', '010-1234-2222', '23');
INSERT INTO `User1` VALUES ('A103', '장보고', '010-1234-3333', '32');
INSERT INTO `User1` (`uid`, `name`, `age`)
				 VALUES ('A104', '강감찬', '45');
INSERT INTO `User1` SET
								`uid`  = 'A105',
								`name` = '이순신',
								`hp`   = '010-1234-5555';
								
DROP TABLE `User1`;

#실습하기 1-4
SELECT * FROM `USER1`;
SELECT * FROM `user1` WHERE `uid`='A101';
SELECT * FROM `user1` WHERE `name`='김춘추';
SELECT * FROM `User1` WHERE `age` > 30;
SELECT `uid`, `name`, `age` FROM `User1`;



#실습하기 1-5
UPDATE `USER1` SET `hp`='010-1234-4444' WHERE `uid`='A104';
UPDATE `USER1` SET `age`=51 WHERE `uid`='A105';
UPDATE `USER1` SET `hp`='010-1234-1001' `age`=27 WHERE `uid`='A101';

#실습하기 1-6
DELETE FROM `User1` WHERE `uid`='A101';
DELETE FROM `User1` WHERE `uid`='A102' AND `age`=25;
DELETE FROM `User1` WHERE `age` >= 30;
