WITH customer_spending AS ( 
	SELECT          
	c.customerid,            
	c.name,            
	c.primemember,            
	SUM(o.orderAmount + o.deliveryFee - COALESCE(o.discountApplied, 0)) AS total_spent    
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
	RANK() OVER (ORDER BY total_spent DESC) AS spending_rank
FROM 
	customer_spending;

