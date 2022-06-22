
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

CREATE TABLE `sample552` (
	`no2` INT
);
INSERT INTO `sample552` (`no2`) VALUES (3);
INSERT INTO `sample552` (`no2`) VALUES (5);

#p217
SELECT * FROM `sample551`;
SELECT * FROM `sample552`;

#p218
UPDATE `sample551` SET `a`='있음' WHERE
	EXISTS (SELECT * FROM `sample552` WHERE `no2`= `no`);

#p219
UPDATE `sample551` SET `a`='없음' WHERE
	NOT EXISTS (SELECT * FROM `sample552` WHERE `no2`=`no`);
	
#p221
UPDATE `sample551` SET `a`='있음' WHERE
	EXISTS (SELECT * FROM `sample552` WHERE `sample552`.`no2` = `sample551`.`no`);
	
#p222
SELECT * FROM `sample551` WHERE `NO` IN (3, 5);
SELECT * FROM `sample551` WHERE `no` IN (SELECT `no2` FROM `sample552`);