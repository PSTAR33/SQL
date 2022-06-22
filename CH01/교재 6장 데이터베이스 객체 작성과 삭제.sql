#날짜 : 2022/06/22
#이름 : 박세환
#내용 : 교재 6장 데이터베이스 객체 작성과 삭제

###############################
#26강 테이블 작성,삭제,변경
###############################

#p234
CREATE TABLE `sample62` (
	`no` INTEGER NOT NULL,
	`a` VARCHAR(30),
	`b` DATE
);

DESC `sample62`;

#p237
ALTER TABLE `sample62` ADD `newcol` INTEGER;
DESC `sample62`;

#p238
ALTER TABLE `sample62` modify `newcol` VARCHAR(20);
DESC `sample62`;

#p239
ALTER TABLE `sample62` CHANGE `newcol` `c` VARCHAR(20);
DESC `sample62`;

###############################
#27강 제약
###############################
#p243
CREATE TABLE `sample631` (
	`a` INTEGER NOT NULL,
	`b` INTEGER NOT NULL UNIQUE,
	`c` VARCHAR(30)
);

CREATE TABLE `sample632-2` (
	`no` INTEGER NOT NULL,
	`sub_no` INTEGER NOT NULL,
	`name` VARCHAR(30),
	PRIMARY KEY (`no`,`sub_no`)
);

CREATE TABLE `sample632-1` (
	`no` INTEGER NOT NULL PRIMARY KEY,
	`sub_no` INTEGER NOT NULL,
	`name` VARCHAR(30)
);

INSERT INTO `sample632` VALUES  (1, 1, '김유신');
INSERT INTO `sample632` VALUES  (1, 2, '김춘추');
INSERT INTO `sample632` VALUES  (1, 1, '김유신');
INSERT INTO `sample632` VALUES  (1, 1, '김유신');
INSERT INTO `sample632` VALUES  (1, 1, '김유신');
INSERT INTO `sample632` VALUES  (1, 1, '김유신');


DROP TABLE `sample632`;

#p244
CREATE TABLE `sample632` (
	`no` INTEGER NOT NULL,
	`sub_no` INTEGER NOT NULL,
	`name` VARCHAR(30),
	CONSTRAINT pkey_sample632 PRIMARY KEY (`no`, `sub_no`)
);

// ALTER TABLE `sample632` CONSTRAINT `pkey_sample632` PRIMARY KEY(`no`, `sub_no`);

DESC `sample631`;

#p245
ALTER TABLE `sample631` ADD CONSTRAINT pkey_sample631 PRIMARY KEY(a)

#p246
CREATE TABLE `sample634` (
	`p` INTEGER NOT NULL PRIMARY KEY,
	`a` VARCHAR(30),
	CONSTRAINT pkey_sample634 PRIMARY KEY(`p`)
);

#p247
INSERT INTO `sample634` VALUES (1, '첫쨰줄');
INSERT INTO `sample634` VALUES (2, '둘쨰줄');
INSERT INTO `sample634` VALUES (3, '셋쨰줄');


INSERT INTO `sample634` VALUES (2, '넷째줄');
UPDATE `sample634` SET `p`=2 WHERE `p`=3;

#p248
CREATE TABLE `sample635` (
	`a` INT,
	`b` INT,
	PRIMARY KEY (`a`,`b`)
);
INSERT INTO `sample635` VALUES (1,1);
INSERT INTO `sample635` VALUES (1,2);
INSERT INTO `sample635` VALUES (1,3);
INSERT INTO `sample635` VALUES (2,1);
INSERT INTO `sample635` VALUES (2,2);

SELECT a,b FROM `sample635`;

###############################
#29강 인덱스 작성과 삭제
###############################
#p258
CREATE INDEX `isample65` ON `sample62`(`no`);

#p259
DROP INDEX `isample65` ON `sample62`;

#p260
EXPLAIN SELECT * FROM `sample62` WHERE `a` = 'a';

#p261
EXPLAIN SELECT * FROM `sample62` WHERE `no`>10;
###############################
#30강 뷰 작성과 삭제
###############################
#p266
#p267