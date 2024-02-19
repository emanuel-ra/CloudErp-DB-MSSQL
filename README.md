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

## Roles

3.- Run: Table > Roles<br>
3.2.- Run: Insert > Roles<br>
3.3.- Run: Foreign Key > Roles<br>

## Users

4.- Run: Table > Users<br>
4.2.- Run: Foreign Key > Users<br>

## Frontend Routes

5.- Run: Table > FrontendRoutes<br>
5.2.- Run: Foreign Key > FrontendRoutes<br>

## Relation Role Frontend Routes

6.- Run: Table > RelRoleFrontRoutes<br>
6.2.- Run: Foreign Key > RelRoleFrontRoutes<br>

## Companies

7.- Run: Table > Companies<br>
7.2.- Run: Insert > Companies<br>
7.3.- Run: Foreign Key > Companies<br>

## Branches

8.- Run: Table > Branches<br>
8.2.- Run: Foreign Key > Branches<br>

## Brands

9.- Run: Table > Brands<br>
9.2.- Run: Insert > Brands<br>
9.3.- Run: Foreign Key > Brands<br>

## Categories

10.- Run: Table > Categories<br>
10.2.- Run: Insert > Categories<br>
10.3.- Run: Foreign Key > Categories<br>

## Products

11.- Run: Table > Products<br>
11.3.- Run: Foreign Key > Products<br>

## Relation Between Products And Categories

12.- Run: Table > RelCategoriesToProducts<br>
12.3.- Run: Foreign Key > RelCategoriesToProducts<br>
