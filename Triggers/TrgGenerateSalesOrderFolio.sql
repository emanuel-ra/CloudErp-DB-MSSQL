CREATE TRIGGER TrgGenerateSalesOrderFolio
ON SalesOrders
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @id INT;
    DECLARE @quoteId INT;
    DECLARE @folio VARCHAR(100);
    DECLARE @date VARCHAR(9);

    SELECT @id = INSERTED.ID FROM INSERTED;
    SELECT @quoteId = INSERTED.QuoteId FROM INSERTED;

    SET @date = FORMAT(GETDATE(), 'ddMMyyyy');
    SET @folio = 'OR-' + @date + '-' + CAST(@quoteId AS VARCHAR) + '-'+ CAST(@id AS VARCHAR);

    UPDATE SalesOrders
    SET Folio = @folio
    WHERE ID = @id;
END;