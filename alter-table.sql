-- Quesiton 1
-- Copy, paste, and run the insert statement from the delete section above. (You should have deleted all the entries.)
DONE

-- Question 2
-- Add a column to the animals table called “location”. It should have a VARCHAR data type.
ALTER TABLE animals
ADD location VARCHAR(50);

-- Question 3
-- Insert 3 new animals into the table – make sure none of their fields are null.
INSERT INTO animals ( name, type, age, location )

VALUES('Lucy', 'Tiger', 4, 'Africa'),('Pippin', 'Cougar', 5, 'Provo'),('Gus', 'Wolf', 5, 'Payson');


-- Question 4
-- Change the “type” column’s name to be “species”.
ALTER TABLE animals
RENAME COLUMN type TO species;

-- Question 5
-- Change the “species” column data type to be VARCHAR.
ALTER TABLE animals
ALTER spicies
SET DATA TYPE VARCHAR(100);
