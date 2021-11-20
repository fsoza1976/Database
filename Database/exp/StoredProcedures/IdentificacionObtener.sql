CREATE PROCEDURE [exp].[IdentificacionObtener]
	@IdTipoIdentificacion int=NULL
AS BEGIN
SET NOCOUNT ON
	SELECT
		T.IdTipoIdentificacion,
		T.Identificacion
	FROM exp.TipoIdentificacion T
	WHERE
		(@IdTipoIdentificacion IS NULL OR IdTipoIdentificacion=@IdTipoIdentificacion)
END
GO
