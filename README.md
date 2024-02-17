# CLOUD ERP DB / MSSQL 💻

## TABLES

- CatStatus
- Branches
- Brands
- Categories
- Employees
- Roles
- Users
- Frontend Routes
- Rel Frontend Routes to Roles
- Products
- Rel Categories to Products
- Warehouses
- Customers
- Sat Countries
- Sat Zip Codes
- Sat Localities
- Sat Payment Method
- Sat Payment Form
- Sat Municipalities
- Sat Localities
- Sat Periodicities
- Sat Tax Regime
- Sat States

## INSERTS

- Cat Status
- Roles
- Sat Countries

# GUIDE

In order to create correctly this database you should run the follow queries in this order:

## Status

1.- Run: Table > CatStatus
1.1.- Run: Insert > CatStatus

## Countries 🏳

2.- Run: Table > SatCountries
2.2.- Run: Insert > SatCountries
2.3.- Run: Foreign Key > SatCountries

## States

2.- Run: Table > SatStates
2.2.- Run: Insert > SatStates (MX,USA,CAN)
2.3.- Run: Foreign Key > SatStates
