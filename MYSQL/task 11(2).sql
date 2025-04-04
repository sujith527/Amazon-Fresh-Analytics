select 		
	o.orderID,    	
	o.customerID,		
	SUM(od.quantity * od.unitprice) AS total_revenue,    		
	COUNT(od.OrderID) AS per_order,	
	MIN(o.orderDate) AS first_order_date,    
	MAX(o.orderDate) AS last_order_date
from  	
	orders o
   join 		
	order_details od on o.OrderID = od.OrderID
GROUP BY     	
	o.orderID,     	
	o.customerID
ORDER BY     	
	total_revenue DESC;
    
alter table order_details

