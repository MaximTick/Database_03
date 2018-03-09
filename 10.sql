Use [TickhonovichUNIVER]
go

CREATE TABLE STUDENT10 (NZach nvarchar(20) primary key,
						ФИО nvarchar(60),
						Дата_рождения date,
						Пол nvarchar(10) default 'м' check(Пол in ('м', 'ж')),
						Дата_поступления date);
go						

INSERT into STUDENT10(NZach, ФИО, Дата_рождения, Пол, Дата_поступления)
VALUES
	('4444444', 'Иванов Иван Иванович', '12-02-1999', 'м', '20-09-2016'),
	('4444544','Иванова Ирина Ивановна', '2005-02-12', 'ж', '2016-09-20'),
	('4444844','Коледа Ольга Игоревна', '1999-02-12', 'ж', '2016-09-20'),
	('4442444','Грушева Яна Сергеевна', '1998-02-12', 'ж', '2016-09-20'),
	('4411444','Иванов Иван Иванович', '1999-02-12', 'м', '2016-09-20'),
	('4433444','Иванов Иван Иванович', '25-02-1998', 'м', '12/07/2016');
go

INSERT INTO STUDENT10 (NZach, ФИО, Дата_рождения, Пол, Дата_поступления)
VALUES('1428', 'Иванов_И.В.', '25/08/1998', 'м', '12/07/2016');

--		 SELECT ФИО, ПОЛ, DATEDIFF(YEAR, STUDENT10.Дата_рождения, STUDENT10.Дата_поступления)
--		 FROM STUDENT10 WHERE (Пол = N'ж') 	 
--		 go
USE TickhonovichUNIVER
SELECT * FROM STUDENT10 WHERE DATEDIFF(YEAR,STUDENT10.Дата_рождения, STUDENT10.Дата_поступления)>=18
 AND DATEDIFF(MONTH,STUDENT10.Дата_рождения, STUDENT10.Дата_поступления)>=0 
 AND DATEDIFF(DAY,STUDENT10.Дата_рождения, STUDENT10.Дата_поступления)>=0
 AND (Пол = N'ж');


