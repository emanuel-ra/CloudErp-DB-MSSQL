CREATE TRIGGER TrgGenerateQuotationFolio
ON Quotation
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @id INT;
    DECLARE @folio VARCHAR(100);
    DECLARE @date VARCHAR(9);

    SELECT @id = INSERTED.ID FROM INSERTED;

    SET @date = FORMAT(GETDATE(), 'ddMMyyyy');
    SET @folio = 'CO-' + @date + '-' + CAST(@id AS VARCHAR);

    UPDATE Quotation
    SET Folio = @folio
    WHERE ID = @id;
END;