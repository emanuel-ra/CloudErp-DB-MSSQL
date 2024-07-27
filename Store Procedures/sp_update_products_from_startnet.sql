CREATE PROCEDURE sp_update_products_from_startnet 
    @AccountId INT ,
    @Code VARCHAR(100) ,
    @Name VARCHAR(250) ,
    @Description VARCHAR(500) ,
    @Model VARCHAR(100) ,
    @Barcode VARCHAR(50) ,
    @Width DECIMAL(18,2) ,
    @Height DECIMAL(18,2) ,
    @Weight DECIMAL(18,2) ,
    @Length DECIMAL(18,2) ,
    @StatusId INT ,    
    @ExternalId INT ,
    @PiecesByBox VARCHAR(250) ,
    @MarketPrice DECIMAL(18,2) ,
    @WholesalePrice DECIMAL(18,2) ,
    @MemberPrice DECIMAL(18,2) ,
    @BoxPrice DECIMAL(18,2) ,
    @VipPrice DECIMAL(18,2) ,
    @PremiumPrice DECIMAL(18,2) ,
    @PlusPrice DECIMAL(18,2) 
AS 
	BEGIN 
        --- VARIABLES 
        DECLARE @UserId INT         
		DECLARE @Id INT 

        DECLARE @MarketPriceId INT
        DECLARE @WholesalePriceId INT
        DECLARE @MemberPriceId INT
        DECLARE @BoxPriceId INT
        DECLARE @VipPriceId INT
        DECLARE @PremiumPriceId INT
        DECLARE @PlusPriceId INT
        
        SET @MarketPriceId = 1
        SET @WholesalePriceId = 2
        SET @MemberPriceId = 3
        SET @BoxPriceId = 4
        SET @VipPriceId = 5
        SET @PremiumPriceId = 6
        SET @PlusPriceId = 7

        --- CHECK IS EXISTS OR NOT 
		SET @Id = (SELECT TOP 1 Id FROM Products WHERE AccountId = @AccountId AND ExternalId = @ExternalId)

		IF @Id > 0
		BEGIN
            UPDATE Products 
                SET Code = @Code ,
                    Name = @Name , 
                    Description = @Description , 
                    Model = @Model ,
                    Barcode = @Barcode , 
                    Width = @Width ,
                    Height = @Height ,
                    Weight = @Weight ,
                    Length = @Length ,
                    StatusId = @StatusId ,
                    PiecesByBox = @PiecesByBox ,
                    UpdatedAt = GETDATE()
            WHERE Id = @Id 
                AND AccountId = @AccountId
                AND ExternalId = @ExternalId           
		END
        ELSE
		BEGIN
			INSERT INTO Products 
                (AccountId , Code , Name , Description , Model , Barcode , Width , Height , Weight , StatusId , ExternalId , CreatedAt , UpdatedAt , Length , PiecesByBox,BrandId,UserId )
			VALUES 
                (@AccountId , @Code , @Name , @Description , @Model , @Barcode , @Width , @Height , @Weight , @StatusId , @ExternalId , GETDATE() , GETDATE() , @Length , @PiecesByBox,0,1 )  		
			SET @Id = SCOPE_IDENTITY();
		END
		 --- MARKET PRICE 
        EXEC sp_update_products_relation_prices @AccountId, @MarketPriceId, @Id, @MarketPrice
        -- WHOLE SALE PRICE 
        EXEC sp_update_products_relation_prices @AccountId, @WholesalePriceId, @Id, @WholesalePrice
        -- MEMBER PRICE 
        EXEC sp_update_products_relation_prices @AccountId, @MemberPriceId, @Id, @MemberPrice
        -- BOX PRICE
        EXEC sp_update_products_relation_prices @AccountId, @BoxPriceId, @Id, @BoxPrice
        -- VIP PRICE 
        EXEC sp_update_products_relation_prices @AccountId, @VipPriceId, @Id, @VipPrice
        -- PREMIUM PRICE 
        EXEC sp_update_products_relation_prices @AccountId, @PremiumPriceId, @Id, @PremiumPrice
        -- PLUS PRICE 
        EXEC sp_update_products_relation_prices @AccountId, @PlusPriceId, @Id, @PlusPrice
	END;

	