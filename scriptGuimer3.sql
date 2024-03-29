USE [BD_Guimer2]
GO
/****** Object:  Table [dbo].[ASISTENCIA]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASISTENCIA](
	[id_asis] [int] NOT NULL,
	[codigo_estu] [int] NULL,
	[obsercacion_asis] [varchar](50) NOT NULL,
	[tipo_asis] [varchar](50) NOT NULL,
	[id_eve] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_asis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ASISTENCIA2]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASISTENCIA2](
	[id_eve] [int] NULL,
	[codigo_estu] [int] NULL,
	[id_escu] [int] NULL,
	[observacion_asis] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARGO]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGO](
	[id_cargo] [int] NOT NULL,
	[nombre_cargo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONVOCATORIA]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONVOCATORIA](
	[id_convo] [int] NOT NULL,
	[año_convo] [varchar](50) NOT NULL,
	[observacion_convo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_convo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESCUELA]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESCUELA](
	[id_escu] [int] NOT NULL,
	[id_facu] [int] NULL,
	[iniciales_escu] [varchar](50) NOT NULL,
	[nombre_escu] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_escu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTUDIANTE]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTUDIANTE](
	[id_estu] [int] IDENTITY(1,1) NOT NULL,
	[codigo_estu] [int] NOT NULL,
	[dni_estu] [varchar](50) NOT NULL,
	[nombre_estu] [varchar](50) NOT NULL,
	[apellidos_estu] [varchar](50) NOT NULL,
	[sexo_estu] [varchar](30) NOT NULL,
	[fechanaci_estu] [varchar](50) NOT NULL,
	[direccion_estu] [varchar](30) NOT NULL,
	[telefono_estu] [varchar](10) NOT NULL,
	[email_estu] [varchar](30) NOT NULL,
	[id_facu] [int] NULL,
	[id_escu] [int] NULL,
	[id_convo] [int] NULL,
	[id_mod] [int] NULL,
	[fecha_estu] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_estu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EVENTO]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENTO](
	[id_eve] [int] NOT NULL,
	[titulo_eve] [varchar](50) NOT NULL,
	[descripcion_eve] [varchar](50) NOT NULL,
	[estado_eve] [varchar](250) NOT NULL,
	[id_ubi] [int] NULL,
	[fecha_eve] [varchar](50) NOT NULL,
	[horainicio_eve] [varchar](250) NOT NULL,
	[horafin_eve] [varchar](250) NOT NULL,
	[id_respo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_eve] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACULTDAD]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACULTDAD](
	[id_facu] [int] NOT NULL,
	[iniciales_facu] [varchar](50) NOT NULL,
	[nombre_facu] [varchar](50) NOT NULL,
	[id_uni] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_facu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACULTDADINVITADA]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACULTDADINVITADA](
	[id_eve] [int] NULL,
	[id_facu] [int] NULL,
	[nombre_facu] [varchar](50) NOT NULL,
	[id_escu] [int] NULL,
	[nomnre_escu] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HORARIO]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HORARIO](
	[id_hora] [int] NOT NULL,
	[fecha_hora] [datetime] NOT NULL,
	[horainicio_hora] [varchar](50) NOT NULL,
	[horafinal_hora] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVITADOS]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVITADOS](
	[id_eve] [int] NULL,
	[nombre_escu] [varchar](50) NOT NULL,
	[id_escu] [int] NULL,
	[codigo_estu] [int] NULL,
	[nombre_estu] [varchar](50) NOT NULL,
	[estado_estu] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MODALIDAD]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODALIDAD](
	[id_mod] [int] NOT NULL,
	[modalidad_mod] [varchar](50) NOT NULL,
	[descripcion_mod] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_mod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESPONSABLE]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESPONSABLE](
	[id_respo] [int] NOT NULL,
	[nombre_respo] [varchar](50) NOT NULL,
	[apellido_respo] [varchar](50) NOT NULL,
	[id_cargo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_respo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UBICACION]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UBICACION](
	[id_ubi] [int] NOT NULL,
	[lugar_ubi] [varchar](50) NOT NULL,
	[direccion_ubi] [varchar](50) NOT NULL,
	[referencia_ubi] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ubi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UNIVERSIDAD]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UNIVERSIDAD](
	[id_uni] [int] NOT NULL,
	[nombre_uni] [varchar](50) NOT NULL,
	[direccion_uni] [varchar](50) NOT NULL,
	[telefono_uni] [varchar](250) NOT NULL,
	[email_uni] [varchar](50) NOT NULL,
	[web_uni] [varchar](20) NOT NULL,
	[ruc_uni] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_uni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[codigo_usu] [int] NOT NULL,
	[dni_usu] [varchar](50) NOT NULL,
	[nombre_usu] [varchar](50) NOT NULL,
	[apellidos_usu] [varchar](50) NOT NULL,
	[sexo_usu] [varchar](30) NOT NULL,
	[fechanaci_usu] [varchar](50) NOT NULL,
	[direccion_usu] [varchar](30) NOT NULL,
	[telefono_usu] [varchar](10) NOT NULL,
	[email_usu] [varchar](30) NOT NULL,
	[usuario_usu] [varchar](30) NOT NULL,
	[clave_usu] [varchar](30) NOT NULL,
	[estado_usu] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_usu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASISTENCIA]  WITH CHECK ADD FOREIGN KEY([codigo_estu])
REFERENCES [dbo].[ESTUDIANTE] ([codigo_estu])
GO
ALTER TABLE [dbo].[ASISTENCIA]  WITH CHECK ADD FOREIGN KEY([id_eve])
REFERENCES [dbo].[EVENTO] ([id_eve])
GO
ALTER TABLE [dbo].[ASISTENCIA2]  WITH CHECK ADD FOREIGN KEY([codigo_estu])
REFERENCES [dbo].[ESTUDIANTE] ([codigo_estu])
GO
ALTER TABLE [dbo].[ASISTENCIA2]  WITH CHECK ADD FOREIGN KEY([id_escu])
REFERENCES [dbo].[ESCUELA] ([id_escu])
GO
ALTER TABLE [dbo].[ASISTENCIA2]  WITH CHECK ADD FOREIGN KEY([id_eve])
REFERENCES [dbo].[EVENTO] ([id_eve])
GO
ALTER TABLE [dbo].[ESCUELA]  WITH CHECK ADD FOREIGN KEY([id_facu])
REFERENCES [dbo].[FACULTDAD] ([id_facu])
GO
ALTER TABLE [dbo].[ESTUDIANTE]  WITH CHECK ADD FOREIGN KEY([id_convo])
REFERENCES [dbo].[CONVOCATORIA] ([id_convo])
GO
ALTER TABLE [dbo].[ESTUDIANTE]  WITH CHECK ADD FOREIGN KEY([id_escu])
REFERENCES [dbo].[ESCUELA] ([id_escu])
GO
ALTER TABLE [dbo].[ESTUDIANTE]  WITH CHECK ADD FOREIGN KEY([id_facu])
REFERENCES [dbo].[FACULTDAD] ([id_facu])
GO
ALTER TABLE [dbo].[ESTUDIANTE]  WITH CHECK ADD FOREIGN KEY([id_mod])
REFERENCES [dbo].[MODALIDAD] ([id_mod])
GO
ALTER TABLE [dbo].[EVENTO]  WITH CHECK ADD FOREIGN KEY([id_respo])
REFERENCES [dbo].[RESPONSABLE] ([id_respo])
GO
ALTER TABLE [dbo].[EVENTO]  WITH CHECK ADD FOREIGN KEY([id_ubi])
REFERENCES [dbo].[UBICACION] ([id_ubi])
GO
ALTER TABLE [dbo].[FACULTDAD]  WITH CHECK ADD FOREIGN KEY([id_uni])
REFERENCES [dbo].[UNIVERSIDAD] ([id_uni])
GO
ALTER TABLE [dbo].[FACULTDADINVITADA]  WITH CHECK ADD FOREIGN KEY([id_escu])
REFERENCES [dbo].[ESCUELA] ([id_escu])
GO
ALTER TABLE [dbo].[FACULTDADINVITADA]  WITH CHECK ADD FOREIGN KEY([id_eve])
REFERENCES [dbo].[EVENTO] ([id_eve])
GO
ALTER TABLE [dbo].[FACULTDADINVITADA]  WITH CHECK ADD FOREIGN KEY([id_facu])
REFERENCES [dbo].[FACULTDAD] ([id_facu])
GO
ALTER TABLE [dbo].[INVITADOS]  WITH CHECK ADD FOREIGN KEY([codigo_estu])
REFERENCES [dbo].[ESTUDIANTE] ([codigo_estu])
GO
ALTER TABLE [dbo].[INVITADOS]  WITH CHECK ADD FOREIGN KEY([id_escu])
REFERENCES [dbo].[ESCUELA] ([id_escu])
GO
ALTER TABLE [dbo].[RESPONSABLE]  WITH CHECK ADD FOREIGN KEY([id_cargo])
REFERENCES [dbo].[CARGO] ([id_cargo])
GO
/****** Object:  StoredProcedure [dbo].[SP_Asistencia_I]    Script Date: 21/11/2018 8:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Asistencia_I]  	
	@id_eve int ,
	@codigo_estu int ,
	@id_escu int,
	@observacion_asis varchar(50)
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.ASISTENCIA2(id_eve,codigo_estu,id_escu,observacion_asis)
	VALUES (@id_eve,@codigo_estu,@id_escu,@observacion_asis)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Cargo_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_Cargo_I]   	
	@pid_cargo int,
	@pnombre_cargo varchar(50)
	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.CARGO(id_cargo,nombre_cargo)
	VALUES (@pid_cargo,@pnombre_cargo)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Cargo_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SP_Cargo_S] 
AS
 BEGIN  
     SELECT id_cargo,nombre_cargo FROM dbo.CARGO
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Comvocatoria_Consulta]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_Comvocatoria_Consulta]
AS
 BEGIN  
     select  u.id_convo, p.año_convo,COUNT(u.id_convo) AS cantidad  from ESTUDIANTE AS u
INNER JOIN dbo.CONVOCATORIA as p
on u.id_convo=1
 group by u.id_convo,p.año_convo
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Consulta_Cantidad_Estudiantes]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Consulta_Cantidad_Estudiantes]

 @id_escuela int
AS
 BEGIN  
  select count(*) as cantidad from ESTUDIANTE
 where id_escu=@id_escuela

 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Consulta_EstudiatesPorEscuela]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Consulta_EstudiatesPorEscuela]
 @id_escuela int
AS
 BEGIN  

select id_escu,codigo_estu,nombre_estu from ESTUDIANTE
 where id_escu=@id_escuela

 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Convocatoria_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SP_Convocatoria_I]   	
	@pid_convo			int,
	@paño_convo		varchar(50),
	@pobservacion_convo	varchar(50)
	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.CONVOCATORIA(id_convo,año_convo,observacion_convo)
	VALUES (@pid_convo,@paño_convo,@pobservacion_convo)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Convocatoria_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_Convocatoria_S] 
AS
 BEGIN  
     SELECT id_convo,año_convo,observacion_convo FROM dbo.CONVOCATORIA
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Escuela_Consulta]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




 CREATE PROCEDURE [dbo].[SP_Escuela_Consulta] 
AS
 BEGIN  
     select  u.id_escu, p.iniciales_escu,COUNT(u.id_escu) AS cantidad  from ESTUDIANTE AS u

INNER JOIN dbo.ESCUELA as p

on u.id_escu=p.id_escu
 group by u.id_escu,p.iniciales_escu
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Escuela_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Escuela_I]   	
	@pid_escu			int,
	@pid_facu			int,
	@piniciales_escu	varchar(50),
	@pnombre_escu		varchar(50)

	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.ESCUELA(id_escu,id_facu,iniciales_escu,nombre_escu)
	VALUES (@pid_escu,@pid_facu,@piniciales_escu,@pnombre_escu)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Escuela_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Escuela_S] 
AS
 BEGIN  
     SELECT id_escu,iniciales_escu,nombre_escu FROM dbo.ESCUELA
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Estudiante_D]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_Estudiante_D]
    @id int 	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	DELETE FROM dbo.ESTUDIANTE
	 WHERE codigo_estu = @id
COMMIT
  END TRY
 BEGIN CATCH
  ROLLBACK
 END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Estudiante_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_Estudiante_I]   	
	
@pcodigo_estu  int,
@pdni_estu varchar(50),
@pnombre_estu varchar(50),
@papellidos_estu varchar(50) ,
@psexo_estu varchar(30),
@pfechanaci_estu varchar(50),
@pdireccion_estu varchar(30),
@ptelefono_estu varchar(10) ,
@pemail_estu varchar(30),
@pid_facu int,
@pid_escu int,
@pid_convo int,
@pid_mod int

	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.ESTUDIANTE(codigo_estu,dni_estu,nombre_estu,apellidos_estu,sexo_estu,fechanaci_estu,direccion_estu,telefono_estu,email_estu,id_facu,id_escu,id_convo,id_mod,fecha_estu)
	VALUES (@pcodigo_estu,@pdni_estu,@pnombre_estu,@papellidos_estu,@psexo_estu,@pfechanaci_estu,@pdireccion_estu,@ptelefono_estu,@pemail_estu,@pid_facu,@pid_escu,@pid_convo,@pid_mod,GETDATE())
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Estudiante_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Estudiante_S] 
AS
 BEGIN  
     SELECT codigo_estu,dni_estu,nombre_estu,apellidos_estu,sexo_estu,fechanaci_estu,direccion_estu,telefono_estu,email_estu FROM dbo.ESTUDIANTE
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Estudiante_S_2]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_Estudiante_S_2]
	
AS
 BEGIN  
    SELECT u.codigo_estu,u.dni_estu,u.nombre_estu,u.apellidos_estu,u.sexo_estu,u.direccion_estu,u.telefono_estu,u.email_estu,  
p.iniciales_facu,e.iniciales_escu
	FROM dbo.ESTUDIANTE AS u

	INNER JOIN dbo.FACULTDAD as p
	ON u.id_facu = p.id_facu	

	INNER JOIN dbo.ESCUELA as e
	ON u.id_escu = e.id_escu

	
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Evento_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[SP_Evento_I]   	
	@pid_eve int,
	@ptitulo_eve varchar(50),
	@pdescripcion_eve varchar(50),
	@pestado_eve varchar(250) ,
	@pid_ubi int,
	@pfecha_eve varchar(50),
	@phorainicio_eve varchar(250),
	@phorafin_eve varchar(250),
	@pid_respo int
	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.EVENTO(id_eve,titulo_eve,descripcion_eve,estado_eve,id_ubi,fecha_eve,horainicio_eve,horafin_eve,id_respo)
	VALUES (@pid_eve,@ptitulo_eve,@pdescripcion_eve,@pestado_eve,@pid_ubi,@pfecha_eve,@phorainicio_eve,@phorafin_eve,@pid_respo)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Evento_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[SP_Evento_S] 
AS
 BEGIN  
     SELECT id_eve,titulo_eve,descripcion_eve,estado_eve,id_ubi,fecha_eve,horainicio_eve,horafin_eve,id_respo  FROM dbo.EVENTO
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Facultad_Consulta]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




 CREATE PROCEDURE [dbo].[SP_Facultad_Consulta] 
AS
 BEGIN  
     select p.nombre_facu, u.id_facu, COUNT(u.id_facu) AS cantidad  from ESTUDIANTE AS u

INNER JOIN dbo.FACULTDAD as p

on u.id_facu=p.id_facu
 group by u.id_facu,p.nombre_facu
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Facultad_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Facultad_S] 
AS
 BEGIN  
     SELECT  id_facu,iniciales_facu,nombre_facu FROM dbo.FACULTDAD
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_FacultadInvitadas_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_FacultadInvitadas_I]  	
	@pid_eve int ,
	@pid_facu int,
	@pnombre_Facu varchar(50),
	@pid_escu int,
	@pnombre_escu varchar(50)
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.FACULTDADINVITADA(id_eve,id_facu,nombre_facu,id_escu,nomnre_escu)
	VALUES (@pid_eve,@pid_facu,@pnombre_Facu,@pid_escu,@pnombre_escu)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Facultdad_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





--PROCEDIMIENTO DE INSERTAR DATOS

CREATE PROCEDURE [dbo].[SP_Facultdad_I]   	
	@pid_facu			int,
	@piniciales_facu	varchar(50),
	@pnombre_facu		varchar(50),
	@pid_uni			int

	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.FACULTDAD(id_facu,iniciales_facu,nombre_facu,id_uni)
	VALUES (@pid_facu,@piniciales_facu,@pnombre_facu,@pid_uni)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Horario_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[SP_Horario_I]   
	
@pid_hora int ,
@pfecha_hora datetime ,
@phorainicio_hora varchar(50) ,
@phorafinal_hora  varchar(50)
	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.HORARIO(id_hora,fecha_hora,horainicio_hora,horafinal_hora)
	VALUES (@pid_hora,@pfecha_hora,@phorainicio_hora,@phorafinal_hora)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Horario_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Horario_S] 
AS
 BEGIN  
     SELECT fecha_hora,horainicio_hora,horafinal_hora FROM dbo.HORARIO
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Ingreos_Facultades_Fecha]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_Ingreos_Facultades_Fecha] 
  @pfecha_inicio date,
 @pfecha_final date

AS
 BEGIN  
     select  u.id_facu, p.nombre_facu,COUNT(u.id_facu) AS cantidad  from ESTUDIANTE AS u

INNER JOIN dbo.FACULTDAD as p
on u.id_facu=p.id_facu
WHERE CONVERT(DATE, u.fecha_estu)
   BETWEEN @pfecha_inicio AND @pfecha_final
 group by u.id_facu,p.nombre_facu
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Inivitados_U]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_Inivitados_U]
  	@codigo_eve int,
	@codigo_estu int,
	@estado varchar(20) 
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	 UPDATE dbo.INVITADOS SET

		estado_estu =@estado
	 WHERE id_eve=@codigo_eve and codigo_estu = @codigo_estu
COMMIT
  END TRY
 BEGIN CATCH
  ROLLBACK
 END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Invitados_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Invitados_I]  	
	@id_eve int,
	@nombre_escu varchar(50),
	@id_escu int,
	@codigo_estu int ,
	@nombre_estu varchar(50),
	@estado_estu  varchar(20)
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.INVITADOS(id_eve,nombre_escu,id_escu,codigo_estu,nombre_estu,estado_estu)
	VALUES (@id_eve,@nombre_escu,@id_escu,@codigo_estu,@nombre_estu,@estado_estu)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Asistentes_DeEvento]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[SP_Listar_Asistentes_DeEvento]
	@id_eve int
AS
 BEGIN  
   select u.codigo_estu,t.nombre_estu,u.observacion_asis,p.nombre_escu  from 
ASISTENCIA2 as u
inner join dbo.ESCUELA as p
on u.id_escu=p.id_escu
inner join dbo.ESTUDIANTE as t
on t.codigo_estu=u.codigo_estu

where u.id_eve=@id_eve
		
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Invitados_PorEvento]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Listar_Invitados_PorEvento]	
	@id_eve int
AS
 BEGIN  
    SELECT p.nombre_escu,u.codigo_estu,u.nombre_estu,u.estado_estu
	 from INVITADOS as u
	inner join 	dbo.ESCUELA as p
	on u.id_escu =p.id_escu
	where id_eve=@id_eve
		
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_InvitadosDeFAcultad_PorEvento]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Listar_InvitadosDeFAcultad_PorEvento]	
	@id_eve int
AS
 BEGIN  
    SELECT nombre_facu,nomnre_escu from FACULTDADINVITADA		
	where id_eve=@id_eve
		
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Responsable_Cargo]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_Listar_Responsable_Cargo]
	
	@id int
AS
 BEGIN  
    SELECT u.id_respo,u.nombre_respo,p.nombre_cargo
	FROM dbo.RESPONSABLE AS u

	INNER JOIN dbo.CARGO as p
	ON u.id_cargo = p.id_cargo	
	where u.id_cargo=@id
		
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Modalidad_Consulta]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



 CREATE PROCEDURE [dbo].[SP_Modalidad_Consulta] 
AS
 BEGIN  
     select  u.id_mod, p.modalidad_mod,COUNT(u.id_mod) AS cantidad  from ESTUDIANTE AS u

INNER JOIN dbo.MODALIDAD as p

on u.id_mod=p.id_mod
 group by u.id_mod,p.modalidad_mod
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Modalidad_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Modalidad_I]   	
	@pid_mod			int,
	@pmodalidad_mod		varchar(50),
	@pdescripcion_mod	varchar(50)
	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.MODALIDAD(id_mod,modalidad_mod,descripcion_mod)
	VALUES (@pid_mod,@pmodalidad_mod,@pdescripcion_mod)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Modalidad_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Modalidad_S] 
AS
 BEGIN  
     SELECT id_mod,modalidad_mod,descripcion_mod FROM dbo.MODALIDAD
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Responsable_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SP_Responsable_I]   	
	@pid_respo int,
	@pnombre_respo varchar(50),
	@papellido_respo varchar(50),
	@pid_cargo int
	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.RESPONSABLE(id_respo,nombre_respo,apellido_respo,id_cargo)
	VALUES (@pid_respo,@pnombre_respo,@papellido_respo,@pid_cargo)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Responsable_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_Responsable_S] 
AS
 BEGIN  
     SELECT id_respo,nombre_respo,apellido_respo,id_cargo FROM dbo.RESPONSABLE
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Ubicacion_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_Ubicacion_I]   	
	@pid_ubi int ,
	@plugar_ubi varchar(50),
	@pdireccion_ubi varchar(50),
	@preferencia_ubi varchar(50)
	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.UBICACION(id_ubi,lugar_ubi,direccion_ubi,referencia_ubi)
	VALUES (@pid_ubi,@plugar_ubi,@pdireccion_ubi,@preferencia_ubi)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Ubicacion_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SP_Ubicacion_S] 
AS
 BEGIN  
     SELECT id_ubi,lugar_ubi,direccion_ubi,referencia_ubi FROM dbo.UBICACION
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Universidad_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Universidad_I]   	
	@pid_uni		int,
	@pnombre_uni		varchar(50),
	@pdireccion_uni		varchar(50),
	@ptelefono_uni	varchar(250),
	@pemail_uni		varchar(50),
	@pweb_uni		varchar(20),
	@pruc_uni		varchar(20)
	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.UNIVERSIDAD(id_uni,nombre_uni,direccion_uni,telefono_uni,email_uni,web_uni,ruc_uni)
	VALUES (@pid_uni,@pnombre_uni,@pdireccion_uni,@ptelefono_uni,@pemail_uni,@pweb_uni,@pruc_uni)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Universidad_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- PROCEDIMIENTO DE LISTAR


CREATE PROCEDURE [dbo].[SP_Universidad_S] 
AS
 BEGIN  
     SELECT * FROM dbo.UNIVERSIDAD
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Usuario_I]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[SP_Usuario_I]   	
	
	@pcodigo_usu  int,
	@pdni_usu varchar(50),
	@pnombre_usu varchar(50),
	@papellidos_usu varchar(50),
	@psexo_usu varchar(30),
	@pfechanaci_usu varchar(50),
	@pdireccion_usu varchar(30),
	@ptelefono_usu varchar(10),
	@pemail_usu varchar(30),
	@pusuario_usu varchar(30),
	@pclave_usu varchar(30),
	@pestado_usu varchar(30) 
	
AS
BEGIN
 BEGIN TRAN
  BEGIN TRY
	INSERT INTO dbo.USUARIO(codigo_usu,dni_usu,nombre_usu,apellidos_usu,sexo_usu,fechanaci_usu,direccion_usu,telefono_usu,email_usu,usuario_usu,clave_usu,estado_usu)
	VALUES (@pcodigo_usu,@pdni_usu,@pnombre_usu,@papellidos_usu,@psexo_usu,@pfechanaci_usu,@pdireccion_usu,@ptelefono_usu,@pemail_usu,@pusuario_usu,@pclave_usu,@pestado_usu)
COMMIT
  END TRY
	BEGIN CATCH
	 ROLLBACK
  END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Usuario_Login]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Usuario_Login]
	@pusuario varchar(30),
	@pclave varchar(30)
AS
 BEGIN  
    SELECT *  from USUARIO
	WHERE usuario_usu = @pusuario AND clave_usu = @pclave 
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_Usuario_S]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_Usuario_S] 
AS
 BEGIN  
     SELECT  codigo_usu,dni_usu,nombre_usu,apellidos_usu,sexo_usu,fechanaci_usu,direccion_usu,telefono_usu,email_usu,usuario_usu,estado_usu FROM dbo.USUARIO
 END
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarCargo]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[USP_B_BuscarCargo]
@id int
as
begin
select   id_cargo,nombre_cargo from CARGO
where id_cargo = @id
end
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarConvocatoria]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[USP_B_BuscarConvocatoria]
@id int
as
begin
select id_convo,año_convo,observacion_convo  from CONVOCATORIA
where id_convo = @id
end
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarESCUELA]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PARA BUSCAR SI HAY REPETIDO
CREATE procedure [dbo].[USP_B_BuscarESCUELA]
@id int
as
begin
select  id_escu,iniciales_escu,nombre_escu  from ESCUELA
where id_escu = @id
end
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarEstudiante]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[USP_B_BuscarEstudiante]
@id int
as
begin
select  codigo_estu,dni_estu,nombre_estu from ESTUDIANTE
where codigo_estu = @id
end
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarEstudiante_EnInvitados]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[USP_B_BuscarEstudiante_EnInvitados]
@id_eve int,
@id_estu int
as
begin
select  codigo_estu,nombre_estu  from INVITADOS
where id_eve = @id_eve and codigo_estu=@id_estu
end
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarEstudiante2]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 

create procedure [dbo].[USP_B_BuscarEstudiante2]
@id int
as
begin
select  u.codigo_estu,u.nombre_estu,u.id_escu,p.nombre_escu from ESTUDIANTE as u
inner join dbo.ESCUELA as  p
on u.id_escu= p.id_escu
where codigo_estu = @id
end
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarEvento]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[USP_B_BuscarEvento]
@id int
as
begin
select id_eve,titulo_eve,descripcion_eve,estado_eve,id_ubi,fecha_eve,horainicio_eve,horafin_eve,id_respo  from EVENTO
where id_eve = @id
end
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarFacultdad]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




--BUSCAR 



CREATE procedure [dbo].[USP_B_BuscarFacultdad]
@id int
as
begin
select  id_facu,iniciales_facu,nombre_facu from FACULTDAD
where id_facu = @id
end
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarModalidad]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[USP_B_BuscarModalidad]
@id int
as
begin
select  id_mod,modalidad_mod,descripcion_mod from MODALIDAD
where id_mod = @id
end
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarPorFacultad]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--LISTAR SEGUN LA ESCUELA
CREATE procedure [dbo].[USP_B_BuscarPorFacultad]
@id int
as
begin
select  id_escu,iniciales_escu,nombre_escu from ESCUELA
where id_facu = @id
end
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarResposable]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[USP_B_BuscarResposable]
@id int
as
begin
select  id_respo,nombre_respo,apellido_respo,id_cargo from RESPONSABLE
where id_respo = @id
end
GO
/****** Object:  StoredProcedure [dbo].[USP_B_BuscarUbicacion]    Script Date: 21/11/2018 8:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[USP_B_BuscarUbicacion]
@id int
as
begin
select  id_ubi,lugar_ubi,direccion_ubi,referencia_ubi from UBICACION
where id_ubi = @id
end
GO
