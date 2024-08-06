CREATE VIEW ViewStartnetOrderDetail
AS 
	SELECT 
		A.id as Id ,
		A.OrderID as OrderId ,	
		A.ProductID as ProductId ,
		B.Code AS ProductCode , 
		A.ProductName ,
		B.Model AS ProductModel ,
		A.ProductAlias ,
		B.ImagePublicId ,
		B.ImageUrl ,
		B.Barcode ,
		B.Width ,
		B.Height ,
		B.Weight ,
		B.Length ,
		A.OrderQuantity ,	
		A.OrderAmount ,
		A.Memo as OrderMemo ,
		A.Inform  as OrderInform	
	FROM StartnetOrdersDetails A
		JOIN Products B
			ON A.ProductID = B.ExternalId