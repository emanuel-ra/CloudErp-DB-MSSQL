CREATE VIEW ViewPaymentsToValidate AS
SELECT
    ABS(CHECKSUM(NEWID())) AS Id,
    p.Id AS PaymentId,
    q.ID AS QuoteId,
    so.BillCode,
    u.Name AS NameUser,
    p.AccountName,
    p.Commentary,
    p.PaymentMethod,
    MAX(p.BankName) AS Bank,
    ISNULL(c.FirstName, '') AS CustomerFirstName,
    ISNULL(c.LastName, '') AS CustomerLastName,
    ISNULL(c.Code, '') AS CustomerCode,
    ISNULL(c.TaxUseCode, '') AS UsoCfdi,
    CONCAT('$', CAST(SUM(q.Total) AS DECIMAL(12, 2))) AS Total,
    p.PaymentDate AS Pdate,
    p.DatesPayment AS Pdate2,
    CAST(p.ValidateAt AS DATE) AS DateValidate,
    CONCAT('$', CAST(p.Ammount AS DECIMAL(12, 2))) AS Ammount,
    u2.Name AS Validado,
    q.StatusID,
    p.CodeSalesInvoices AS Code,
    CASE
        WHEN DATEDIFF(MINUTE, p.InitValid, GETDATE()) < 60 THEN
            CAST(DATEDIFF(MINUTE, p.InitValid, GETDATE()) AS NVARCHAR) + ' min ago'
        WHEN DATEDIFF(HOUR, p.InitValid, GETDATE()) < 24 THEN
            CAST(DATEDIFF(HOUR, p.InitValid, GETDATE()) AS NVARCHAR) + ' hour ago'
        WHEN DATEDIFF(DAY, p.InitValid, GETDATE()) < 31 THEN
            CAST(DATEDIFF(DAY, p.InitValid, GETDATE()) AS NVARCHAR) + ' day ago'
        WHEN DATEDIFF(MONTH, p.InitValid, GETDATE()) < 12 THEN
            CAST(DATEDIFF(MONTH, p.InitValid, GETDATE()) AS NVARCHAR) + ' month ago'
        ELSE
            CAST(DATEDIFF(YEAR, p.InitValid, GETDATE()) AS NVARCHAR) + ' year ago'
    END AS TimeDiff,
    (CASE WHEN p.Ammount < q.Total AND q.StatusID in (21, 23, 24, 25, 26, 27) THEN 1 ELSE 0 END) AS Difference,
    (CASE 
        WHEN q.StatusID = 13 AND p.CodeSalesInvoices is null THEN 1 
        WHEN q.StatusID = 21 AND ISNULL(q.Is_packed, 0) = 0 AND ISNULL(q.Is_deliver, 0) = 0 THEN 1 
        ELSE 0 END) AS ValidadoSeg,
    ISNULL(p.IsCancel, 0) IsCancel,
    p.ValidationCommentary,
    p.AmmountsPayments,
    p.CreatedAt AS CreatedAtPayment
FROM Payments AS p
LEFT OUTER JOIN Users u ON u.Id = p.UploadUserId
LEFT OUTER JOIN RelQuotesToPayment rqp ON p.ID = rqp.PaymentId
LEFT OUTER JOIN Quotation q ON q.ID = rqp.QuoteId
LEFT OUTER JOIN Customers c ON c.Id = q.CustomerID
LEFT OUTER JOIN Users u2 ON u2.Id = p.ValidationUserId
LEFT OUTER JOIN StartnetOrders so ON q.ID = so.QuoteID
WHERE
    ISNULL(p.IsAccepted, 0) = 0 AND ISNULL(p.IsCancel, 0) = 0 AND ISNULL(q.StatusId, 0) != 19
GROUP BY
    p.InitValid,
    rqp.PaymentId,
    p.Id,
    p.AccountName,
    p.PaymentMethod,
    u.Name,
    p.Commentary,
    c.FirstName,
    c.LastName,
    p.PaymentDate,
    p.Ammount,
    u2.Name,
    c.TaxUseCode,
    q.StatusID,
    p.CodeSalesInvoices,
    q.Total,
    q.ID,
    so.BillCode,
    c.code,
    q.Is_packed,
    q.Is_deliver,
    p.ValidateAt,
    p.DatesPayment,
    p.IsCancel,
    p.ValidationCommentary,
    p.AmmountsPayments,
    p.CreatedAt