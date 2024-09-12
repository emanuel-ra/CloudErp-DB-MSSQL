# MaritalStatus Table Documentation

The `MaritalStatus` table is used to store different marital status options, including their descriptions and status.

## Table Structure

| Column Name     | Data Type      | Constraints/Default         | Description                                                |
| --------------- | -------------- | --------------------------- | ---------------------------------------------------------- |
| **Id**          | `INT`          | PRIMARY KEY, IDENTITY(1,1)  | Unique identifier for each marital status.                 |
| **Name**        | `VARCHAR(50)`  | NOT NULL                    | Name of the marital status (e.g., Single, Married).        |
| **Description** | `VARCHAR(250)` | NULL                        | A detailed description of the marital status.              |
| **StatusId**    | `INT`          | NOT NULL, DEFAULT 1         | Status of the marital status (e.g., Active, Inactive).     |
| **CreatedAt**   | `DATETIME`     | NOT NULL, DEFAULT GETDATE() | Timestamp when the marital status record was created.      |
| **UpdatedAt**   | `DATETIME`     | NOT NULL, DEFAULT GETDATE() | Timestamp when the marital status record was last updated. |

## Notes:

- **Default Values**: The `StatusId` field has a default value of 1, indicating the default status of new records.
- **Timestamps**: The `CreatedAt` and `UpdatedAt` fields automatically capture the time of record creation and last update.
