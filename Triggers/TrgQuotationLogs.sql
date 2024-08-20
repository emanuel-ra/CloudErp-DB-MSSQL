CREATE TRIGGER TrgQuotationLogs
ON Quotation
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    -- Log para operaciones INSERT
    IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO QuotationLogs (QuoteId, MovementType, Description, JsonData, UserId)
        SELECT i.ID, 'INSERT', 'New quote inserted', 
               (SELECT * FROM inserted FOR JSON PATH), i.UserId
        FROM inserted i;
    END

    -- Log para operaciones UPDATE
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO QuotationLogs (QuoteId, MovementType, Description, JsonData, UserId)
        SELECT i.ID, 'UPDATE', 'Quote updated', 
               (SELECT * FROM inserted FOR JSON PATH), i.UserId
        FROM inserted i;
    END

    -- Log para operaciones DELETE
    IF EXISTS (SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
    BEGIN
        INSERT INTO QuotationLogs (QuoteId, MovementType, Description, JsonData, UserId)
        SELECT d.ID, 'DELETE', 'Quote deleted', 
               (SELECT * FROM deleted FOR JSON PATH), d.UserId
        FROM deleted d;
    END
END;
