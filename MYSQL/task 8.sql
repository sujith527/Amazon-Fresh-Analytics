ALTER TABLE Reviews
   ADD CONSTRAINT check_rating 
   CHECK (Rating BETWEEN 1 AND 5);

## To check
  INSERT INTO reviews(Rating)
  VALUES(0);
