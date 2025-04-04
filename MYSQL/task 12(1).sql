CREATE TABLE Categories001 (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(255) UNIQUE NOT NULL,
    SubCategory VARCHAR(255) NOT NULL
);

ALTER TABLE Products ADD COLUMN CategoryID INT;

UPDATE Products p
JOIN Categories001 c 
ON p.Category = c.CategoryName AND p.SubCategory = c.SubCategory
SET p.CategoryID = c.CategoryID;

ALTER TABLE Products DROP COLUMN Category, DROP COLUMN SubCategory;

