ALTER TABLE Products 
    ADD CONSTRAINT fk_category 
    FOREIGN KEY (CategoryID) 
    REFERENCES Categories(CategoryID) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE;
