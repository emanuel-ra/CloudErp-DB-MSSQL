CREATE PROCEDURE sp_update_products_relation_prices
    @AccountId INT ,
    @PriceId INT ,
    @ProductId INT ,
    @Price DECIMAL(18,2)
AS 
    BEGIN
        -- VARIABLES 
        DECLARE @Id INT 

        SET @Id = (SELECT TOP 1 Id FROM ProductListPriceRelation WHERE AccountId = @AccountId AND PriceId = @PriceId AND ProductId = @ProductId)

        IF @Id > 0
            UPDATE ProductListPriceRelation
                SET Price = @Price ,
                    UpdatedAt = GETDATE()
            WHERE Id = @Id
        ELSE 
            INSERT INTO ProductListPriceRelation 
                (AccountId , PriceId , ProductId ,Price , CreatedAt , UpdatedAt)
            VALUES
                (@AccountId , @PriceId , @ProductId , @Price , GETDATE() , GETDATE())
    END;