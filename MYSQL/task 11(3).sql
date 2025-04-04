       SELECT 
		SupplierID, 
		SUM(StockQuantity) AS TotalStock
	FROM 
		Products
	GROUP BY 
		SupplierID
	ORDER BY 
		TotalStock DESC
	LIMIT 10;
    
-- to check the supplier details

	SELECT * 
	FROM amazon.suppliers
	WHERE supplierid = '898ca408-050f-49be-b083-00eedf4bd064';


