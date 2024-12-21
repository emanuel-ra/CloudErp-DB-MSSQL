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
						A.Id ,
						A.CompanyId ,
						A.CustomerId ,
						A.SellerId ,
						A.UserId ,
						A.StatusId ,
						A.PriceListId ,
						A.RequiredDeliver ,
						A.DeliveryTypeId ,
						A.ParcelServiceId ,
						A.FreightCompanyId ,
						A.RequiredInvoice ,
						A.RequiredCheckPlus ,
						A.RequiredPacking ,
						A.RequiredSafeguard ,
						A.Quantity ,
						A.DeliverAmount ,
						A.CheckPlusAmount ,
						A.SafeguardAmount ,
						A.DiscountAmount ,
						A.SubTotal ,
						A.Total ,
						A.Address ,
						A.ZipCode ,
						A.Region ,
						A.State ,
						A.City ,
						A.ExteriorNumber ,
						A.InteriorNumber ,
						A.Phone ,
						A.Commentary ,
						A.Observations ,
						A.IsOrder ,
						A.CreatedAt ,
						A.UpdatedAt ,
						A.Folio ,

						B.Name AS StatusName ,

						C.Name AS PriceListName ,

						D.Name AS UserName ,

						E.Code AS CustomerCode ,
						CONCAT(E.FirstName,' ',E.LastName) AS CustomerFullName 
					FROM inserted AS A 
						LEFT OUTER JOIN CatStatus B
							ON A.StatusId = B.Id
						LEFT OUTER JOIN ProductListPrice C 
							ON A.PriceListId = C.Id 
						LEFT OUTER JOIN Users D
							ON A.UserId = B.Id 
						LEFT OUTER JOIN Customers E
							ON A.CustomerId = E.Id 
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
						A.Id ,
						A.CompanyId ,
						A.CustomerId ,
						A.SellerId ,
						A.UserId ,
						A.StatusId ,
						A.PriceListId ,
						A.RequiredDeliver ,
						A.DeliveryTypeId ,
						A.ParcelServiceId ,
						A.FreightCompanyId ,
						A.RequiredInvoice ,
						A.RequiredCheckPlus ,
						A.RequiredPacking ,
						A.RequiredSafeguard ,
						A.Quantity ,
						A.DeliverAmount ,
						A.CheckPlusAmount ,
						A.SafeguardAmount ,
						A.DiscountAmount ,
						A.SubTotal ,
						A.Total ,
						A.Address ,
						A.ZipCode ,
						A.Region ,
						A.State ,
						A.City ,
						A.ExteriorNumber ,
						A.InteriorNumber ,
						A.Phone ,
						A.Commentary ,
						A.Observations ,
						A.IsOrder ,
						A.CreatedAt ,
						A.UpdatedAt ,
						A.Folio ,

						B.Name AS StatusName ,

						C.Name AS PriceListName ,

						D.Name AS UserName ,

						E.Code AS CustomerCode ,
						CONCAT(E.FirstName,' ',E.LastName) AS CustomerFullName 
					FROM inserted AS A 
						LEFT OUTER JOIN CatStatus B
							ON A.StatusId = B.Id
						LEFT OUTER JOIN ProductListPrice C 
							ON A.PriceListId = C.Id 
						LEFT OUTER JOIN Users D
							ON A.UserId = B.Id 
						LEFT OUTER JOIN Customers E
							ON A.CustomerId = E.Id 
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
						A.Id ,
						A.CompanyId ,
						A.CustomerId ,
						A.SellerId ,
						A.UserId ,
						A.StatusId ,
						A.PriceListId ,
						A.RequiredDeliver ,
						A.DeliveryTypeId ,
						A.ParcelServiceId ,
						A.FreightCompanyId ,
						A.RequiredInvoice ,
						A.RequiredCheckPlus ,
						A.RequiredPacking ,
						A.RequiredSafeguard ,
						A.Quantity ,
						A.DeliverAmount ,
						A.CheckPlusAmount ,
						A.SafeguardAmount ,
						A.DiscountAmount ,
						A.SubTotal ,
						A.Total ,
						A.Address ,
						A.ZipCode ,
						A.Region ,
						A.State ,
						A.City ,
						A.ExteriorNumber ,
						A.InteriorNumber ,
						A.Phone ,
						A.Commentary ,
						A.Observations ,
						A.IsOrder ,
						A.CreatedAt ,
						A.UpdatedAt ,
						A.Folio ,

						B.Name AS StatusName ,

						C.Name AS PriceListName ,

						D.Name AS UserName ,

						E.Code AS CustomerCode ,
						CONCAT(E.FirstName,' ',E.LastName) AS CustomerFullName 
					FROM deleted AS A 
						LEFT OUTER JOIN CatStatus B
							ON A.StatusId = B.Id
						LEFT OUTER JOIN ProductListPrice C 
							ON A.PriceListId = C.Id 
						LEFT OUTER JOIN Users D
							ON A.UserId = B.Id 
						LEFT OUTER JOIN Customers E
							ON A.CustomerId = E.Id 
					FOR JSON PATH					
				), d.UserId
        FROM deleted d;
    END
END;
