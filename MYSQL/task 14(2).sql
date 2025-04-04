SELECT 	
	c.categoryid,    
	c.categoryname,	
	COUNT(od.orderid) AS order_count     
FROM 	
	order_details od     
JOIN 	
	categories c ON od.productid = c.CategoryID     
GROUP BY 
	c.CategoryID,
	c.categoryname     
ORDER BY 		
	order_count DESC     
LIMIT 3;

