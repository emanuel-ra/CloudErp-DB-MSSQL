SET IDENTITY_INSERT Categories ON
INSERT INTO Categories (Id , ParentId , Name , Logo , IsEnableECommerce , StatusId , UserId , ExternalId , CreatedAt , UpdatedAt ) 
    VALUES  (1 , 0 , 'Otros' , '' , 0 , 1 , 1 , 0 , GETDATE() , GETDATE() ) 
SET IDENTITY_INSERT Categories OFF