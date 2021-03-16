-- Создайте БД programmers.
-- Добавьте таблицу students:
-- id - Уникальный номер записи.
-- name - Имя студента
-- age - Возраст студента
-- fp_language - Основной Язык программирования
-- sp_language - Второй Язык программирования
-- В таблицу students, добавить записи:
-- id| name  | age| fp_language | sp_language
-- 1 | Bakyt | 23 | Python      | С++
-- 2 | Aygul | 46 | Python      | Java
-- 3 | Jika  | 13 | C           | Ruby_On_Rails
-- 4 | Ermek | 16 | Java        | C
-- 5 | Artem | 55 | C#          | Java
-- 6 | Roma  | 31 | Pascal      | C
-- 7 | Beka  | 25 | C#          | JavaScript


-- CREATE database and TABLE in round
postgres=# CREATE DATABASE programmer;
CREATE DATABASE
postgres=# \c programmer
You are now connected to database "programmer" as user "postgres".
programmer=# CREATE TABLE student(
programmer(# id SERIAL PRIMARY KEY,
programmer(# name VARCHAR,
programmer(# age INT,
programmer(# fp_language VARCHAR,
programmer(# sp_language VARCHAR
programmer(# );
CREATE TABLE

programmer=# INSERT INTO student(
name,
age,
fp_language,
sp_language)
VALUES(
'BAKYT',
23,
'PYTHON',
'C++');
INSERT 0 1
programmer=# SELECT * FROM student;
 id | name  | age | fp_language | sp_language 
----+-------+-----+-------------+-------------
  1 | BAKYT |  23 | PYTHON      | C++
(1 row)

programmer=# INSERT INTO student(
name,
age,
fp_language,
sp_language)
VALUES(
'AYGUL',
46,
'PYTHON',
'JAVA');
INSERT 0 1
programmer=# INSERT INTO student(
name,
age,
fp_language,
sp_language)
VALUES(
'JIKA',
13,
'C',
'RUBY');
INSERT 0 1
programmer=# INSERT INTO student(
name,
age,
fp_language,
sp_language)
VALUES(
'ERMEK',
16,
'JAVA',
'C');
INSERT 0 1
programmer=# INSERT INTO student(
name,
age,
fp_language,
sp_language)
VALUES(
'ARTEM',
55,
'C#',
'JAVA');
INSERT 0 1
programmer=# INSERT INTO student(
name,
age,
fp_language,
sp_language)
VALUES(
'ROMA',
31,
'PASCAL',
'C');
INSERT 0 1
programmer=# INSERT INTO student(
name,
age,
fp_language,
sp_language)
VALUES(
'BEKA',
25,
'C#',
'JAVASCRIPT');
INSERT 0 1
programmer=# SELECT * FROM student;
 id | name  | age | fp_language | sp_language 
----+-------+-----+-------------+-------------
  1 | BAKYT |  23 | PYTHON      | C++
  2 | AYGUL |  46 | PYTHON      | JAVA
  3 | JIKA  |  13 | C           | RUBY
  4 | ERMEK |  16 | JAVA        | C
  5 | ARTEM |  55 | C#          | JAVA
  6 | ROMA  |  31 | PASCAL      | C
  7 | BEKA  |  25 | C#          | JAVASCRIPT
(7 rows)

-- ЗАДАНИЕ 1
-- Напишите запрос, который выводит все имена студентов и языки программирования.

programmer=# SELECT name,fp_language, sp_language FROM student;
 name  | fp_language | sp_language 
-------+-------------+-------------
 BAKYT | PYTHON      | C++
 AYGUL | PYTHON      | JAVA
 JIKA  | C           | RUBY
 ERMEK | JAVA        | C
 ARTEM | C#          | JAVA
 ROMA  | PASCAL      | C
 BEKA  | C#          | JAVASCRIPT
(7 rows)

-- ЗАДАНИЕ 2

-- Напишите запрос, который выводит возраст студентов которым больше 30.
programmer=# SELECT * FROM student WHERE age>30;
 id | name  | age | fp_language | sp_language 
----+-------+-----+-------------+-------------
  2 | AYGUL |  46 | PYTHON      | JAVA
  5 | ARTEM |  55 | C#          | JAVA
  6 | ROMA  |  31 | PASCAL      | C
(3 rows)

-- ЗАДАНИЕ 3

-- Выведите на экран всех студентов которые знают только Python или C#.

programmer=# SELECT * FROM student WHERE fp_language = 'PYTHON' OR fp_language ='C#' ;
 id | name  | age | fp_language | sp_language 
----+-------+-----+-------------+-------------
  1 | BAKYT |  23 | PYTHON      | C++
  2 | AYGUL |  46 | PYTHON      | JAVA
  5 | ARTEM |  55 | C#          | JAVA
  7 | BEKA  |  25 | C#          | JAVASCRIPT
(4 rows)

-- ЗАДАНИЕ 4
--Выведите на экран всех студентов которые знают Python и C# или C# и Java
programmer=# SELECT * FROM student WHERE fp_language = 'PYTHON' OR fp_language ='C#' OR fp_language= 'JAVA' ;
 id | name  | age | fp_language | sp_language 
----+-------+-----+-------------+-------------
  1 | BAKYT |  23 | PYTHON      | C++
  2 | AYGUL |  46 | PYTHON      | JAVA
  4 | ERMEK |  16 | JAVA        | C
  5 | ARTEM |  55 | C#          | JAVA
  7 | BEKA  |  25 | C#          | JAVASCRIPT
(5 rows)

-- ЗАДАНИЕ 5
-- Удалите всех студентов id которых равен 1, 3, 5, 7.

programmer=# DELETE FROM student WHERE id=1 OR id=3 OR id=5 OR id=7;
DELETE 4
programmer=# SELECT * FROM student;
 id | name  | age | fp_language | sp_language 
----+-------+-----+-------------+-------------
  2 | AYGUL |  46 | PYTHON      | JAVA
  4 | ERMEK |  16 | JAVA        | C
  6 | ROMA  |  31 | PASCAL      | C
(3 rows)

-- ЗАДАНИЕ 6
-- Узнайте самого молодого студента который знает Java.
programmer=# SELECT * FROM student WHERE age<20 OR fp_language='JAVA';
 id | name  | age | fp_language | sp_language 
----+-------+-----+-------------+-------------
  4 | ERMEK |  16 | JAVA        | C
(1 row)



-- ЗАДАНИЕ 7
-- Удалите таблицу students
programmer=# DROP TABLE student;
DROP TABLE



--ЗАДАНИЕ 8
-- Удалите БД programmers.
-- СНАЧАЛА НУЖНО ВЫЙТИ С ТЕРМИНАЛА ЗАЙТИ В БАЗУДАННЫХ И ПРОПИСЫВАТЬ СЛЕДУЩИТЕ КОМАНДЫ
postgres=# DROP DATABASE programmer;
DROP DATABASE



