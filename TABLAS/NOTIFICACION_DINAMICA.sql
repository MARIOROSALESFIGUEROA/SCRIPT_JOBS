

USE IBR_ALO_JOB 
GO


IF EXISTS (SELECT 1 FROM sys.objects where name = 'NOTIFICACION_DINAMICA' and type = 'u') BEGIN
   DROP TABLE NOTIFICACION_DINAMICA
END
GO

Create table NOTIFICACION_DINAMICA
(ID				  INT IDENTITY
,ID_NOTIFICACION  INT      NOT NULL
,NUMERO           INT      NOT NULL
,TIEMPO           CHAR(01) NOT NULL
,HORA_INI         INT      NOT NULL
,MINUTO_INI       INT      NOT NULL
,HORA_FIN         INT      NOT NULL
,MINUTO_FIN       INT      NOT NULL
)

GO
ALTER TABLE NOTIFICACION_DINAMICA ADD PRIMARY KEY NONCLUSTERED (ID)
GO
CREATE CLUSTERED INDEX K_ID_NOTIFICACION  ON NOTIFICACION_DINAMICA (ID_NOTIFICACION);
GO



