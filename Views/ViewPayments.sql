CREATE VIEW ViewPayments AS
SELECT
    ABS(CHECKSUM(NEWID())) AS Id,
    p.Id AS PaymentId, 
    q.ID AS QuoteId,
    u.Name AS NameUser,
    q.CustomerID,
    c.Id AS CustomerID2,
    q.UserID,
    q.Total,
    p.AccountName,
    ISNULL(p.Commentary, '') AS Commentary,
    ISNULL(p.ValidationCommentary, '') AS ValidationCommentary,
    ISNULL(p.BankName, '') AS BankName,
    ISNULL(p.PaymentDate, '') AS PaymentDate, 
    CAST(ISNULL(p.Ammount,0) AS decimal(18,2)) AS Ammount,
    ISNULL(c.TaxUseCode, '') AS UsoCfdi,
    p.PaymentMethod,
    p.UploadUserId,
    ISNULL(p.IsAccepted, 0) AS IsAccepted,
    p.IsCancel,
    p.CreatedAt AS CreatedAtPayment,
    q.StatusID AS StatusIdQuotation,
    ISNULL(c.FirstName, '') AS CustomerFirstName,
    ISNULL(c.LastName, '') AS CustomerLastName,
    ISNULL(c.Code, '') AS CustomerCode,
    (CASE
        WHEN q.StatusID = 13 AND p.CodeSalesInvoices is null THEN 1
        WHEN q.StatusID = 21 AND ISNULL(q.Is_packed, 0) = 0 AND ISNULL(q.Is_deliver, 0) = 0 THEN 1
        ELSE 0 END
    ) AS IsCompleted,
    q.Commentary AS SellerCommentary,
    ISNULL(so.BillCode, '') BillCode
FROM Payments AS p
LEFT OUTER JOIN RelQuotesToPayment AS rq ON rq.PaymentId = p.Id
LEFT OUTER JOIN Quotation q ON q.ID = rq.QuoteId
LEFT OUTER JOIN Customers c ON c.Id = q.CustomerID
LEFT OUTER JOIN Users u ON u.Id = p.UploadUserId
LEFT OUTER JOIN StartnetOrders so ON so.QuoteID = q.ID