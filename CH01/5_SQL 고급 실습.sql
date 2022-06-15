#날짜 : 2022/06/15
#이름 : 박세환
#내용 : SQL 고급실습

#실습하기 5-1
CREATE TABLE `Member`(
			`uid` VARCHAR(10) PRIMARY KEY,
			`name` VARCHAR(10) NOT NULL,
			`hp` CHAR(13) UNIQUE NOT NULL,
			`pos` VARCHAR(10) NOT NULL DEFAULT '사원',
			`dep` INT,
			`rdate` DATETIME NOT NULL
);

CREATE TABLE `Department` (
			`depNo` INT NOT NULL PRIMARY KEY,
			`name` VARCHAR(10) NOT NULL,
			`tel` CHAR(12) NOT NULL
);

CREATE TABLE `Sales` (
			`seq` INT PRIMARY KEY AUTO_INCREMENT,
			`uid` VARCHAR(10) NOT NULL,
			`year` YEAR NOT NULL,
			`month` INT NOT NULL,
			`sale` INT NOT NULL
);

#실습하기 5-2
INSERT INTO `Member` SET
					`uid` = 'a101',
					`name` = '박혁거세',
					`hp` = '010-1234-1001',
					`pos` = '부장',
					`dep` = 101,
					`rdate` = NOW();
					
INSERT INTO `Member` SET
					`uid` = 'a102',
					`name` = '김유신',
					`hp` = '010-1234-1002',
					`pos` = '차장',
					`dep` = 101,
					`rdate` = NOW();
					
INSERT INTO `Member` SET
					`uid` = 'a103',
					`name` = '김춘추',
					`hp` = '010-1234-1003',
					`pos` = '사원',
					`dep` = 101,
					`rdate` = NOW();
					
INSERT INTO `Member` SET
					`uid` = 'a104',
					`name` = '장보고',
					`hp` = '010-1234-1004',
					`pos` = '대리',
					`dep` = 102,
					`rdate` = NOW();
					
INSERT INTO `Member` SET
					`uid` = 'a105',
					`name` = '강감찬',
					`hp` = '010-1234-1005',
					`pos` = '과장',
					`dep` = 102,
					`rdate` = NOW();
					
INSERT INTO `Member` SET
					`uid` = 'a106',
					`name` = '이성계',
					`hp` = '010-1234-1006',
					`pos` = '차장',
					`dep` = 103,
					`rdate` = NOW();
					
INSERT INTO `Member` SET
					`uid` = 'a107',
					`name` = '정철',
					`hp` = '010-1234-1007',
					`pos` = '차장',
					`dep` = 103,
					`rdate` = NOW();
					
INSERT INTO `Member` SET
					`uid` = 'a108',
					`name` = '이순신',
					`hp` = '010-1234-1008',
					`pos` = '부장',
					`dep` = 104,
					`rdate` = NOW();
					
INSERT INTO `Member` SET
					`uid` = 'a109',
					`name` = '허균',
					`hp` = '010-1234-1009',
					`pos` = '부장',
					`dep` = 104,
					`rdate` = NOW();
					
INSERT INTO `Member` SET
					`uid` = 'a110',
					`name` = '정약용',
					`hp` = '010-1234-1010',
					`pos` = '사원',
					`dep` = 105,
					`rdate` = NOW();
					
INSERT INTO `Member` SET
					`uid` = 'a111',
					`name` = '박지원',
					`hp` = '010-1234-1011',
					`pos` = '사원',
					`dep` = 105,
					`rdate` = NOW();
					

INSERT INTO `Department` SET
					`depNo` = 101,
					`name` = '영업1부',
					`tel` = '051-512-1001';
					
INSERT INTO `Department` SET
					`depNo` = 102,
					`name` = '영업2부',
					`tel` = '051-512-1002';
					
INSERT INTO `Department` SET
					`depNo` = 103,
					`name` = '영업3부',
					`tel` = '051-512-1003';
					
INSERT INTO `Department` SET
					`depNo` = 104,
					`name` = '영업4부',
					`tel` = '051-512-1004';
					
INSERT INTO `Department` SET
					`depNo` = 105,
					`name` = '영업5부',
					`tel` = '051-512-1005';
					
INSERT INTO `Department` SET
					`depNo` = 106,
					`name` = '영업지원부',
					`tel` = '051-512-1006';
					
INSERT INTO `Department` SET
					`depNo` = 107,
					`name` = '인사부',
					`tel` = '051-512-1007';
					

INSERT INTO `Sales` SET
					`uid` = 'a101',
					`year` = 2018,
					`month` = 1,
					`sale` = 98100;
					
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a108', 2020, 2,  76000);

DROP TABLE `Sales`;

#실습하기 5-3
SELECT * FROM `member` WHERE `name`='김유신';
SELECT * FROM `member` WHERE `name`!='김춘추';
SELECT * FROM `member` WHERE `name`<>'김춘추';
SELECT * FROM `member` WHERE `pos`='사원' OR `pos`='대리';
SELECT * FROM `member` WHERE `pos` IN('사원', '대리');
SELECT * FROM `member` WHERE `name` LIKE '%신';
SELECT * FROM `member` WHERE `name` LIKE '_성_';
SELECT * FROM `Sales` WHERE `sale` > 50000;
SELECT * FROM `Sales` WHERE `sale` >= 50000 AND `sale` < 100000 AND `month`=1;
SELECT * FROM `Sales` WHERE `sale` BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `sale` NOT BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `year` IN(2020);
SELECT * FROM `Sales` WHERE `month` IN(1, 2);

#실습하기 5-4
SELECT * FROM `Sales` ORDER BY `sale`;
SELECT * FROM `Sales` ORDER BY `sale` ASC;
SELECT * FROM `Sales` ORDER BY `sale` DESC;
SELECT * FROM `Member` ORDER BY `name`;
SELECT * FROM `Member` ORDER BY `name`DESC;
SELECT * FROM `Member` ORDER BY `rdate` ASC;
SELECT * FROM `Sales` WHERE `sale` > 50000 ORDER BY `sale` desc;
SELECT * FROM `Sales`
WHERE `sale` > 50000
ORDER BY `year`, `month`, `sale` DESC;

#실습하기 5-5
SELECT * FROM Sales LIMIT 3;
SELECT * FROM Sales LIMIT 0, 3;
SELECT * FROM Sales LIMIT 1, 3;
SELECT * FROM Sales LIMIT 4, 5;
SELECT * FROM Sales ORDER BY `sale` DESC LIMIT 3, 5;
SELECT * FROM Sales WHERE `sale` < 50000 ORDER BY `sale` DESC LIMIT 3;
SELECT * FROM sales
WHERE `sale` > 50000
ORDER BY `year` DESC, `month`, `sale` DESC
LIMIT 5;

#실습하기 5-6
SELECT SUM(`sale`) AS '합계' FROM `Sales`;
SELECT AVG(`sale`) AS '평균' FROM `Sales`;
SELECT COUNT(*) AS '갯수' FROM `Sales`;

INSERT INTO `member` VALUES ('b101', '을지문덕', '010-5555-1234', '사장', '107', NOW());

SELECT SUM(`sale`) AS '2018년 1월 매출 총합' FROM `Sales` WHERE `year`=2018 AND `month`=1;
SELECT SUM(`sale`) AS '총합', AVG(`sale`) AS '평균' FROM `Sales` WHERE `year`=2019 AND `month`=2 AND `sale` > 50000;
SELECT MAX(`sale`) AS '최고 매출', MIN(`sale`) AS '최저 매출' FROM `Sales` WHERE `year`=2020;


