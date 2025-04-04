WITH customer_spending AS (    
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
		c.primemember)
 	SELECT    
		customerid,    
		name,    
		primemember,    
		total_spent,    
		total_orders,    
		RANK() OVER (ORDER BY total_spent DESC) AS rank_by_spending
	FROM     
		customer_spending
	WHERE 
		total_spent > 5000
	ORDER BY    
		rank_by_spending;
