-- Question 1
-- Copy, paste, and run the SQL code from the summary.
DONE

-- Question 2
-- Delete all ‘lion’ entries from the table.
DELETE 
FROM animals
WHERE type = 'lion';

-- Question 3
-- Delete all animals whose names start with “M”.
DELETE 
FROM animals
WHERE name LIKE 'M%';

-- Question 4
-- Delete all entries whose age is less than 9.

DELETE 
FROM animals
WHERE age < 9;