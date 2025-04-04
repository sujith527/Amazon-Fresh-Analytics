   SELECT    
            p.ProductName,   
            p.Category,   
            p.SubCategory,    
            p.PricePerUnit,   
            p.StockQuantity,   
            COUNT(r.ReviewID) AS total_reviews,    
            ROUND(AVG(r.Rating), 2) AS average_rating
    FROM     
	products p
JOIN     
            reviews r ON p.ProductID = r.ProductID
    GROUP BY    
            p.ProductID, 
            p.ProductName,   
            p.Category, 
            p.SubCategory,  
            p.PricePerUnit,  
            p.StockQuantity
   HAVING    
           AVG(r.Rating) > 4
  ORDER BY     average_rating DESC, 
              total_reviews DESC;
