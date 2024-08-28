CREATE TRIGGER TrgQuotationLogs
ON Quotation
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    -- Log para operaciones INSERT
    IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO QuotationLogs (QuoteId, MovementType, Description, JsonData, UserId)
        SELECT i.ID, 'INSERT', 'new-quote-inserted', 
				(
					SELECT 
						A.ID AS Id ,
						A.CustomerID AS CustomerId ,
						E.Code , 
						CONCAT(E.FirstName,' ',E.LastName) AS CustomerFullName , 
						D.Name ,
						A.UserID AS UserId ,
						A.StatusID AS StatusId ,
						B.Name AS StatusName ,
						A.Commentary AS Commentary ,
						A.Price_type AS PriceId ,
						C.Name AS PriceName ,
						A.Quantity AS Quantity ,
						A.Total AS Total ,
						A.Total_deliver AS TotalDeliver ,
						A.Total_of_assured AS TotalOfAssured ,
						A.Is_checkplus AS IsCheckPlus ,
						A.Is_deliver AS IsDeliver ,
						A.Created_at AS CreatedAt ,
						A.Updated_at AS UpdatedAt ,
						A.Is_packed AS IsPacked ,
						A.Detail_packed AS DetailPacked ,					
						A.IsModified AS IsModified ,
						A.Total_initial AS TotalInitial ,
						A.CompanyID AS CompanyId ,
						A.ShippingCompany ,
						A.RequirePacking ,
						A.Address AS Address ,
						A.ZipCode AS ZipCode ,
						A.Region AS Region ,
						A.State AS State ,
						A.City AS City ,
						A.ExteriorNumber AS ExteriorNumber ,
						A.InteriorNumber AS InteriorNumber ,
						A.Phone AS Phone 
					FROM inserted AS A 
						LEFT OUTER JOIN CatStatus B
							ON A.StatusID = B.Id
						LEFT OUTER JOIN ProductListPrice C 
							ON A.Price_type = C.Id 
						LEFT OUTER JOIN Users D
							ON A.UserID = B.Id 
						LEFT OUTER JOIN Customers E
							ON A.CustomerID = E.Id 
					FOR JSON PATH
				), i.UserId
        FROM inserted i;
    END

    -- Log para operaciones UPDATE
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO QuotationLogs (QuoteId, MovementType, Description, JsonData, UserId)
        SELECT i.ID, 'UPDATE', 'quote-updated', 
				(
					SELECT 
						A.ID AS Id ,
						A.CustomerID AS CustomerId ,
						E.Code , 
						CONCAT(E.FirstName,' ',E.LastName) AS CustomerFullName , 
						D.Name ,
						A.UserID AS UserId ,
						A.StatusID AS StatusId ,
						B.Name AS StatusName ,
						A.Commentary AS Commentary ,
						A.Price_type AS PriceId ,
						C.Name AS PriceName ,
						A.Quantity AS Quantity ,
						A.Total AS Total ,
						A.Total_deliver AS TotalDeliver ,
						A.Total_of_assured AS TotalOfAssured ,
						A.Is_checkplus AS IsCheckPlus ,
						A.Is_deliver AS IsDeliver ,
						A.Created_at AS CreatedAt ,
						A.Updated_at AS UpdatedAt ,
						A.Is_packed AS IsPacked ,
						A.Detail_packed AS DetailPacked ,					
						A.IsModified AS IsModified ,
						A.Total_initial AS TotalInitial ,
						A.CompanyID AS CompanyId ,
						A.ShippingCompany ,
						A.RequirePacking ,
						A.Address AS Address ,
						A.ZipCode AS ZipCode ,
						A.Region AS Region ,
						A.State AS State ,
						A.City AS City ,
						A.ExteriorNumber AS ExteriorNumber ,
						A.InteriorNumber AS InteriorNumber ,
						A.Phone AS Phone 
					FROM inserted AS A 
						LEFT OUTER JOIN CatStatus B
							ON A.StatusID = B.Id
						LEFT OUTER JOIN ProductListPrice C 
							ON A.Price_type = C.Id 
						LEFT OUTER JOIN Users D
							ON A.UserID = B.Id 
						LEFT OUTER JOIN Customers E
							ON A.CustomerID = E.Id 
					FOR JSON PATH
				), i.UserId
        FROM inserted i;
    END

    -- Log para operaciones DELETE
    IF EXISTS (SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
    BEGIN
        INSERT INTO QuotationLogs (QuoteId, MovementType, Description, JsonData, UserId)
        SELECT d.ID, 'DELETE', 'quote-deleted', 
               (
					SELECT 
						A.ID AS Id ,
						A.CustomerID AS CustomerId ,
						E.Code , 
						CONCAT_WS(E.FirstName,' ',E.LastName) AS CustomerFullName , 
						D.Name ,
						A.UserID AS UserId ,
						A.StatusID AS StatusId ,
						B.Name AS StatusName ,
						A.Commentary AS Commentary ,
						A.Price_type AS PriceId ,
						C.Name AS PriceName ,
						A.Quantity AS Quantity ,
						A.Total AS Total ,
						A.Total_deliver AS TotalDeliver ,
						A.Total_of_assured AS TotalOfAssured ,
						A.Is_checkplus AS IsCheckPlus ,
						A.Is_deliver AS IsDeliver ,
						A.Created_at AS CreatedAt ,
						A.Updated_at AS UpdatedAt ,
						A.Is_packed AS IsPacked ,
						A.Detail_packed AS DetailPacked ,					
						A.IsModified AS IsModified ,
						A.Total_initial AS TotalInitial ,
						A.CompanyID AS CompanyId ,
						A.ShippingCompany ,
						A.RequirePacking ,
						A.Address AS Address ,
						A.ZipCode AS ZipCode ,
						A.Region AS Region ,
						A.State AS State ,
						A.City AS City ,
						A.ExteriorNumber AS ExteriorNumber ,
						A.InteriorNumber AS InteriorNumber ,
						A.Phone AS Phone 
					FROM deleted AS A 
						LEFT OUTER JOIN CatStatus B
							ON A.StatusID = B.Id
						LEFT OUTER JOIN ProductListPrice C 
							ON A.Price_type = C.Id 
						LEFT OUTER JOIN Users D
							ON A.UserID = B.Id 
						LEFT OUTER JOIN Customers E
							ON A.CustomerID = E.Id 
					FOR JSON PATH					
				), d.UserId
        FROM deleted d;
    END
END;
