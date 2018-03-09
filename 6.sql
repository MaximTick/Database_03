USE [TickhonovichUNIVER]
GO

UPDATE [dbo].[STUDENT]
   SET [GRUP] = 5;
GO
 DELETE FROM [STUDENT] WHERE [NZach] = '71600256';
 go

select *from [STUDENT];
GO

Drop TABLE STUDENT;
GO