

/****** Object:  Database [TickhonovichUNIVER]    Script Date: 04.03.2018 18:09:06 ******/
CREATE DATABASE [TickhonovichUNIVER]
USE [TickhonovichUNIVER]
GO

CREATE TABLE [STUDENTS](�����_������� nvarchar(50) NOT NULL constraint PK_STUDENTS primary key,
������� nvarchar(50) NOT NULL,
 �����_������ int NOT NULL)

 ALTER TABLE [STUDENTS] ADD ����_����������� date;

 ALTER TABLE [STUDENTS] DROP Column ����_�����������;


 INSERT into [STUDENTS] (�����_�������, �������, �����_������)
 VALUES ('71600166', '���������', 6),
		('71600135', '�����', 4),
		('71600133', '������', 4),
		('71600234', '������', 4),
		('71600534', '������', 4),
		('71600434', '��������', 4),
		('71600034', '�������', 4);

SELECT *From [STUDENTS];
Go

SELECT ������� From [STUDENTS];
Go

SELECT �������, �����_������� From [STUDENTS];
Go

SELECT count (*) From [STUDENTS]; --���������� ����� � �������.
Go



