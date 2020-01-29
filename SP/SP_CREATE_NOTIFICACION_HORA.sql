USE [IBR_ALO_JOB]
GO

/****** Object:  StoredProcedure [dbo].[SP_CREATE_NOTIFICACION_HORA]    Script Date: 29-01-2020 14:34:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[SP_CREATE_NOTIFICACION_HORA]
                          @ID_NOTIFICACION  INT 
                         ,@HORA             SMALLINT
                         ,@MINUTO           SMALLINT




As
Begin
SET ROWCOUNT 0
SET NOCOUNT ON
SET ANSI_NULLS OFF


/*-----------------------------------------------------------------*/
/*------------------------- Begin User Code -----------------------*/
/*-----------------------------------------------------------------*/
/*-----------------------------------------------------------------*/
/* DATOS DEL SERVICIO                                              */
/*-----------------------------------------------------------------*/
/* OBJETIVO            : CREACION DE DATOS                         */
/*-----------------------------------------------------------------*/
/* PROGRAMADOR         : ROBERTO MORA DROGUETT                     */
/*-----------------------------------------------------------------*/

DECLARE @FECHA_STRING  VARCHAR(255),
		@FECHA_EJECUCION DATETIME  

SET @FECHA_STRING =  CONVERT(CHAR(10),GETDATE(),121) + ' ' +  CAST(@HORA AS VARCHAR(2)) + ':' + CAST(@MINUTO AS VARCHAR(2))
SET @FECHA_EJECUCION = CONVERT(DATETIME,@FECHA_STRING,121)

 --+ ' ' +  CONVERT(CHAR,@HORA) + ':' + CONVERT(CHAR,@MINUTO) )
 --DECLARE @FECHA_EJECUCION DATETIME = CONVERT(DATETIME, CONVERT(CHAR(10),GETDATE(),121) + ' ' +  CONVERT(CHAR,@HORA) + ':' + CONVERT(CHAR,@MINUTO) )
 --SELECT @FECHA_EJECUCION
/*-----------------------------------------------------------------*/
/* INGRESO DE REGISTROS EN TABLA CORREO                            */
/*-----------------------------------------------------------------*/
  INSERT INTO NOTIFICACION_HORA
 (ID_NOTIFICACION  , HORA           , MINUTO   ,FECHA_EJECUCION)
 VALUES
 (@ID_NOTIFICACION , @HORA          , @MINUTO  ,@FECHA_EJECUCION)

     IF @@ERROR != 0 BEGIN
	    RETURN 0
	 END
	 ELSE BEGIN
	    RETURN 1
	 END




/*-----------------------------------------------------------------*/
/*------------------------- End User Code -------------------------*/
/*-----------------------------------------------------------------*/
End





































































GO


