USE [TickhonovichUNIVER]
GO

CREATE TABLE STUDENT(NZach nvarchar(50) primary key,
					Name nvarchar(50) not null);
go

Insert into STUDENT(NZach, Name)	--
Values ('71600166', 'Igor');
go

Update STUDENT set Name = NULL;		--�������� 
go

DROP TABLE STUDENT;
GO

CREATE TABLE STUDENT(NZach nvarchar(50) primary key,
					Name nvarchar(50) not null);
go

ALTER TABLE STUDENT ADD POLL nvarchar(10) default '�' check(POLL in ('�', '�'));
go

Insert into STUDENT(NZach, Name)
VALUES('71600176', 'Ivan');
go

Insert into STUDENT(NZach, Name, POLL)	--������������ check
VALUES('71600376', 'Ivan', '�');
go

UPDATE STUDENT SET POLL = 'H' WHERE Name = 'Ivan'; --������������ check
go

UPDATE STUDENT SET POLL = '�' where Name = 'Ivan'; --��� ����
go
