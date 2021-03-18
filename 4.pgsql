-- 1. Посчитайте количество записей
SELECT count(*) FROM part4;

-- 2. Сколько followerОВ у самого знаменитого пользователя

SELECT MAX(followers) FROM  part4;



-- 3. Напишите запрос, который выводит всю информацию самого знаменитого пользователя

SELECT * FROM part4 WHERE followers=(SELECT MAX(followers)FROM part4);



-- 4. Найдите среднее количество подписчиков

SELECT AVG(followers) FROM part4;

-- 5. Отсортируйте всех пользователей по логину

SELECT users  FROM   part4 ORDER BY users;

-- 6. Отсортируйте всех пользователей по стране
SELECT country  FROM   part4 ORDER BY country;


-- 7. Отсортируйте всех пользователей по email
SELECT email  FROM   part4 ORDER BY email;



-- 8. Напишите запрос,который выводит id из колонки пользователей и имя из колонки clients
SELECT id, clients FROM part42;


-- 9. Напишите запрос,который выводит всё о пользователе, чей логин содержит as, cg, si, am, qwe, er, ka, an
SELECT * FROM part42 WHERE users ~ '(as|cg|si|am|qwe|er|ka|an)';




SELECT * FROM part42 WHERE users LIKE '%as%'OR users LIKE '%cg%'OR users LIKE '%si%'OR users LIKE '%am%' OR users  LIKE '%qwe%' OR users LIKE '%er% 'OR users LIKE '%ka%' OR users LIKE '%an%';

-- 10. Напишите запрос,который выводит всё о пользователе, чей логин заканчивается на lol, kan, ck, ie. ig
SELECT * FROM part42 WHERE users LIKE '%lol'OR users LIKE '%kan'OR users LIKE '%ck'OR users LIKE '%ie' OR users  LIKE '%ig%';


-- 11. Напишите запрос, который выводит всё о пользователе, чей логин начинается на a, b, c, d, M, D, A
SELECT * FROM part42 WHERE users LIKE 'a%'OR users LIKE 'b%'OR users LIKE 'c%'OR users LIKE 'd%' OR users  LIKE 'M%' OR users  LIKE 'D%' OR users  LIKE 'A';


-- 12. 12.Как зовут самого знаменитого Сеньор Программиста(Senior Programmer) из Израиля(Israel)?
SELECT *  FROM part42 WHERE profession = 'Senior Editor' AND country = 'Israel';


-- 1. Выведите на экран всех пользователей у кого пустая почта.

SELECT * FROM part42 WHERE  email is NULL;

SELECT clients  FROM part42 WHERE email IS NULL;


-- 2. Посчитайте сколько пользователей у которых нет email живут на Chui.
SELECT * FROM part42 WHERE  email is NULL AND country='China';



-- 3. Покажите имена и номера телефонов всех людей которые работают как Web Developer
SELECT first_name, phone_number FROM part42 WHERE profession= 'Professor';



-- 4. У всех пользователей у которых почта ровняется False обновите почту на user@gmail.com.
 UPDATE part42 SET email = 'user@gmail.com' WHERE email = 'False';


-- 5. Узнайте из каких стран люди которые не имею работы(Unemployed).
SELECT country, first_name FROM part42 WHERE profession IS NULL;

-- 6. Везде где номер телефона начинается с 000 замените его любой РЕАЛЬНЫЙ номер в формате
-- столбца phone_number.
UPDATE part42 SET phone_number = '(996)999699026' WHERE phone_number LIKE '(444)%';



-- 7. 12345, user123б, qwerty считается лёгкими паролями у каждого пользователя у кого лёгкий
-- пароль удалите из Базы Данных.
DELETE FROM part42  WHERE password = 'VDLKIa' OR password = 'ShdqfK' OR password = 'JdejS9g';



-- 8. Выведите на экран email всех .NET Developer разработчиков и отсортируйте их по Имени.

SELECT email FROM part42 WHERE profession = 'Senior Editor' ORDER BY clients;
 