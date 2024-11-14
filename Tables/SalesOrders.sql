CREATE TABLE SalesOrders(
    Id  INT PRIMARY KEY IDENTITY(1,1) , 
    OrderNumber INT NOT NULL , 
    QuoteId INT NOT NULL ,
    CompanyId INT NOT NULL ,
    BranchId INT NOT NULL , 
    WarehouseId INT NOT NULL , 
    CustomerId INT NOT NULL ,
    UserId INT NULL ,
    StatusId INT NULL , 
    --ShippingCompany VARCHAR(50) ,

    RequiredDeliver BIT NOT NULL ,    
    DeliveryTypeId INT NOT NULL DEFAULT 0 , -- parcel-service | local-pickup | freight-companies | internal-deliver-service    
    ParcelServiceId INT , -- paqueteria
    FreightCompanyId INT , -- fletera 

    PriceListId INT NOT NULL ,
    Quantity INT NOT NULL ,
    DeliverAmount decimal(16, 6) NOT NULL DEFAULT 0 ,
    CheckPlusAmount decimal(16, 6) NOT NULL DEFAULT 0 ,
    SafeguardAmount decimal(16, 6) NOT NULL DEFAULT 0 ,
    DiscountAmount decimal(16, 6) NOT NULL DEFAULT 0 ,
    SubTotal DECIMAL(16, 6) NULL ,
    Total DECIMAL(16, 6) NULL ,

    RequiredInvoice BIT NOT NULL DEFAULT 0 , 
    RequiredCheckPlus BIT NOT NULL DEFAULT 0 ,    
    RequiredPacking BIT NOT NULL DEFAULT 0 ,  
    RequiredSafeguard BIT NOT NULL DEFAULT 0 ,   
    

    Address VARCHAR(500) ,
    ZipCode VARCHAR(15) ,
    Region VARCHAR(500) ,
    State VARCHAR(100) ,
    City VARCHAR(200) ,
    ExteriorNumber VARCHAR(50) ,
    InteriorNumber VARCHAR(50) ,
    Phone VARCHAR(200) ,
    
    IsAssigned BIT NOT NULL  ,

    Observations VARCHAR(250) NULL ,
    Commentary varchar(500) NULL ,    

    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE() ,
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE()
)