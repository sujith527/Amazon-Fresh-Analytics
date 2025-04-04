SELECT 
	city,	
	COUNT(customerid) AS prime_members_count
FROM 
	customers
	WHERE PrimeMember = 'yes'
GROUP BY 
	city
ORDER BY 
	prime_members_count DESC;

