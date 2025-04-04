SELECT 
	productid, 
	ProductName, 
	total_revenue
FROM (    
	SELECT p.productid, 
	p.ProductName, 
	SUM(od.unitprice * od.quantity) AS total_revenue,           			
    RANK() OVER (ORDER BY SUM(od.unitprice * od.quantity) DESC) AS revenue_rank    
FROM 
		order_details od    
JOIN 
		products p ON od.productID = p.ProductID    
GROUP BY 
		p.productid, p.ProductName) AS ranked_products
WHERE revenue_rank <= 3;
