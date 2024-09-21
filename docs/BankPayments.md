# BankPayments Table Documentation

## Table Name: `BankPayments`

This table is used to track bank payments made by customers. It stores relevant information about each payment, including the customer, account details, the amount, and validation information.

### Columns

| Column Name             | Data Type                            | Description                                                                               |
| ----------------------- | ------------------------------------ | ----------------------------------------------------------------------------------------- |
| `Id`                    | INT                                  | Primary key, unique identifier for each bank payment.                                     |
| `Folio`                 | AS ('PD-' + CAST(Id AS VARCHAR(16))) | Computed column that generates a formatted folio based on the `Id`.                       |
| `AccountId`             | INT                                  | Foreign key to reference the bank account involved in the payment.                        |
| `CustomerId`            | INT                                  | Foreign key to reference the customer making the payment.                                 |
| `AccountName`           | VARCHAR(200)                         | Name of the bank account.                                                                 |
| `BankName`              | VARCHAR(500)                         | Name of the bank where the payment was made.                                              |
| `PaymentMethod`         | VARCHAR(500)                         | Method of payment (e.g., Credit Card, Bank Transfer, etc.).                               |
| `Amount`                | DECIMAL(16, 6)                       | The total amount paid by the customer.                                                    |
| `PaymentNotes`          | VARCHAR(500)                         | Additional notes regarding the payment.                                                   |
| `ValidationComment`     | VARCHAR(500)                         | Comments related to the validation process of the payment.                                |
| `UserId`                | INT                                  | The user who created the payment record.                                                  |
| `ValidatedByUserId`     | INT                                  | The user who validated the payment. (Nullable)                                            |
| `PaymentDate`           | DATE                                 | The date when the payment was made. (Nullable)                                            |
| `ClientReceiptImageId`  | VARCHAR(255)                         | ID reference to the image of the client's payment receipt.                                |
| `ClientReceiptImageUrl` | VARCHAR(255)                         | URL or path of the image for the client’s payment receipt.                                |
| `BankDepositImageId`    | VARCHAR(255)                         | ID reference to the image of the bank's deposit confirmation.                             |
| `BankDepositImageUrl`   | VARCHAR(255)                         | URL or path of the image showing the bank deposit confirmation.                           |
| `StartedAt`             | DATETIME                             | The date and time when the payment process was initiated. (Nullable)                      |
| `ValidatedAt`           | DATETIME                             | The date and time when the payment was validated. (Nullable)                              |
| `CreatedAt`             | DATETIME                             | The date and time when the record was created. Defaults to current timestamp.             |
| `UpdatedAt`             | DATETIME                             | The date and time when the record was last updated. Defaults to current timestamp.        |
| `StatusId`              | INT                                  | Status of the payment (e.g., 1 for pending, 2 for completed).                             |
| `IsPaymentValid`        | BIT                                  | Boolean flag indicating whether the payment has been validated (1 for true, 0 for false). |

### Notes

- **Folio**: Automatically generated as `PD-XXXX`, where `XXXX` is the `Id` converted to a string.
- **Nullable Fields**: The columns `ValidatedByUserId`, `PaymentDate`, `StartedAt`, and `ValidatedAt` can be `NULL`, allowing flexibility in the workflow of payment validation.
- **Image Storage**: Both `ClientReceiptImageUrl` and `BankDepositImageUrl` are used to store references to the images, which may be stored externally.

### Default Values

- `Amount`: Defaults to `0`.
- `CreatedAt`: Defaults to the current timestamp when the record is inserted.
- `UpdatedAt`: Automatically updated with the current timestamp whenever the record is modified.
- `StatusId`: Defaults to `1` (assumed to represent 'pending').
- `IsPaymentValid`: Defaults to `0` (false, meaning the payment has not been validated yet).
