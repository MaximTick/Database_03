Use [TickhonovichUNIVER]
go

CREATE TABLE STUDENT10 (NZach nvarchar(20) primary key,
						��� nvarchar(60),
						����_�������� date,
						��� nvarchar(10) default '�' check(��� in ('�', '�')),
						����_����������� date);
go						

INSERT into STUDENT10(NZach, ���, ����_��������, ���, ����_�����������)
VALUES
	('4444444', '������ ���� ��������', '12-02-1999', '�', '20-09-2016'),
	('4444544','������� ����� ��������', '2005-02-12', '�', '2016-09-20'),
	('4444844','������ ����� ��������', '1999-02-12', '�', '2016-09-20'),
	('4442444','������� ��� ���������', '1998-02-12', '�', '2016-09-20'),
	('4411444','������ ���� ��������', '1999-02-12', '�', '2016-09-20'),
	('4433444','������ ���� ��������', '25-02-1998', '�', '12/07/2016');
go

INSERT INTO STUDENT10 (NZach, ���, ����_��������, ���, ����_�����������)
VALUES('1428', '������_�.�.', '25/08/1998', '�', '12/07/2016');

--		 SELECT ���, ���, DATEDIFF(YEAR, STUDENT10.����_��������, STUDENT10.����_�����������)
--		 FROM STUDENT10 WHERE (��� = N'�') 	 
--		 go
USE TickhonovichUNIVER
SELECT * FROM STUDENT10 WHERE DATEDIFF(YEAR,STUDENT10.����_��������, STUDENT10.����_�����������)>=18
 AND DATEDIFF(MONTH,STUDENT10.����_��������, STUDENT10.����_�����������)>=0 
 AND DATEDIFF(DAY,STUDENT10.����_��������, STUDENT10.����_�����������)>=0
 AND (��� = N'�');


