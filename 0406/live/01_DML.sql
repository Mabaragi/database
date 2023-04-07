-- users table 생성
CREATE TABLE users (
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country TEXT NOT NULL,
    phone TEXT NOT NULL,
    balance INTEGER NOT NULL
);


SELECT COUNT(*) FROM users;
SELECT avg(balance) FROM users;
SELECT DISTINCT country FROM users;

SELECT country, avg(balance) FROM users GROUP BY country order by avg(balance) desc;
SELECT avg(age) from users where age >= 30;
SELECT country, count(*) from users GROUP by country;

SELECT last_name, count(last_name) AS number_of_name from users GROUP by last_name order by count(*) desc;

CREATE TABLE classmates (
 name TEXT NOT NULL,
 age INTEGER NOT NULL,
 address TEXT NOT NULL
);

INSERT INTO classmates (name, age, address) VALUES('홍길동', 23, '서울');

INSERT INTO classmates
VALUES
  ('김철수', 30, '경기'),
  ('이영미', 31, '강원'),
  ('박진성', 26, '전라'),
  ('최지수', 12, '충청'),
  ('정요한', 28, '경성');

INSERT INTO classmates
VALUES
  ('영영영');

UPDATE classmates
SET name = '김철수한무두루미',
  address = '제주도'
where rowid = 2;

DELETE FROM classmates
where name like'%영%';