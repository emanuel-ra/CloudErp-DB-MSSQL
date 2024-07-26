SET IDENTITY_INSERT CatOrderStatusCone ON
INSERT INTO CatOrderStatusCone (Id,Name,Color,ConeKey)
    VALUES  (3,'out of stock','blue','out-of-stock') ,
            (4,'awaiting merchandise','green','awaiting-merchandise') ,
            (5,'out of stock & awaiting merchandise','black','out-of-stock-and-awaiting-merchandise') ,
            (6,'finished','red','finished') ,
            (9,'validated review','purple','validated-review') ,
            (10,'validated','yellow','validated') ,
            (12,'local','pink','local') 
SET IDENTITY_INSERT CatOrderStatusCone OFF