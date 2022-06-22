#날짜 : 20220616
#이름 : 박세환
#내용 : 교재 3장 정렬과 연산

#테이블 생성 / 데이터 저장
CREATE TABLE `sample31` (
	`name` VARCHAR(10),
	`age` INT,
	`address` VARCHAR(255)
);

INSERT INTO `sample31` (`name`, `age`, `address`) VALUES ('A씨', 36, '대구광역시 중구');
INSERT INTO `sample31` (`name`, `age`, `address`) VALUES ('B씨', 18, '부산광역시 연제구');
INSERT INTO `sample31` (`name`, `age`, `address`) VALUES ('C씨', 25, '서울특별시 중구');

#p95
SELECT * FROM `sample31`;
SELECT * FROM `sample31` ORDER BY age;

#p96
SELECT * FROM `sample31`;
SELECT * FROM `sample31` ORDER BY address;

#p98
SELECT * FROM `sample31` ORDER BY age DESC;
SELECT * FROM `sample31` ORDER BY age ASC;

#테이블 생성 / 데이터 저장
CREATE TABLE `sample311` (
	`a` VARCHAR(2),
	`b` VARCHAR(2)
);	

INSERT INTO `sample311` (`a`, `b`) VALUES ('1', '1');
INSERT INTO `sample311` (`a`, `b`) VALUES ('2', '2');
INSERT INTO `sample311` (`a`, `b`) VALUES ('10', '10');
INSERT INTO `sample311` (`a`, `b`) VALUES ('11', '11');

DROP table `sample311`;

#p100
SELECT * FROM `sample311`;
SELECT * FROM `sample311` ORDER BY a;

#테이블 생성 / 데이터 저장
CREATE TABLE `sample32` (
	`a` INTEGER,
	`b` INTEGER
);	

INSERT INTO `sample32` (`a`, `b`) VALUES (1, 1);
INSERT INTO `sample32` (`a`, `b`) VALUES (2, 1);
INSERT INTO `sample32` (`a`, `b`) VALUES (2, 2);
INSERT INTO `sample32` (`a`, `b`) VALUES (1, 3);
INSERT INTO `sample32` (`a`, `b`) VALUES (1, 2);

DROP TABLE `sample32`;

#p103
SELECT * FROM `sample32`;

#p104
SELECT * FROM `sample32` ORDER BY a;

#p105
SELECT * FROM `sample32` ORDER BY a, b;
SELECT * FROM `sample32` ORDER BY b, a;

#p106
SELECT * FROM `sample32` order BY a ASC, b DESC;

#테이블 생성/데이터 저장
CREATE TABLE `sample33` (
	`no` int
);

INSERT INTO `sample33` (`no`) VALUES (1);
INSERT INTO `sample33` (`no`) VALUES (2);
INSERT INTO `sample33` (`no`) VALUES (3);
INSERT INTO `sample33` (`no`) VALUES (4);
INSERT INTO `sample33` (`no`) VALUES (5);
INSERT INTO `sample33` (`no`) VALUES (6);
INSERT INTO `sample33` (`no`) VALUES (7);


#p109
SELECT * FROM `sample33`;

#p110
SELECT * FROM `sample33` LIMIT 3;

#p111
SELECT * FROM `sample33` ORDER BY NO DESC LIMIT 3;

#p113
SELECT * FROM `sample33` LIMIT 3 OFFSET 0;
SELECT * FROM `sample33` LIMIT 3 OFFSET 3;

#테이블 생성/데이터 저장
CREATE TABLE `sample34` (
	`no` INT,
	`price` INT,
	`quantity` INT
);

INSERT INTO `sample34` (`no`, `price`, `quantity`) VALUES (1, 100, 10);
INSERT INTO `sample34` (`no`, `price`, `quantity`) VALUES (2, 230, 24);
INSERT INTO `sample34` (`no`, `price`, `quantity`) VALUES (3, 1980, 1);

#p117
SELECT * FROM `sample34`;

#p118
SELECT *, price*quantity FROM `sample34`;
SELECT *, price*quantity AS amount FROM `sample34`;

#p121
SELECT *, price*quantity AS amount FROM `sample34`;
SELECT *, price*quantity AS amount FROM `sample34`
	WHERE price * quantity >= 2000;

#p124
SELECT *, price*quantity AS amount FROM `sample34`;
SELECT *, price*quantity AS amount FROM `sample34`
	ORDER BY price*quantity DESC;

#p125
SELECT *, price*quantity AS amount FROM `sample34`;
SELECT *, price*quantity AS amount FROM `sample34`
	ORDER BY amount DESC;


#테이블 생성/데이터 저장
CREATE TABLE `sample341` (
	`amount` DECIMAL(10,2)
);
DROP TABLE `sample341`;

INSERT INTO `sample341` (`amount`) VALUES (5961.60);
INSERT INTO `sample341` (`amount`) VALUES (2138.40);
INSERT INTO `sample341` (`amount`) VALUES (1080.00);

#p127
SELECT * FROM `sample341`;
SELECT `amount`, ROUND(`amount`)  FROM `sample341`;

#p128
SELECT `amount`, ROUND(`amount`, 1) FROM `sample341`;

#p129
SELECT `amount`, ROUND(`amount`, -2) FROM `sample341`;


CREATE TABLE `sample35` (
	`no` INT,
	`price` INT,
	`quantity` INT,
	`unit` CHAR(2)
);

INSERT INTO `sample35` VALUES (1, 100, 10, '개');
INSERT INTO `sample35` VALUES (2, 230, 24, '캔');
INSERT INTO `sample35` VALUES (3, 1980, 1, '장');


#p131
SELECT CONCAT(`quantity`, `unit`) FROM `sample35`;

#p137
SELECT CURRENT_TIMESTAMP;

#p139
SELECT CURRENT_DATE + INTERVAL 1 DAY;


CREATE TABLE `sample37` (
	`a` int
);

INSERT INTO `sample37` VALUES (1);
INSERT INTO `sample37` VALUES (2);
INSERT INTO `sample37` VALUES ();

#p142
SELECT `a`, case when `a` IS NULL then 0 ELSE `a` END AS "a(null=0)" FROM `sample37`;

#p144
SELECT `a` AS `코드`,
case
	when `a`=1 then '남자'
	when `a`=2 then '여자'
	ELSE '미지정'
END AS "성별" FROM `sample37`;

#p145
SELECT `a` AS `코드`,
case a
	when 1 then '남자'
	when 2 then '여자'
	ELSE '미지정'
END AS "성별" FROM `sample37`;
