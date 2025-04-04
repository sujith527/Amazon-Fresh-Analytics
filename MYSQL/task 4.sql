CREATE table customers_demo(
		customerID VARCHAR(200) PRIMARY KEY,  
		Name VARCHAR(200) UNIQUE,       
		Age INT NOT NULL CHECK(Age >= 18),        
		Gender VARCHAR(10),      
		City VARCHAR(10),        
		State VARCHAR(10),      
		Country VARCHAR(10) DEFAULT 'India',   
		SignupDate DATE,        
		PrimeMember ENUM('YES', 'NO') NOT NULL DEFAULT 'NO'
);
