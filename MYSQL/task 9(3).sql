SELECT 	
	p.productid,   
	p.productname,  
	p.category,    
	sum(od.quantity) as total_unit_sold,    
	SUM(od.quantity * od.unitprice) AS total_revenue,	
	COUNT(DISTINCT o.orderid) AS order_count,    	
	ROUND(SUM(od.quantity * od.unitprice) / SUM(od.quantity), 2) AS 	average_price_per_unit
FROM	
	products p 
JOIN	
	order_details od ON p.ProductID = od.ProductID
JOIN	
	orders o ON od.OrderID = o.OrderID
GROUP BY	
	p.ProductID,  
	p.ProductName,   
	p.category,    
	p.PricePerUnit
ORDER BY    
	total_unit_sold DESC,  
	total_revenue DESC;
    
SELECT 
    p.ProductID, 
    p.ProductName, 
    SUM(od.Quantity * od.UnitPrice) AS TotalSales,
    RANK() OVER (ORDER BY SUM(od.Quantity * od.UnitPrice) DESC) AS SalesRank
FROM 
    Products p
JOIN 
    Order_Details od ON p.ProductID = od.ProductID
GROUP BY 
    p.ProductID, p.ProductName
ORDER BY 
    TotalSales DESC;

