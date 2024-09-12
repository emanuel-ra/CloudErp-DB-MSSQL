# DismissalTypes Table Documentation

The `DismissalTypes` table is used to store various types of employee dismissals, including their descriptions and status.

## Table Structure

| Column Name     | Data Type      | Constraints/Default         | Description                                                  |
| --------------- | -------------- | --------------------------- | ------------------------------------------------------------ |
| **Id**          | `INT`          | PRIMARY KEY, IDENTITY(1,1)  | Unique identifier for each dismissal type.                   |
| **Name**        | `VARCHAR(100)` | NOT NULL                    | Name of the dismissal type (e.g., Termination, Resignation). |
| **Description** | `VARCHAR(250)` | NULL                        | A detailed description of the dismissal type.                |
| **StatusId**    | `INT`          | NOT NULL, DEFAULT 1         | Status of the dismissal type (e.g., Active, Inactive).       |
| **CreatedAt**   | `DATETIME2`    | NOT NULL, DEFAULT GETDATE() | Timestamp when the dismissal type record was created.        |
| **UpdatedAt**   | `DATETIME2`    | NOT NULL, DEFAULT GETDATE() | Timestamp when the dismissal type record was last updated.   |

## Notes:

- **Default Values**: The `StatusId` field has a default value of 1, indicating the default status of new records.
- **Timestamps**: The `CreatedAt` and `UpdatedAt` fields automatically capture the time of record creation and last update.
