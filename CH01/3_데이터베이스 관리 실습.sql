#날짜 : 2022/06/14
#이름 : 박세환
#내용 : 데이터베이스 관리 실습

# 실습하기 3-1
DROP DATABASE `testdb`;
CREATE DATABASE `testestdbtDB`;

CREATE USER 'tester'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON testdb.* TO 'tester'@'%';
FLUSH PRIVILEGES;


# 실습하기 3-2
SET PASSWORD FOR 'tester'@'%'=PASSWORD('1q2w3e');
