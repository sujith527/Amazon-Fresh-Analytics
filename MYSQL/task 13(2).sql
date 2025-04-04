SELECT 
	customerid, 
	name
FROM 
	customers
WHERE customerid NOT IN (    
	SELECT DISTINCT customerid FROM orders
);
