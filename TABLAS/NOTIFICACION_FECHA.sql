

USE IBR_ALO_JOB 
GO


IF EXISTS (SELECT 1 FROM sys.objects where name = 'NOTIFICACION_FECHA' and type = 'u') BEGIN
   DROP TABLE NOTIFICACION_FECHA
END
GO

Create table NOTIFICACION_FECHA
(ID				  INT IDENTITY,
 ID_NOTIFICACION  INT  NOT NULL
,FECHA_INICIO     DATE NOT NULL
,FECHA_FINAL      DATE NOT NULL)

GO
ALTER TABLE NOTIFICACION_FECHA ADD PRIMARY KEY NONCLUSTERED (ID)
GO
CREATE CLUSTERED INDEX K_ID_NOTIFICACION ON  NOTIFICACION_FECHA(ID_NOTIFICACION)
GO


