SELECT      
	c.customerid,        
	c.name,        
	c.primemember,
    SUM(o.orderAmount + o.deliveryFee - COALESCE(o.discountApplied, 0)) AS total_spent,        
	COUNT(DISTINCT o.orderID) AS total_orders
FROM         
	customers c 
JOIN       
	orders o ON c.customerid = o.customerid
GROUP BY        
	c.customerid,        
	c.name,        
	c.primemember
ORDER BY        
	total_spent DESC;
