

USE IBR_ALO_JOB 
GO


IF EXISTS (SELECT 1 FROM sys.objects where name = 'TBX_ALIAS' and type = 'u') BEGIN
   DROP TABLE TBX_ALIAS
END
GO

Create table TBX_ALIAS
(TABLA      VARCHAR(255) NOT NULL
,ALIAS      VARCHAR(255) NOT NULL)

GO