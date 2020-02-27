--SELECT * FROM Products

ALTER FUNCTION ufn_GenerateProductId()
RETURNS  CHAR(4)
BEGIN
DECLARE @PRODUCTID CHAR(4)
SELECT @PRODUCTID='P'+CAST(CAST(SUBSTRING(MAX(ProductId),2,3) AS INT)+1  as CHAR)from Products
RETURN @PRODUCTID
END

SELECT dbo.ufn_GenerateProductId()
