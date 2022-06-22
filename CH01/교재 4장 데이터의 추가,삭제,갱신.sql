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
