CREATE TABLE Quotation(
    Id INT PRIMARY KEY IDENTITY(1,1) , 
    CompanyId INT NOT NULL ,    
    CustomerId INT NOT NULL ,
    SellerId INT NOT NULL ,
    UserId INT NOT NULL ,    
    StatusId INT NULL DEFAULT 1,        
    PriceListId int NOT NULL ,
    
    RequiredDeliver BIT NOT NULL ,    
    DeliveryTypeId INT NOT NULL DEFAULT 0 , -- parcel-service | local-pickup | freight-companies | internal-deliver-service    
    ParcelServiceId INT , 
    FreightCompanyId INT ,

    RequiredInvoice BIT NOT NULL DEFAULT 0 , 
    RequiredCheckPlus BIT NOT NULL DEFAULT 0 ,    
    RequiredPacking BIT NOT NULL DEFAULT 0 ,  
    RequiredSafeguard BIT NOT NULL DEFAULT 0 ,   

    Quantity INT NOT NULL DEFAULT 0 ,
    DeliverAmount decimal(16, 6) NOT NULL DEFAULT 0 ,
    CheckPlusAmount decimal(16, 6) NOT NULL DEFAULT 0 ,
    SafeguardAmount decimal(16, 6) NOT NULL DEFAULT 0 ,
    DiscountAmount decimal(16, 6) NOT NULL DEFAULT 0 ,
    SubTotal decimal(16, 6) NOT NULL DEFAULT 0 ,
    Total decimal(16, 6) NOT NULL DEFAULT 0 ,    

    Address VARCHAR(500)  ,
    ZipCode VARCHAR(15)  ,
    Region VARCHAR(500)  ,
    State VARCHAR(100)  ,
    City VARCHAR(200)  ,
    ExteriorNumber VARCHAR(50)  ,
    InteriorNumber VARCHAR(50)  ,
    Phone VARCHAR(200)  ,    
    Commentary varchar(500) NULL ,    
    Observations varchar(250) NULL ,
    IsOrder BIT NOT NULL DEFAULT 0 ,
    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE() ,
    UpdatedAt DATETIME2 NOT NULL DEFAULT GETDATE() 
)