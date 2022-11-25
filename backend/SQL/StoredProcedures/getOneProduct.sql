CREATE PROCEDURE getOneProduct (@id INT)
AS
BEGIN

SELECT * FROM Products WHERE ProductsId = @id;

END