USE [TickhonovichUNIVER]
GO

CREATE TABLE STUDENT(NZach nvarchar(50) primary key,
					Name nvarchar(50) not null);
go

Insert into STUDENT(NZach, Name)	--
Values ('71600166', 'Igor');
go

Update STUDENT set Name = NULL;		--проверка 
go

DROP TABLE STUDENT;
GO

CREATE TABLE STUDENT(NZach nvarchar(50) primary key,
					Name nvarchar(50) not null);
go

ALTER TABLE STUDENT ADD POLL nvarchar(10) default 'м' check(POLL in ('м', 'ж'));
go

Insert into STUDENT(NZach, Name)
VALUES('71600176', 'Ivan');
go

Insert into STUDENT(NZach, Name, POLL)	--демонстрация check
VALUES('71600376', 'Ivan', 'к');
go

UPDATE STUDENT SET POLL = 'H' WHERE Name = 'Ivan'; --демонстрация check
go

UPDATE STUDENT SET POLL = 'ж' where Name = 'Ivan'; --для себя
go
