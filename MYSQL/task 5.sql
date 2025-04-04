INSERT INTO   Products   (productID,ProductName,Category,SubCategory,PricePerUnit,StockQuantity,SupplierID)
   VALUES	
   ('PROD1001', 'Organic  Apples', 'Fruits', 'Apples', 2.99, 500, 'SUP001'),   
   ('PROD1002', 'Whole  Bread', 'Bakery', 'Bread', 3.49, 300, 'SUP002'),   
   ('PROD1003', 'Free Eggs (12pk)', 'Dairy', 'Eggs', 4.99, 200, 'SUP003');    

DELETE FROM Products WHERE ProductID IN ('PROD1001', 'PROD1002', 'PROD1003');

select *
from products
where ProductID='PROD1001';