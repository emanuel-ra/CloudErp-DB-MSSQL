CREATE VIEW ViewPaymentsQuotesCanceled AS
SELECT
    ABS(CHECKSUM(NEWID())) AS Id,
    p.Id AS PaymentId,
    q.ID AS QuoteId,
    c.Code AS CustomerCode,
    ISNULL(c.FirstName, '') AS CustomerFirstName,
    ISNULL(c.LastName, '') AS CustomerLastName,
    u.Name AS SellerName,
    p.AccountName,
    p.BankName,
    p.PaymentMethod,
    p.PaymentDate,
    q.Total,
    CAST(p.Ammount AS DECIMAL(10, 2)) Ammount,
    p.AmmountsPayments,
    q.Commentary,
    p.ValidationCommentary,
    p.IsCancel,
    p.CreatedAt AS CreatedAtPayment
FROM Payments AS p (NOLOCK)
    LEFT OUTER JOIN RelQuotesToPayment rqp ON rqp.PaymentId = p.Id
    LEFT OUTER JOIN Quotation q ON q.ID = rqp.QuoteId
    LEFT OUTER JOIN Users u ON q.UserID = u.Id
    LEFT OUTER JOIN Customers c ON q.CustomerID = c.Id
WHERE 
    q.StatusID = 19