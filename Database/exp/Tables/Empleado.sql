CREATE TABLE [exp].[Empleado]
(
	IdEmpleado INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Empleado PRIMARY KEY CLUSTERED(IdEmpleado)
	, Nombre VARCHAR(50) NOT NULL
	, PrimerApellido VARCHAR(50) NOT NULL
	, SegundoApellido VARCHAR(50) NOT NULL
	, Edad INT NOT NULL
	, FechaNacimiento DATETIME NOT NULL
    , TipoIdentificacion INT NOT NULL CONSTRAINT FK_Empleado_TipoIdentificacion FOREIGN KEY(TipoIdentificacion) REFERENCES exp.TipoIdentificacion(IdTipoIdentificacion)
    , Identificacion VARCHAR(50) NOT NULL
)WITH (DATA_COMPRESSION = PAGE)
GO
