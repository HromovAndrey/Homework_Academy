-- Завдання 1
-- Створіть базу даних Академія (Academy), яка міститиме
-- інформацію про співробітників та внутрішній порядок академії.
-- Опис бази даних знаходиться в кінці файлу.
-- Завдання 2
-- Для бази даних Академія створіть такі запити:
-- 1. Вивести таблицю кафедр, але розташувати її поля у зворотному порядку.
-- 2. Вивести назви груп та їх рейтинги з уточненнями до назв
-- полів відповідно до назви таблиці.
-- 3. Вивести для викладачів їх прізвища, відсоток ставки по
-- відношенню до надбавки та відсоток ставки по відношенню до зарплати (сума ставки та надбавки).
-- 4. Вивести таблицю факультетів одним полем у такому форматі: «The dean of faculty [faculty] is [dean].».
-- 5. Вивести прізвища професорів, ставка яких перевищує 1050.
-- 6. Вивести назви кафедр, фонд фінансування яких менший,
-- ніж 11000 або більший за 25000.
-- 7. Вивести назви факультетів, окрім факультету «Computer
-- Science».
-- Домашнє завдання
-- 1
-- 8. Вивести прізвища та посади викладачів, які не є професорами.
-- 9. Вивести прізвища, посади, ставки та надбавки асистентів,
-- надбавка яких у діапазоні від 160 до 550.
-- 10. Вивести прізвища та ставки асистентів.
-- 11. Вивести прізвища та посади викладачів, які були прийняті
-- на роботу до 01.01.2000.
-- 12. Вивести назви кафедр, які в алфавітному порядку розміщені до кафедри «Software Development». Виведене поле
-- назвіть «Name of Department».
-- 13. Вивести прізвища асистентів із зарплатою (сума ставки
-- та надбавки) не більше 1200.
-- 14. Вивести назви груп 5-го курсу з рейтингом у діапазоні
-- від 2 до 4.
-- 15. Вивести прізвища асистентів зі ставкою менше, ніж 550
-- або надбавкою менше, ніж 200.
-- Опис
-- База даних Академія (Academy) містить інформацію про
-- співробітників та внутрішній порядок академії.
-- Викладачі, які читають лекції в академії, занесені до таблиці
-- Викладачі (Teachers), в якій зібрано основну інформацію: ім’я,
-- прізвище, дані про зарплату, дата прийому на роботу.
-- Також у базі даних є інформація про групи, яка зберігається в таблиці Групи (Groups). Дані про факультети та кафедри містяться в таблицях Факультети (Faculties) та Кафедри
-- (Departments) відповідно.
-- Домашнє завдання
-- 2
-- Таблиці
-- Нижче наведено опис структури кожної таблиці.
-- ¾ Кафедри (Departments)
-- ■ Ідентифікатор (Id). Унікальний ідентифікатор кафедри.
-- ▷ Тип даних — int.
-- ▷ Автоприріст.
-- ▷ Не містить null-значення.
-- ▷ Первинний ключ.
-- ■ Фінансування (Financing). Фонд фінансування кафедри.
-- ▷ Тип даних — money.
-- ▷ Не містить null-значення.
-- ▷ Не може бути менше, ніж 0.
-- ▷ Значення за замовчуванням — 0.
-- ■ Назва (Name). Назва кафедри.
-- ▷ Тип даних — varchar(100).
-- ▷ Не містить null-значення.
-- ▷ Не може бути порожньою.
-- ▷ Має бути унікальною.
-- ¾ Факультети(Faculties)
-- ■ Ідентифікатор (Id). Унікальний ідентифікатор факультету.
-- ▷ Тип даних — int.
-- ▷ Автоприріст.
-- ▷ Не містить null-значення.
-- ▷ Первинний ключ.
-- ■ Декан (Dean). Декан факультету.
-- ▷ Тип даних — varchar(255).
-- ▷ Не містить null-значення.
-- ▷ Не може бути порожнім.
-- Домашнє завдання
-- 3
-- ■ Назва (Name). Назва факультету.
-- ▷ Тип даних — varchar(100).
-- ▷ Не містить null-значення.
-- ▷ Не може бути порожньою.
-- ▷ Має бути унікальною.
-- ¾ Групи (Groups)
-- ■ Ідентифікатор (Id). Унікальний ідентифікатор групи.
-- ▷ Тип даних — int.
-- ▷ Автоприріст.
-- ▷ Не містить null-значення.
-- ▷ Первинний ключ.
-- ■ Назва (Name). Назва групи.
-- ▷ Тип даних — varchar(10).
-- ▷ Не містить null-значення.
-- ▷ Не може бути порожньою.
-- ▷ Має бути унікальною.
-- ■ Рейтинг (Rating). Рейтинг групи.
-- ▷ Тип даних — int.
-- ▷ Не містить null-значення.
-- ▷ Має бути в діапазоні від 0 до 5.
-- ■ Курс (Year). Курс (рік), на якому навчається група.
-- ▷ Тип даних — int.
-- ▷ Не містить null-значення.
-- ▷ Має бути в діапазоні від 1 до 5.
-- ¾ Викладачі(Teachers)
-- ■ Ідентифікатор (Id). Унікальний ідентифікатор
-- викладача.
-- ▷ Тип даних — int.
-- ▷ Автоприріст.
-- Домашнє завдання
-- 4
-- ▷ Не містить null-значення.
-- ▷ Первинний ключ.
-- ■ Дата працевлаштування (EmploymentDate). Дата працевлаштування викладача.
-- ▷ Тип даних — date.
-- ▷ Не містить null-значення.
-- ▷ Не може бути менше 01.01.1990.
-- ■ Асистент (IsAssistant). Чи є викладач асистентом.
-- ▷ Тип даних — bit.
-- ▷ Не містить null-значення.
-- ▷ Значення за замовчуванням — 0.
-- ■ Професор (IsProfessor). Чи є викладач професором.
-- ▷ Тип даних — bit.
-- ▷ Не містить null-значення.
-- ▷ Значення за замовчуванням — 0.
-- ■ Ім’я (Name). Ім’я викладача.
-- ▷ Тип даних — nvarchar(max).
-- ▷ Не містить null-значення.
-- ▷ Не може бути порожнє.
-- ■ Посада (Position). Посада викладача.
-- ▷ Тип даних — varchar(max).
-- ▷ Не містить null-значення.
-- ▷ Не може бути порожньою.
-- ■ Надбавка (Premium). Надбавка викладача.
-- ▷ Тип даних — money.
-- ▷ Не містить null-значення.
-- ▷ Не може бути менше, ніж 0.
-- ▷ Значення за замовчуванням — 0.
-- ■ Ставка (Salary). Ставка викладача.
-- Домашнє завдання
-- 5
-- ▷ Тип даних — money.
-- ▷ Не містить null-значення.
-- ▷ Не може бути меншою або дорівнювати 0.
-- ■ Прізвище (Surname). Прізвище викладача.
-- ▷ Тип даних — varchar(max).
-- ▷ Не містить null-значення.
-- ▷ Не може бути порожнє.



-- CREATE DATABASE Academy;

-- CREATE TABLE Departments (
--     Id SERIAL PRIMARY KEY,
--     Financing NUMERIC(15, 2) NOT NULL DEFAULT 0 CHECK (Financing >= 0),
--     Name VARCHAR(100) NOT NULL UNIQUE
-- );


-- CREATE TABLE Faculties (
--     Id SERIAL PRIMARY KEY,
--     Dean VARCHAR(255) NOT NULL,
--     Name VARCHAR(100) NOT NULL UNIQUE
-- );


-- CREATE TABLE Groups (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR(10) NOT NULL UNIQUE,
--     Rating INT NOT NULL CHECK (Rating BETWEEN 0 AND 5),
--     Year INT NOT NULL CHECK (Year BETWEEN 1 AND 5)
-- );


-- CREATE TABLE Teachers (
--     Id SERIAL PRIMARY KEY,
--     EmploymentDate DATE NOT NULL CHECK (EmploymentDate >= '1990-01-01'),
--     IsAssistant BOOLEAN NOT NULL DEFAULT FALSE,
--     IsProfessor BOOLEAN NOT NULL DEFAULT FALSE,
--     Name VARCHAR NOT NULL,
--     Position VARCHAR NOT NULL,
--     Premium NUMERIC(15, 2) NOT NULL DEFAULT 0 CHECK (Premium >= 0),
--     Salary NUMERIC(15, 2) NOT NULL CHECK (Salary > 0),
--     Surname VARCHAR NOT NULL
-- );

-- SELECT Name, Financing, Id FROM Departments;

-- SELECT Name AS GroupName, Rating AS GroupRating FROM Groups;
 
-- SELECT 
--     Surname,
--     (Premium / Salary) * 100 AS PremiumPercentage,
--     (Salary / (Salary + Premium)) * 100 AS SalaryPercentage
-- FROM Teachers;
 
-- SELECT CONCAT('The dean of faculty ', Name, ' is ', Dean) AS FacultyInfo FROM Faculties;

-- SELECT Surname FROM Teachers WHERE IsProfessor = TRUE AND Salary > 1050;

-- SELECT Name FROM Departments WHERE Financing < 11000 OR Financing > 25000;

-- SELECT Name FROM Faculties WHERE Name != 'Computer Science';

-- SELECT Surname, Position FROM Teachers WHERE IsProfessor = FALSE;

-- SELECT Surname, Position, Salary, Premium FROM Teachers WHERE IsAssistant = TRUE AND Premium BETWEEN 160 AND 550;

-- SELECT Surname, Salary FROM Teachers WHERE IsAssistant = TRUE;

-- SELECT Surname, Position FROM Teachers WHERE EmploymentDate < '2000-01-01';

-- SELECT Name AS "Name of Department" FROM Departments WHERE Name < 'Software Development' ORDER BY Name;

-- SELECT Name FROM Groups WHERE Year = 5 AND Rating BETWEEN 2 AND 4;

-- SELECT Surname FROM Teachers WHERE IsAssistant = TRUE AND (Salary < 550 OR Premium < 200);
