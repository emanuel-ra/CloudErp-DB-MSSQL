# ScholarshipLevels Table Documentation

The `ScholarshipLevels` table is used to store information about different levels of scholarships, including their descriptions and status.

## Table Structure

| Column Name     | Data Type      | Constraints/Default         | Description                                                   |
| --------------- | -------------- | --------------------------- | ------------------------------------------------------------- |
| **Id**          | `INT`          | PRIMARY KEY, IDENTITY(1,1)  | Unique identifier for each scholarship level.                 |
| **Name**        | `VARCHAR(100)` | NOT NULL                    | Name of the scholarship level (e.g., Bronze, Silver, Gold).   |
| **Description** | `VARCHAR(250)` | NULL                        | A detailed description of the scholarship level.              |
| **StatusId**    | `INT`          | NOT NULL, DEFAULT 1         | Status of the scholarship level (e.g., Active, Inactive).     |
| **CreatedAt**   | `DATETIME2`    | NOT NULL, DEFAULT GETDATE() | Timestamp when the scholarship level record was created.      |
| **UpdatedAt**   | `DATETIME2`    | NOT NULL, DEFAULT GETDATE() | Timestamp when the scholarship level record was last updated. |

## Notes:

- **Default Values**: The `StatusId` field has a default value of 1, indicating the default status of new records.
- **Timestamps**: The `CreatedAt` and `UpdatedAt` fields automatically capture the time of record creation and last update.
