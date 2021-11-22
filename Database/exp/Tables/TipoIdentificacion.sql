CREATE TABLE [exp].[TipoIdentificacion]
(
	[IdTipoIdentificacion] INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_IdTipoIdentificacion PRIMARY KEY CLUSTERED(IdTipoIdentificacion),
    [Identificacion] VARCHAR(50) NULL
)WITH (DATA_COMPRESSION =PAGE)
GO
