-- Создайте БД department
CREATE DATABASE department;
CREATE DATABASE
-- Создайте таблицу developers(id,name,skill,programming_lang по умолчанию установите
-- значение HTML):
postgres=# CREATE TABLE developers(
postgres(# id SERIAL PRIMARY KEY,
postgres(# name VARCHAR,
postgres(# skill VARCHAR, 
postgres(# progromming_land VARCHAR DEFAULT 'HTML'
postgres(# );
CREATE TABLE
-- Переименуйте колонку skill на age.
postgres=# ALTER TABLE developers DROP COLUMN skill;
ALTER TABLE
postgres=# ALTER TABLE developers ADD COLUMN age INT;
ALTER TABLE
postgres=# SELECT* FROM developers;
 id | name | progromming_land | age 
----+------+------------------+-----
-- В таблицу developers, добавить запись:
-- 5. Добавить 'Bakyt', 23, 'Python'
-- 6. Добавить Beka, 15 лет Java
-- 7. Добавьте Gulya, 30 лет, JavaScript
-- 8. Добавьте Beka, 39 лет, Assembler
INSERT INTO developers(
name,                  
progromming_land,      
age)                   
VALUES(          
'BAKYT',         
'PYTHON',
23);
INSERT 0 1
postgres=# 
INSERT INTO developers(
name,
progromming_land,
age)
VALUES(
'BEKA',
'JAVA',
15);
INSERT 0 1
postgres=# 
INSERT INTO developers(
name,
progromming_land,
age)
VALUES(
'GULYA',
'JAVASCRIPT',
30);
INSERT 0 1
postgres=# 
INSERT INTO developers(
name,
progromming_land,
age)
VALUES(
'BEKA',
'ASSEMBLER',
39);
INSERT 0 1

-- Добавьте к уже существующей таблице developers столбец cash.
ALTER TABLE developers ADD COLUMN cash VARCHAR;
ALTER TABLE
-- Добавьте запись Katya, 16, Python, 3000
postgres=# INSERT INTO developers(
name, 
progromming_land,
age,
cash)
postgres-# VALUES(
postgres(# 'KATYA',
postgres(# 'PYTHON',
postgres(# 16,
postgres(# 3000);
INSERT 0 1
-- Поменяйте значение возраста на 27 тех пользователей, возразраст которых больше 25.
UPDATE developers SET age='27'WHERE age >25; 
UPDATE 2
postgres=# SELECT * FROM developers;
 id | name  | progromming_land | age | cash 
----+-------+------------------+-----+------
  1 | BAKYT | PYTHON           |  23 | 
  2 | BEKA  | JAVA             |  15 | 
  5 | KATYA | PYTHON           |  16 | 3000
  3 | GULYA | JAVASCRIPT       |  27 | 
  4 | BEKA  | ASSEMBLER        |  27 | 
(5 rows)


-- Добавьте комментарий 'Имя пользователя' к столбцу name
postgres=# COMMENT ON COLUMN developers. name is 'name developer';
COMMENT



-- Измените все записи Katya в колонке name на Ekaterina.
UPDATE developers SET name='EKATERINA' WHERE name ='KATYA';
UPDATE 1
postgres=# SELECT * FROM developers;
 id |   name    | progromming_land | age | cash 
----+-----------+------------------+-----+------
  1 | BAKYT     | PYTHON           |  23 | 
  2 | BEKA      | JAVA             |  15 | 
  3 | GULYA     | JAVASCRIPT       |  27 | 
  4 | BEKA      | ASSEMBLER        |  27 | 
  5 | EKATERINA | PYTHON           |  16 | 3000
(5 rows)


-- 1. Cоздайте БД kyrgyzstan
CREATE DATABASE kyrgyzstan;
CREATE DATABASE


-- 2. Создайте таблицу developers(id, name, population):
kyrgyzstan=# CREATE TABLE developers(
id SERIAL PRIMARY KEY,
name VARCHAR,
popular INT
kyrgyzstan(# );
CREATE TABLE



-- 3. Добавьте Chuy, 100000
kyrgyzstan=# INSERT INTO developers(
kyrgyzstan(# name,
kyrgyzstan(# popular)
kyrgyzstan-# VALUES(
kyrgyzstan(# 'CHUY',
kyrgyzstan(# 100000);
INSERT 0 1



-- 4. Добавьте Osh, 200000
kyrgyzstan=# INSERT INTO developers(
name,
popular)
VALUES(
'OSH',
200000);
INSERT 0 1



-- 5. Добавьте Naryn, 300000
kyrgyzstan=# INSERT INTO developers(
name,
popular)
VALUES(
'NARYN',
300000);
INSERT 0 1
kyrgyzstan=# SELECT * FROM developers;
 id | name  | popular 
----+-------+---------
  1 | CHUY  |  100000
  2 | OSH   |  200000
  3 | NARYN |  300000
(3 rows)



-- 6. Добавьте колонку teams
kyrgyzstan=# ALTER TABLE developers ADD COLUMN teams VARCHAR;
ALTER TABLE
kyrgyzstan=# SELECT* FROM developers;
 id | name  | popular | teams 
----+-------+---------+-------
  1 | CHUY  |  100000 | 
  2 | OSH   |  200000 | 
  3 | NARYN |  300000 | 
(3 rows)



-- 7. Переименуйте колонку population на participants
kyrgyzstan=# ALTER TABLE developers RENAME COLUMN popular TO partic;
ALTER TABLE



-- 8. Удалите записи где population равен 300000
kyrgyzstan=# DELETE FROM developers WHERE partic = 300000;
DELETE 1





-- 9. Так получилось что программа подсчёта участников сломалась и во всех
-- .столбцах были добавлены лишние значения. Уменьшите количество
--участников на 7000 везде где количество больше 80000.
kyrgyzstan=# UPDATE developers  SET partic=7000 WHERE partic>80000;
UPDATE 2
kyrgyzstan=# SELECT * FROM developers;
 id | name | partic | teams 
----+------+--------+-------
  1 | CHUY |   7000 | 
  2 | OSH  |   7000 | 
(2 rows)


-- 1. Создайте БД companies
postgres=# CREATE DATABASE companies;
CREATE DATABASE



-- 2. Создайте таблицу phons(id,name,price)
CREATE TABLE phons(   
id SERIAL PRIMARY KEY,
name VARCHAR,
price INT
);
CREATE TABLE


-- 3. Добавьте запись, IPhone, 100
companies=# INSERT INTO phons(                
name,
price) 
VALUES(
'IPHONE',
100);
INSERT 0 1



-- 4. Добавьте колонку country
companies=# ALTER TABLE phons ADD COLUMN contry VARCHAR;
ALTER TABLE
companies=# SELECT * FROM phons;
 id |  name  | price | contry 
----+--------+-------+--------
  1 | IPHONE |   100 | 
(1 row)





-- 5. Добавьте запись, Samsung, 120, korea
companies=# INSERT INTO phons(
companies(# name,
companies(# price,
companies(# contry)
companies-# VALUES(
companies(# 'SAMSUNG',
companies(# 120,
companies(# 'KOREA'
companies(# );
INSERT 0 1



-- 6. Добавьте запись, Nokia, 1000, kyrgyzstan
companies=# INSERT INTO phons(
name,
price,
contry)
VALUES(
'NOKIA',
1000,
'KG'
);
INSERT 0 1



-- 7. Добавьте запись, MI, 1, uzbekstan

companies=# INSERT INTO phons(
name,
price,
contry)
VALUES(
'MI',
1,
'UZ'
);
INSERT 0 1


-- 8. Добавьте запись, Google, free, USA

companies=# INSERT INTO phons(
name,
price,
contry)
VALUES(
'GOOGLE',
'FREE',
'USA'
);
INSERT 0 1



-- 9. Создайте таблицу cars(id,name, price DEFAULT 300
companies=# CREATE TABLE cars(
companies(# id SERIAL PRIMARY KEY,
companies(# name VARCHAR,
companies(# price INT DEFAULT 300
companies(# );
CREATE TABLE





-- 10. Добавьте запись MB, 1000
companies=# INSERT INTO cars(
companies(# name,
companies(# price)
companies-# VALUES(
companies(# 'MB',
companies(# 1000
companies(# );
INSERT 0 1



-- 11. Добавьте колонку country

companies=# ALTER TABLE cars ADD COLUMN contry VARCHAR;
ALTER TABLE



-- 12. Добавьте запись Audi, 300, Germany
companies=# INSERT INTO cars(
companies(# name,
companies(# price,
companies(# contry)
companies-# VALUES(
companies(# 'AUDI',
companies(# 300,
companies(# 'GERMANY'
companies(# );
INSERT 0 1



-- 13. Добавьте запись BMW, 12000, Germany
companies=# INSERT INTO cars(
name,
price,
contry)
VALUES(
'BMW',
1200,
'GERMANY'
);
INSERT 0 1


-- 14. Добавьте запись Tulpar, 1000000, Kyrgyzstan

companies=# INSERT INTO cars(
name,
price,
contry)
VALUES(
'TULPAR',
100000,
'KG'
);
INSERT 0 1


-- 15. Добавьте значение Germany в country для MB

companies=# UPDATE cars SET  contry='GERMANY' WHERE id =1;
UPDATE 1



-- 16. Удалите записи, где цена меньше 1000
companies=# DELETE FROM cars WHERE price<1000;
DELETE 1
companies=# SELECT * FROM cars;
 id |  name  | price  | contry  
----+--------+--------+---------
  4 | TULPAR | 100000 | KG
  1 | bmw    |   1000 | GERMANY
  3 | audi   |   1200 | GERMANY
(3 rows)
