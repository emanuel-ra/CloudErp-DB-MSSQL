# CustomerBalance Table Documentation

## Table Definition

The `CustomerBalance` table stores information about each customer's financial balances, including their total purchases, invoiced amounts, payments made, and the balances available or frozen.

## Columns

| Column Name          | Type            | Description                                                                                                                      |
| -------------------- | --------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| **Id**               | `INT`           | Primary key, unique identifier for each record.                                                                                  |
| **CustomerId**       | `INT`           | Foreign key referencing the `Customers` table, identifying the customer associated with the balance. **Constraints**: `NOT NULL` |
| **TotalPurchases**   | `DECIMAL(18,2)` | The total value of purchases made by the customer.                                                                               |
| **TotalInvoiced**    | `DECIMAL(18,2)` | The total amount invoiced to the customer.                                                                                       |
| **TotalPaid**        | `DECIMAL(18,2)` | The total amount paid by the customer.                                                                                           |
| **Balance**          | `DECIMAL(18,2)` | The customer's current balance, typically calculated as the difference between `TotalInvoiced` and `TotalPaid`.                  |
| **FrozenBalance**    | `DECIMAL(18,2)` | The portion of the customer's balance that is frozen and cannot be used.                                                         |
| **AvailableBalance** | `DECIMAL(18,2)` | The balance available for use, calculated as `Balance - FrozenBalance`.                                                          |
| **CreatedAt**        | `DATETIME2`     | The date and time when the record was created.                                                                                   |
| **UpdatedAt**        | `DATETIME2`     | The date and time when the record was last updated.                                                                              |

### Notes

The Balance and AvailableBalance fields can be automatically calculated in real-time, but they are defined as regular columns for flexibility in how they are updated.
The UpdatedAt column should be updated on every modification of the record, and a trigger could be implemented for automatic updates.
