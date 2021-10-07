-- Question 1
-- Find all customers with fax numbers and set those numbers to null.
UPDATE customer
SET fax = null
WHERE fax IS NOT null;

-- Question 2
-- Find all customers with no company (null) and set their company to “Self”.
UPDATE customer
SET company = 'Self'
WHERE company IS null;

-- Question 3
-- Find the customer Julia Barnett and change her last name to Thompson.
UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia' AND last_name = 'Barnett';

-- Question 4
-- Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.
UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

-- Question 5
-- Find all tracks that are the genre Metal and have no composer. Set the composer to “The darkness around us”.

UPDATE track
SET composer = 'The Darkness Around US'
WHERE genre_id = ( SELECT genre_id FROM genre WHERE name = 'Metal' )
AND composer IS null;


-- Question 6
-- Refresh your page to remove all database changes.
DONE
