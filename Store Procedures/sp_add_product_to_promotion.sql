CREATE PROCEDURE sp_add_product_to_promotion 
@PromotionId INT ,	
@ProductCode VARCHAR(30) ,
@Price decimal(18,2)
AS 
	BEGIN 
		DECLARE @ProductId INT 
		SET @ProductId = (SELECT TOP 1 Id FROM Products WHERE Code = @ProductCode ORDER BY Id)
		IF @ProductId > 0
			INSERT INTO PromotionDetails (PromotionId , ProductId , Price , CreatedAt ,UpdatedAt)
				VALUES (@PromotionId , @ProductId , @Price , GETDATE() ,GETDATE())
	
	END;

	