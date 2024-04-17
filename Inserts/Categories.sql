SET IDENTITY_INSERT Categories ON
INSERT INTO Categories (Id , ParentId , Name , Logo , IsEnableECommerce , StatusId , UserId , ExternalId , CreatedAt , UpdatedAt ) 
    VALUES  (1 , 0 , 'Otros' , '' , 0 , 1 , 1 , 0 , GETDATE() , GETDATE() ) 

INSERT INTO Categories (Id , ParentId , Name , Logo , IsEnableECommerce , StatusId , UserId , ExternalId , CreatedAt , UpdatedAt ) 
    VALUES  (2 , 0 , 'Audio' , '' , 0 , 1 , 1 , 0 , GETDATE() , GETDATE() ) 

    INSERT INTO Categories (Id , ParentId , Name , Logo , IsEnableECommerce , StatusId , UserId , ExternalId , CreatedAt , UpdatedAt ) 
        VALUES  (3 , 2 , 'Audífonos & Diademas' , '' , 0 , 1 , 1 , 0 , GETDATE() , GETDATE() ) 
    INSERT INTO Categories (Id , ParentId , Name , Logo , IsEnableECommerce , StatusId , UserId , ExternalId , CreatedAt , UpdatedAt ) 
        VALUES  (4 , 2 , 'Bocinas' , '' , 0 , 1 , 1 , 0 , GETDATE() , GETDATE() ) 

INSERT INTO Categories (Id , ParentId , Name , Logo , IsEnableECommerce , StatusId , UserId , ExternalId , CreatedAt , UpdatedAt ) 
    VALUES  (5 , 0 , 'Iluminación LED' , '' , 0 , 1 , 1 , 0 , GETDATE() , GETDATE() ) 

    INSERT INTO Categories (Id , ParentId , Name , Logo , IsEnableECommerce , StatusId , UserId , ExternalId , CreatedAt , UpdatedAt ) 
        VALUES  (6 , 5 , 'Portátil' , '' , 0 , 1 , 1 , 0 , GETDATE() , GETDATE() ) 
    INSERT INTO Categories (Id , ParentId , Name , Logo , IsEnableECommerce , StatusId , UserId , ExternalId , CreatedAt , UpdatedAt ) 
        VALUES  (7 , 5 , 'Empotrar' , '' , 0 , 1 , 1 , 0 , GETDATE() , GETDATE() ) 

SET IDENTITY_INSERT Categories OFF