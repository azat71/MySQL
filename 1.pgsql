-- Создайте БД tourist;
-- Внутри БД создайте 2 ТАБЛИЦЫ:
-- inner_flights
-- outter_flights
-- В таблице inner_flights должны хранится такие поля как:
-- id - уникальный идентификатор каждой записи
-- from_region - Регион Вылета
-- to_destination - Регион Прилёта
-- company - Компания которая занимается перевозкой
-- quantity - Количество человек летящее этим рейсом
-- В таблице outter_flights должны быть такие поля как:
-- id - уникальный идентификатор каждой записи
-- from_country - Страна вылета
-- to_country - Страна прилёта
-- flight_type - Грузовой или Пассажирский
-- company - Компания которая занимается перевозкой
-- neighbors - Количество стран через которые самолёт будет пролетать.

-- Таблица 1
CREATE DATABASE tourist;
CREATE DATABASE
postgres=# \c tourist
You are now connected to database "tourist" as user "postgres".
CREATE TABLE inner_flights(
id SERIAL PRIMARY KEY,
from_region VARCHAR,
to_destination VARCHAR,
company VARCHAR,
quantity INT
);
-- Указываем значение и добавляем аргументы
tourist=# INSERT INTO inner_flyghts(
from_region,
to_destination,
company,
quantity)
VALUES(
'Osh',
'Center',
'Bishkek_airlines',
150);
tourist=# SELECT * FROM inner_flyghts;
 id | from_region | to_destination |      company      | quantity 
----+-------------+----------------+-------------------+----------
  1 | Osh         | Center         | Bishkek_airlines  |      150
  2 | Bosh        | Osh            | ishkek_airlines   |        1
  3 | Zosh        | Bosh           | Chichkek_airlines |        2
  4 | Papay       | Gadji          | Chiken_airlines   |      332
  5 | Auf         | AjaraGudju     | Fuu_airlines      |      111
  6 | Region      | Region1        | Region_airlines   |       31
  7 | Region2     | Region3        | Reg_airlines      |    11123
  8 | Region4     | Region5        | Regi_airlines     |      423
  9 | Region6     | Region7        | Refqqf_airlines   |     2223
 10 | Region8     | Region9        | R_airlines        |       23
 11 | Region10    | Region11       | Ru_airlines       |      773
 12 | Region12    | Region31       | Rig_airlines      |     7111
 13 | Region14    | Region15       | Hehe_airlines     |    22211
 14 | Region16    | Region17       | Haha_airlines     |        1
 15 | Region141   | Region1741     | Hihi_airlines     |    12345
(15 rows)
-- Таблица 2
tourist=# CREATE TABLE outter_flights(
tourist(# id SERIAL PRIMARY KEY,
tourist(# from_country VARCHAR,
tourist(# to_country VARCHAR,
tourist(# flight_type VARCHAR,
tourist(# company VARCHAR,
tourist(# neighbors INT
tourist(# );
-- Указываем значение и добавляем аргументы
tourist=# INSERT INTO outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors) 
VALUES(
'fs',
'ddfsa',
'ddff',
'sddsef',
1131243);
tourist=# SELECT * FROM inner_flyghts;
 id | from_region | to_destination |      company      | quantity 
----+-------------+----------------+-------------------+----------
  1 | Osh         | Center         | Bishkek_airlines  |      150
  2 | Bosh        | Osh            | ishkek_airlines   |        1
  3 | Zosh        | Bosh           | Chichkek_airlines |        2
  4 | Papay       | Gadji          | Chiken_airlines   |      332
  5 | Auf         | AjaraGudju     | Fuu_airlines      |      111
  6 | Region      | Region1        | Region_airlines   |       31
  7 | Region2     | Region3        | Reg_airlines      |    11123
  8 | Region4     | Region5        | Regi_airlines     |      423
  9 | Region6     | Region7        | Refqqf_airlines   |     2223
 10 | Region8     | Region9        | R_airlines        |       23
 11 | Region10    | Region11       | Ru_airlines       |      773
 12 | Region12    | Region31       | Rig_airlines      |     7111
 13 | Region14    | Region15       | Hehe_airlines     |    22211
 14 | Region16    | Region17       | Haha_airlines     |        1
 15 | Region141   | Region1741     | Hihi_airlines     |    12345
(15 rows)

-- Создайте по 15 записей в каждой таблице с разными значениями.
-- Из таблицы inner_flights выведите все записи.
-- Из таблицы inner_flights выведите только те строки где id больше 10.
-- Из таблицы inner_flights выведите только те строки где страна прилёта Ош или Бишкек.
-- Из таблицы inner_flights выведите только те строки где количество пассажиров больше 150.
-- Из таблицы outter_flights выведите только имена компаний которые занимаются перевозкой.
-- Из таблицы outter_flights выведите только те строки где id меньше 7.
-- Из таблицы outter_flights выведите только те строки где тип рейса грузовой.
-- Из таблицы outter_flights выведите только те строки где самолёт пролетает больше чем над 3 странами.
-- Из таблицы outter_flights выведите только те строки где самолёт пролетает меньше чем над 3 странами И тип рейса пассажирский.
-- Из таблицы outter_flights выведите только имена всех компаний и страны прилёта



'''Задание №1'''
tourist=# SELECT * FROM inner_flyghts WHERE id > 10;
 id | from_region | to_destination |    company    | quantity 
----+-------------+----------------+---------------+----------
 11 | Region10    | Region11       | Ru_airlines   |      773
 12 | Region12    | Region31       | Rig_airlines  |     7111
 13 | Region14    | Region15       | Hehe_airlines |    22211
 14 | Region16    | Region17       | Haha_airlines |        1
 15 | Region141   | Region1741     | Hihi_airlines |    12345
(5 rows)
'''Доп1(По id выводим только столбец from_region)'''
tourist=# SELECT from_region FROM inner_flyghts WHERE id > 10;
 from_region 
-------------
 Region10
 Region12
 Region14
 Region16
 Region141
(5 rows)
'''Доп2 (Вытаскиваем строку по столбцу с одним значением)'''
tourist=# SELECT *  FROM inner_flyghts WHERE from_region = 'Osh';
 id | from_region | to_destination |     company      | quantity 
----+-------------+----------------+------------------+----------
  1 | Osh         | Center         | Bishkek_airlines |      150
(1 row)
'''Доп3(По двум id выводим все значения строк)'''
tourist=# SELECT * FROM inner_flyghts WHERE id = 1 OR id = 2;
 id | from_region | to_destination |     company      | quantity 
----+-------------+----------------+------------------+----------
  1 | Osh         | Center         | Bishkek_airlines |      150
  2 | Bosh        | Osh            | ishkek_airlines  |        1
(2 rows)

'''Задание №2'''
tourist=# SELECT * FROM inner_flyghts WHERE from_region = 'Osh' OR from_region = 'Bosh';
 id | from_region | to_destination |     company      | quantity 
----+-------------+----------------+------------------+----------
  1 | Osh         | Center         | Bishkek_airlines |      150
  2 | Bosh        | Osh            | ishkek_airlines  |        1
(2 rows)

'''Задание №3'''
tourist=# SELECT * FROM inner_flyghts WHERE quantity > 150;
 id | from_region | to_destination |     company     | quantity 
----+-------------+----------------+-----------------+----------
  4 | Papay       | Gadji          | Chiken_airlines |      332
  7 | Region2     | Region3        | Reg_airlines    |    11123
  8 | Region4     | Region5        | Regi_airlines   |      423
  9 | Region6     | Region7        | Refqqf_airlines |     2223
 11 | Region10    | Region11       | Ru_airlines     |      773
 12 | Region12    | Region31       | Rig_airlines    |     7111
 13 | Region14    | Region15       | Hehe_airlines   |    22211
 15 | Region141   | Region1741     | Hihi_airlines   |    12345
(8 rows)

'''Задание №4'''
tourist=# SELECT * FROM outter_flyghts WHERE flight_type = 'Passanger' OR flight_type = 'passander';
 id | from_country | to_country | flight_type |      company       | neighbors 
----+--------------+------------+-------------+--------------------+-----------
  1 | Armeny       | Butan      | passander   | Yahooairlines      |        18
  2 | Angola       | Abhazia    | passander   | Kukuairlines       |        23
  5 | Osh          | Spain      | Passanger   | Bazar_jok_airlines |        34
  6 | Bishkek      | Russia     | Passanger   | Airoflot           |        15
 12 | Ganduras     | Dania      | Passanger   | Luly_cebab_air     |         7
 13 | Catar        | China      | Passanger   | Luly_air           |        14
 14 | Kazahstan    | Kambodja   | Passanger   | Love_air           |        23
 15 | Tatarstan    | Almetivsky | Passanger   | Love_story_air     |        31
(8 rows)

'''Задание №5'''
tourist=# SELECT * FROM outter_flyghts WHERE id < 7;
 id | from_country | to_country | flight_type |      company       | neighbors 
----+--------------+------------+-------------+--------------------+-----------
  1 | Armeny       | Butan      | passander   | Yahooairlines      |        18
  2 | Angola       | Abhazia    | passander   | Kukuairlines       |        23
  3 | Afganistan   | Albany     | cargo       | Albanyairlines     |        11
  4 | Russia       | Brasil     | cargo       | Brasilairlines     |        51
  5 | Osh          | Spain      | Passanger   | Bazar_jok_airlines |        34
  6 | Bishkek      | Russia     | Passanger   | Airoflot           |        15
(6 rows)

'''Задание №6'''
tourist=# SELECT * FROM outter_flyghts WHERE flight_type = 'cargo';
 id | from_country | to_country | flight_type |    company     | neighbors 
----+--------------+------------+-------------+----------------+-----------
  3 | Afganistan   | Albany     | cargo       | Albanyairlines |        11
  4 | Russia       | Brasil     | cargo       | Brasilairlines |        51
  7 | Bish         | Kutlekutyn | cargo       | Airoflot       |         1
  8 | Kish         | Kutka      | cargo       | AirJapan       |         5
  9 | Ejipt        | Irak       | cargo       | Airhan         |         6
 10 | Djibuti      | Greece     | cargo       | AirJon         |         8
 11 | Italy        | Columbia   | cargo       | Airbaber       |        10
(7 rows)

'''Задание №7'''
tourist=# SELECT * FROM outter_flyghts WHERE neighbors > 3;
 id | from_country | to_country | flight_type |      company       | neighbors 
----+--------------+------------+-------------+--------------------+-----------
  1 | Armeny       | Butan      | passander   | Yahooairlines      |        18
  2 | Angola       | Abhazia    | passander   | Kukuairlines       |        23
  3 | Afganistan   | Albany     | cargo       | Albanyairlines     |        11
  4 | Russia       | Brasil     | cargo       | Brasilairlines     |        51
  5 | Osh          | Spain      | Passanger   | Bazar_jok_airlines |        34
  6 | Bishkek      | Russia     | Passanger   | Airoflot           |        15
  8 | Kish         | Kutka      | cargo       | AirJapan           |         5
  9 | Ejipt        | Irak       | cargo       | Airhan             |         6
 10 | Djibuti      | Greece     | cargo       | AirJon             |         8
 11 | Italy        | Columbia   | cargo       | Airbaber           |        10
 12 | Ganduras     | Dania      | Passanger   | Luly_cebab_air     |         7
 13 | Catar        | China      | Passanger   | Luly_air           |        14
 14 | Kazahstan    | Kambodja   | Passanger   | Love_air           |        23
 15 | Tatarstan    | Almetivsky | Passanger   | Love_story_air     |        31
(14 rows)

'''Задание №8'''
tourist=# SELECT * FROM outter_flyghts WHERE neighbors < 3 AND flight_type = 'Passanger' OR flight_type = 'passander';
 id | from_country | to_country | flight_type |    company    | neighbors 
----+--------------+------------+-------------+---------------+-----------
  1 | Armeny       | Butan      | passander   | Yahooairlines |        18
  2 | Angola       | Abhazia    | passander   | Kukuairlines  |        23
(2 rows)

'''Задание №9'''
tourist=# SELECT company,to_country  FROM outter_flyghts;
      company       | to_country 
--------------------+------------
 Yahooairlines      | Butan
 Kukuairlines       | Abhazia
 Albanyairlines     | Albany
 Brasilairlines     | Brasil
 Bazar_jok_airlines | Spain
 Airoflot           | Russia
 Airoflot           | Kutlekutyn
 AirJapan           | Kutka
 Airhan             | Irak
 AirJon             | Greece
 Airbaber           | Columbia
 Luly_cebab_air     | Dania
 Luly_air           | China
 Love_air           | Kambodja
 Love_story_air     | Almetivsky
(15 rows)


tourist=#  SELECT * FROM  outter_flights WHERE neighbors>3;
id | from_country  |   to_country    | flight_type  |     company     | neighbors 
----+---------------+-----------------+--------------+-----------------+-----------
  2 | sas           | dsa             | dsf          | sdsf            |       123
  3 | s             | ddsa            | ddf          | sddsf           |      1123
  4 | fs            | ddfsa           | ddff         | sddsef          |   1131243
  5 | rfs           | dsa             | df           | ssef            |       143
  6 | rfdfs         | dsfda           | fdf          | ssref           |     14433
  7 | rfdfs         | dsfda           | fdf          | ssref           |        33
  8 | rfdhfhfs      | dsfjhda         | fgdf         | ssrtef          |       165
  9 | rfdhfhfhgds   | dsfjhdajjhh     | fgdfnf       | ssrhttef        |     16765
 10 | rfdhfhfhgdgfs | dsfjhdajjhjgklh | fgdjhkjlyfnf | sshjtrhttef     |  16765675
 11 | rfhgdghjkfs   | dsflh           | fnf          | tef             |        34
 12 | rfhfs         | dsflkjh         | fjnf         | tythef          |    345654
 13 | rfjhkhfs      | dsflkhgjfjh     | fjynf        | tythtyef        |        34
 14 | rfjhkhfs      | dsrtflkhgjfjh   | fjynf        | tythtytrthef    |     35664
:

'''Задание 11'''
tourist=# SELECT * FROM  outter_flights WHERE neighbors<3;
 id | from_country | to_country | flight_type | company | neighbors 
----+--------------+------------+-------------+---------+-----------
  1 | SDSFGFH      | SFGH       | CVTBY       | VRBTNY  |         1
(1 row)
