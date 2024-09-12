# Products Table Schema

The `Products` table stores detailed information about products in the system. Below is a description of each column in the table:

| Column Name     | Data Type       | Constraints                 | Description                                                                |
| --------------- | --------------- | --------------------------- | -------------------------------------------------------------------------- |
| `Id`            | `INT`           | PRIMARY KEY, IDENTITY(1,1)  | Unique identifier for each product.                                        |
| `AccountId`     | `INT`           | NOT NULL                    | Identifier for the account associated with the product.                    |
| `Code`          | `VARCHAR(100)`  | NULL                        | Product code or SKU.                                                       |
| `Name`          | `VARCHAR(250)`  | NULL                        | Name of the product.                                                       |
| `Description`   | `VARCHAR(500)`  | NULL                        | Description of the product.                                                |
| `Model`         | `VARCHAR(100)`  | NULL                        | Model number of the product.                                               |
| `ImagePublicId` | `VARCHAR(200)`  | NULL                        | Public ID of the product image.                                            |
| `ImageUrl`      | `VARCHAR(250)`  | NULL                        | URL of the product image.                                                  |
| `Barcode`       | `VARCHAR(50)`   | NULL                        | Barcode of the product.                                                    |
| `Width`         | `DECIMAL(18,2)` | NULL                        | Width of the product (in specified units).                                 |
| `Height`        | `DECIMAL(18,2)` | NULL                        | Height of the product (in specified units).                                |
| `Length`        | `DECIMAL(18,2)` | NULL                        | Length of the product (in specified units).                                |
| `Weight`        | `DECIMAL(18,2)` | NULL                        | Weight of the product (in specified units).                                |
| `EnableWeb`     | `INT`           | NOT NULL, DEFAULT 0         | Flag indicating if the product is enabled for web sales (0 = No, 1 = Yes). |
| `EnableInvoice` | `INT`           | NOT NULL, DEFAULT 0         | Flag indicating if the product is enabled for invoicing (0 = No, 1 = Yes). |
| `PiecesByBox`   | `VARCHAR(250)`  | NULL                        | Number of pieces per box for the product.                                  |
| `SatUseCode`    | `VARCHAR(10)`   | NULL                        | SAT (Mexican Tax Administration) use code for the product.                 |
| `SatUnitCode`   | `VARCHAR(10)`   | NULL                        | SAT unit code for the product.                                             |
| `BrandId`       | `INT`           | NOT NULL                    | Identifier for the brand associated with the product.                      |
| `StatusId`      | `INT`           | NOT NULL                    | Identifier for the product status.                                         |
| `UserId`        | `INT`           | NOT NULL                    | Identifier for the user who created or last updated the product.           |
| `ExternalId`    | `INT`           | NOT NULL, DEFAULT 0         | External identifier for integration purposes.                              |
| `CreatedAt`     | `DATETIME`      | NOT NULL, DEFAULT GETDATE() | Timestamp when the product was created.                                    |
| `UpdatedAt`     | `DATETIME`      | NOT NULL, DEFAULT GETDATE() | Timestamp when the product was last updated.                               |

### Notes

- **Data Types**: Use appropriate data types based on your application requirements and ensure correct precision for decimal fields.
- **Default Values**: Default values are set for `EnableWeb`, `EnableInvoice`, and `ExternalId` to ensure that fields are initialized properly.
- **Timestamps**: `CreatedAt` and `UpdatedAt` fields are automatically populated with the current date and time when a record is created or updated.

This table design allows for detailed tracking of products and their attributes within the system.
