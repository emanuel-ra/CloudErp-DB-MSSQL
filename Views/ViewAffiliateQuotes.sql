CREATE VIEW ViewAffiliateQuotes AS
SELECT
    ABS(CHECKSUM(NEWID())) AS Id,
    rqp.PaymentId AS PaymentId,
    q.ID as QuoteId,
    ISNULL(c.FirstName, '') AS CustomerFirstName,
    ISNULL(c.LastName, '') AS CustomerLastName,
    q.Total
FROM RelQuotesToPayment rqp
LEFT OUTER JOIN quotation q ON q.id = rqp.QuoteId
LEFT OUTER JOIN Customers c ON c.Id = q.CustomerID