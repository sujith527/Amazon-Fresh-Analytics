CREATE TABLE Categories (    
	CategoryID INT PRIMARY KEY AUTO_INCREMENT,    	
	CategoryName VARCHAR(100) NOT NULL,    
	SubCategoryName VARCHAR(100) NOT NULL
	);
    

INSERT INTO Categories (CategoryName, SubCategoryName)
SELECT DISTINCT Category, SubCategory FROM Products;

UPDATE Products p
JOIN Categories c ON p.Category = c.CategoryName AND p.SubCategory = c.SubCategoryName
SET p.CategoryID = c.CategoryID;

ALTER TABLE Products
DROP COLUMN Category,
DROP COLUMN SubCategory;
