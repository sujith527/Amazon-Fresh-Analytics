select 	
	o.orderID,    
	o.customerID,	
	SUM(od.quantity * od.unitprice) AS total_revenue,    	
	COUNT(od.OrderID) AS per_order
from  
	orders o
join 	
	order_details od on o.OrderID = od.OrderID
GROUP BY     
	o.orderID,     
	o.customerID
ORDER BY     
	total_revenue DESC;
