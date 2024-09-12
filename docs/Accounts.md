# Accounts Table Schema

The `Accounts` table stores information about accounts within the system. Below is a description of each column in the table:

| Column Name | Data Type      | Constraints                | Description                                  |
| ----------- | -------------- | -------------------------- | -------------------------------------------- |
| `Id`        | `INT`          | PRIMARY KEY, IDENTITY(1,1) | Unique identifier for each account.          |
| `Name`      | `VARCHAR(250)` | NOT NULL                   | Name of the account.                         |
| `StatusId`  | `INT`          | NOT NULL, DEFAULT 1        | Status of the account (default is 1).        |
| `CreatedAt` | `DATETIME`     | NOT NULL                   | Timestamp when the account was created.      |
| `UpdatedAt` | `DATETIME`     | NOT NULL                   | Timestamp when the account was last updated. |

### Notes

- **Data Types**: Ensure that the data types are appropriate for the data being stored.
- **Default Values**: `StatusId` is set to default to `1`, which may represent an active status or similar. Adjust based on your application’s status definitions.
- **Timestamps**: The `CreatedAt` and `UpdatedAt` fields are mandatory and should be set when records are created and updated, respectively.

This table design allows for the basic management and tracking of accounts within the system.
