-- Question 1
-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT invoice.invoice_id, invoice_line.unit_price
FROM invoice
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
WHERE unit_price > 0.99;

-- Question 2
-- Get the invoice_date, customer first_name and last_name, and total from all invoices.
SELECT invoice.invoice_date, customer.first_name, customer.last_name, invoice.total
FROM invoice
JOIN customer ON invoice.customer_id = customer.customer_id;

-- Question 3
-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Support reps are on the employee table.
SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name
FROM customer
JOIN employee ON customer.support_rep_id = employee.employee_id;

-- Question 4
-- Get the album title and the artist name from all albums.
SELECT album.title, artist.name
FROM album
JOIN artist ON album.artist_id = artist.artist_id;

-- Question 5
-- Get all playlist_track track_ids where the playlist name is Music.
SELECT album.title, artist.name
FROM album
JOIN artist ON album.artist_id = artist.artist_id;

-- Question 6
-- Get all track name`s for `playlist_id.
SELECT track.name, playlist_track.playlist_id
FROM track
JOIN playlist_track ON track.track_id = playlist_track.track_id;


-- Question 7
-- Get all track name`s and the playlist `name that they’re on ( 2 joins ).
SELECT track.name, playlist.name
FROM track
JOIN playlist_track ON track.track_id = playlist_track.track_id
JOIN playlist ON playlist_track.playlist_id = playlist.playlist_id;

-- Question 8
-- Get all track name`s and album `title`s that are the genre `Alternative & Punk ( 2 joins ).

SELECT track.name, album.title
FROM track
JOIN album ON track.album_id =  album.album_id
JOIN genre ON track.genre_id = genre.genre_id
WHERE genre.name = 'Alternative & Punk';