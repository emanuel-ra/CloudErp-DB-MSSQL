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

1.- Run: Table > CatStatus <br>
1.1.- Run: Insert > CatStatus <br>

## Countries 🏳

2.- Run: Table > SatCountries<br>
2.2.- Run: Insert > SatCountries<br>
2.3.- Run: Foreign Key > SatCountries<br>

## States

2.- Run: Table > SatStates<br>
2.2.- Run: Insert > SatStates (MX,USA,CAN)<br>
2.3.- Run: Foreign Key > SatStates<br>
