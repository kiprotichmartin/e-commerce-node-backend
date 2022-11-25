-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
)
DROP PROCEDURE dbo.addOrUpdateOneProduct

GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.addOrUpdateOneProduct
  (@name INT NOT NULL,
  @description VARCHAR(50) NOT NULL,
  @price INT NOT NULL,
  @discount INT NOT NULL,
  @imageUrl VARCHAR(50) NOT NULL)
AS

INSERT INTO Products.dbo.Products
  (
  [Name], [Description], [Price], [Discount], [ImageUrl]
  )
VALUES
  (
    @name, @description, @price, @discount, @imageUrl
  )

GO

-- example to execute the stored procedure we just created
-- EXECUTE dbo.addOrUpdateOneProduct ();
-- GO