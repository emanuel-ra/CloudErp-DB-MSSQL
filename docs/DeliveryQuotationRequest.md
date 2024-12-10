# DeliveryQuotationRequest Table Documentation

## Table Name

**DeliveryQuotationRequest**

## Purpose

This table is designed to store and manage delivery quotation requests, including details about the delivery type, address, user information, and status.

## Table Structure

| Column Name           | Data Type    | Constraints                 | Description                                                   |
| --------------------- | ------------ | --------------------------- | ------------------------------------------------------------- |
| **Id**                | INT          | PRIMARY KEY, IDENTITY(1,1)  | Unique identifier for the request.                            |
| **AccountId**         | INT          | NOT NULL                    | Reference to the related account.                             |
| **QuoteId**           | INT          | NOT NULL                    | Reference to the related quotation.                           |
| **UserId**            | INT          | NOT NULL                    | ID of the user making the request.                            |
| **GrantedUserId**     | INT          | NOT NULL                    | ID of the user granting or approving the request.             |
| **DeliveryTypeId**    | INT          | NOT NULL                    | ID of the delivery type (e.g., standard, express).            |
| **ParcelServiceId**   | INT          | NULL                        | Optional: ID of the parcel service, if applicable.            |
| **FreightCompanyId**  | INT          | NULL                        | Optional: ID of the freight company, if applicable.           |
| **RequiredPacking**   | BIT          | NULL                        | Indicates whether packing is required (0 = No, 1 = Yes).      |
| **RequiredSafeguard** | BIT          | NULL                        | Indicates whether safeguarding is required (0 = No, 1 = Yes). |
| **Address**           | VARCHAR(500) | NULL                        | Full delivery address.                                        |
| **ZipCode**           | VARCHAR(15)  | NULL                        | ZIP/Postal code.                                              |
| **Region**            | VARCHAR(500) | NULL                        | Region name.                                                  |
| **State**             | VARCHAR(200) | NULL                        | State name.                                                   |
| **City**              | VARCHAR(50)  | NULL                        | City name.                                                    |
| **ExteriorNumber**    | VARCHAR(50)  | NULL                        | Exterior number of the building.                              |
| **InteriorNumber**    | VARCHAR(50)  | NULL                        | Interior number or unit, if applicable.                       |
| **Comments**          | VARCHAR(500) | NULL                        | Additional comments or details about the request.             |
| **StatusId**          | INT          | NOT NULL                    | Current status of the request (e.g., Pending, Approved).      |
| **CreatedAt**         | DATETIME2    | NOT NULL, DEFAULT GETDATE() | Timestamp for when the request was created.                   |
| **UpdatedAt**         | DATETIME2    | NOT NULL, DEFAULT GETDATE() | Timestamp for when the request was last updated.              |
| **Granted**           | DATETIME2    | NULL                        | Timestamp for when the request was granted.                   |

## Index Recommendations

To optimize query performance:

- **AccountId**: Frequently queried.
- **QuoteId**: Frequently queried.
- **StatusId**: Frequently queried.
- Consider composite indexes for combined queries, such as `(StatusId, CreatedAt)`.

## Foreign Keys

Establish foreign key relationships to enforce referential integrity:

| Column Name       | References   | Description                                              |
| ----------------- | ------------ | -------------------------------------------------------- |
| **AccountId**     | Accounts(Id) | Links to the accounts table.                             |
| **QuoteId**       | Quotes(Id)   | Links to the quotations table.                           |
| **UserId**        | Users(Id)    | Links to the users table (request creator).              |
| **GrantedUserId** | Users(Id)    | Links to the users table (request approver).             |
| **StatusId**      | Statuses(Id) | Links to a statuses table for managing request statuses. |

## Validation Constraints

- `RequiredPacking` and `RequiredSafeguard` must be either `0` or `1`.
- `ZipCode` length should not exceed 15 characters.

## Example Queries

### Insert a New Request

```sql
INSERT INTO DeliveryQuotationRequest (
    AccountId, QuoteId, UserId, GrantedUserId, DeliveryTypeId,
    ParcelServiceId, FreightCompanyId, RequiredPacking, RequiredSafeguard,
    Address, ZipCode, Region, State, City, ExteriorNumber, InteriorNumber,
    Comments, StatusId
) VALUES (
    1, 123, 45, 67, 2,
    NULL, NULL, 1, 0,
    '123 Example Street', '12345', 'Example Region', 'Example State', 'Example City', '123', 'A',
    'Handle with care', 1
);
```

### Update Request Status

```sql
UPDATE DeliveryQuotationRequest
SET StatusId = 2, UpdatedAt = GETDATE()
WHERE Id = 1;
```

### Retrieve Pending Requests

```sql
SELECT * FROM DeliveryQuotationRequest
WHERE StatusId = 1
ORDER BY CreatedAt DESC;
```

## Notes

- Regularly monitor the table size and index performance.
- Consider creating a trigger to update the `UpdatedAt` column automatically.
