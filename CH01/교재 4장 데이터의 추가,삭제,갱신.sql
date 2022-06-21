#날짜 : 2022/06/21
#이름 : 박세환
#내용 : 교재 4장 데이터의 추가, 삭제, 갱신

###########################
#16강 행 추가하기
###########################
#테이블 생성/데이터 저장
CREATE TABLE `sample41`(
	`no` INT(11) NOT NULL,
	`a` VARCHAR(30),
	`b` DATE
);
DROP TABLE `sample41`;

#p153
SELECT * FROM `sample41`;
DESC `sample41`;

#p154
INSERT INTO sample41 VALUES(1, 'ABC', '2014-01-25');
SELECT * FROM `sample41`;

#p155
INSERT INTO `sample41` (`a`, `no`) VALUES ('XYZ', 2);
SELECT * FROM `sample41`;

#p156
INSERT into `sample41` (`no`, `a`, `b`) VALUES (3, NULL, NULL);
SELECT * FROM `sample41`;

#테이블 생성/데이터 저장
CREATE TABLE `sample411` (
	`no` INT(11) NOT NULL,
	`d` INT(11) DEFAULT 0
);
DROP TABLE `smaple411`;

#p157
DESC `sample411`;

#p158
INSERT INTO `sample411` (`no`, `d`) VALUES (1, 1);
SELECT * FROM `sample411`;
INSERT INTO `sample411` (`no`, `d`) VALUES (2, DEFAULT);
SELECT * FROM `sample411`;

#p159
INSERT INTO `sample411` (`no`) VALUES (3);
SELECT * FROM `sample411`;

###########################
#17강 행 삭제하기
###########################
#p161
SELECT * FROM `sample41`;

#p162
DELETE FROM `sample41` WHERE `no`=3;
SELECT * FROM `sample41`;

###########################
#18강 데이터 갱신하기
###########################
#p165
SELECT * FROM `sample41`;

#p166
SELECT * FROM `sample41`;
UPDATE `sample41` SET b = '2014-09-07' WHERE `no`=2;
SELECT * FROM `sample41`;

#p168
SELECT * FROM `sample41`;
UPDATE `sample41` SET `no`=`no`+1;
SELECT * FROM `sample41`;

#p170
SELECT * FROM `sample41`;
UPDATE `sample41` SET `no`=`no`+1, `a`=`no`;
SELECT * FROM `sample41`;

#p171
UPDATE `sample41` SET a=`no`, `no`=`no`+1;
SELECT * FROM `sample41`;

#p173
UPDATE `sample41` SET `a`= NULL;
SELECT * FROM `sample41`;

###########################
#20강 행 개수 구하기
###########################
CREATE TABLE `sample51` (
	`no` INT,
	`name` CHAR(10),
	`quantity` INT
);

INSERT INTO `sample51` (`no`, `name`, `quantity`) VALUES (1,'A',1);
INSERT INTO `sample51` (`no`, `name`, `quantity`) VALUES (2,'A',2);
INSERT INTO `sample51` (`no`, `name`, `quantity`) VALUES (3,'B',10);
INSERT INTO `sample51` (`no`, `name`, `quantity`) VALUES (4,'C',3);
INSERT INTO `sample51` (`no`) VALUES (5);


#p183
SELECT * FROM `sample51`;
SELECT COUNT(*)FROM `sample51`;

#P185
SELECT * FROM `sample51` WHERE `name`='A';
SELECT COUNT(*) FROM `sample51` WHERE `name`='A';

#p186
SELECT * FROM `sample51`
SELECT COUNT(`no`), COUNT(`name`) FROM `sample51`;

#p188
SELECT ALL NAME FROM `sample51`;
SELECT DISTINCT `name` FROM `sample51`;

#p189
SELECT COUNT(ALL `name`), COUNT(DISTINCT `name`) FROM `sample51`;

###########################
#21강 count 이외의 집계함수
###########################
#p191
SELECT * FROM `sample51`;
SELECT SUM(quantity) FROM `sample51`;

#p192
SELECT * FROM `sample51`;
SELECT AVG(`quantity`), SUM(`quantity`)/COUNT(`quantity`) FROM `sample51`;

#p193
SELECT AVG(case when `quantity` IS NULL then 0 ELSE `quantity` END) AS `avgnull0` FROM `sample51`;
SELECT * FROM `sample51`;
SELECT MIN(`quantity`), MAX(`quantity`), MIN(`name`), MAX(`name`) FROM `sample51`;

###########################
#22강 그룹하 group by
###########################
#p195
SELECT * FROM `sample51`;
SELECT `name` FROM `sample51` GROUP BY `name`;

#p197
SELECT `name`, COUNT(`name`), SUM(`quantity`) FROM `sample51` GROUP BY `name`;

#p199
SELECT `name`, COUNT(`name`) FROM `sample51` GROUP BY `name`;
SELECT `name`, COUNT(`name`) FROM `sample51` GROUP BY `name` HAVING COUNT(`name`) =1;

#p202
SELECT `name`, COUNT(`name`), SUM(`quantity`) FROM `sample51` GROUP BY `name` ORDER BY SUM(`quantity`) DESC;

###########################
#23강 서브쿼리
###########################
CREATE TABLE `sample54` (
	`no` INT,
	`a` int
);

INSERT INTO `sample54` (`no`, `a`) VALUES (1, 100);
INSERT INTO `sample54` (`no`, `a`) VALUES (2, 900);
INSERT INTO `sample54` (`no`, `a`) VALUES (3, 20);
INSERT INTO `sample54` (`no`, `a`) VALUES (4, 80);

#p205
SELECT MIN(`a`) FROM `sample54`;

#p206
DELETE FROM `sample54` WHERE `a`=(SELECT MIN(a) FROM `sample54`);
SELECT * FROM `sample54`;

#p207
SELECT MIN(`a`) from `sample54`;
SELECT `no` from `sample54`;
SELECT MIN(`a`), MAX(`no`) from `sample54`;

#p208
SELECT `no`, `a` from `sample54`;

#p210
SELECT
	(SELECT COUNT(*) FROM `sample51`) AS sq1,
	(SELECT COUNT(*) FROM `sample54`) AS sq2;
	
#p211
UPDATE `sample54` SET `a` = (SELECT MAX(`a`) FROM `sample54`);

UPDATE `sample54` SET `a` = 100 WHERE `no`=1;
UPDATE `sample54` SET `a` = 80 WHERE `no`=4;

#p212
SELECT * FROM (SELECT * FROM `sample54`) sq;

#p213
SELECT * FROM (SELECT * FROM (SELECT * FROM `sample54`) `sq1`) `sq2`;

#p214
CREATE TABLE `sample541` (
	`a` INT,
	`b` INT
);

INSERT INTO `sample541` VALUES (
	(SELECT COUNT(*) FROM `sample51`),
	(SELECT COUNT(*) FROM `sample54`)
);
SELECT * FROM `sample541`;

INSERT INTO `sample541` SELECT 1,2;
SELECT * FROM `sample541`;

###########################
#24강 상관 서브쿼리
###########################
CREATE TABLE `sample551` (
	`no` INT,
	`a` CHAR(10)
);
INSERT INTO `sample551` (`no`) VALUES (1);
INSERT INTO `sample551` (`no`) VALUES (2);
INSERT INTO `sample551` (`no`) VALUES (3);
INSERT INTO `sample551` (`no`) VALUES (4);
INSERT INTO `sample551` (`no`) VALUES (5);

#p216
SELECT * FROM `sample551`;
