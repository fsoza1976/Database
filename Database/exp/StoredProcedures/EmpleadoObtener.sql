CREATE PROCEDURE [exp].[EmpleadoObtener]
	@IdEmpleado int=NULL
AS BEGIN
SET NOCOUNT ON
	SELECT
		E.IdEmpleado,
		E.NombrE,
		E.PrimerApellido,
		E.SegundoApellido,
		E.Edad,
		E.FechaNacimiento,

		T.IdTipoIdentificacion,
		T.Identificacion
	FROM EXP.Empleado E
	INNER JOIN TipoIdentificacion T
	ON E.TipoIdentificacion = T.IdTipoIdentificacion
	WHERE
		(@IdEmpleado IS NULL OR IdEmpleado=@IdEmpleado)
END
GO