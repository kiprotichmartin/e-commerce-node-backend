-- Drop the table if it already exists
IF OBJECT_ID('dbo.Products', 'U') IS NOT NULL
DROP TABLE Products
GO

CREATE TABLE dbo.Products
(
  ProductsId INT NOT NULL PRIMARY KEY IDENTITY (1,1),
  Name [NVARCHAR](50) NOT NULL,
  Description [NVARCHAR](50) NOT NULL,
  Price INT NOT NULL,
  Discount INT NOT NULL,
  ImageUrl [NVARCHAR](50) NOT NULL,
);
GO