

/****** Object:  Database [TickhonovichUNIVER]    Script Date: 04.03.2018 18:09:06 ******/
CREATE DATABASE [TickhonovichUNIVER]
USE [TickhonovichUNIVER]
GO

CREATE TABLE [STUDENTS](НОМЕР_ЗАЧЕТКИ nvarchar(50) NOT NULL constraint PK_STUDENTS primary key,
ФАМИЛИЯ nvarchar(50) NOT NULL,
 НОМЕР_ГРУППЫ int NOT NULL)

 ALTER TABLE [STUDENTS] ADD ДАТА_ПОСТУПЛЕНИЯ date;

 ALTER TABLE [STUDENTS] DROP Column ДАТА_ПОСТУПЛЕНИЯ;


 INSERT into [STUDENTS] (НОМЕР_ЗАЧЕТКИ, ФАМИЛИЯ, НОМЕР_ГРУППЫ)
 VALUES ('71600166', 'Тихонович', 6),
		('71600135', 'Лобан', 4),
		('71600133', 'Бунчук', 4),
		('71600234', 'Коваль', 4),
		('71600534', 'Иконов', 4),
		('71600434', 'Чаевский', 4),
		('71600034', 'Гречуха', 4);

SELECT *From [STUDENTS];
Go

SELECT ФАМИЛИЯ From [STUDENTS];
Go

SELECT ФАМИЛИЯ, НОМЕР_ЗАЧЕТКИ From [STUDENTS];
Go

SELECT count (*) From [STUDENTS]; --количество строк в таблице.
Go



