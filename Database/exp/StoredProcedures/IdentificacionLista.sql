CREATE PROCEDURE [dbo].[ProductoLista]
	
AS 

BEGIN

	SET NOCOUNT ON

	SELECT  IdTipoIdentificacion
			,Identificacion
	FROM [exp].[TipoIdentificacion]
	
END