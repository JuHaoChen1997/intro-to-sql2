-- Query for hotels that allow pets
SELECT * FROM hotels WHERE pets = true;

-- Query for hotels that allow pets AND have vacancies
SELECT * FROM hotels JOIN rooms ON hotels.id = rooms.hotel_id WHERE pets = true AND vacant = true;

-- Query for the average room price for a hotel that allows pets
SELECT AVG(price) FROM hotels JOIN rooms ON hotels.id = rooms.hotel_id WHERE pets = true;

-- Query for the most expensive room
SELECT * FROM rooms WHERE price IS NOT NULL ORDER BY price DESC LIMIT 1;

-- Query for the average price of a room that has a name that includes queen in it (case insensitive)
SELECT AVG(price) FROM rooms WHERE name LIKE '%Queen%';

-- Query for the most expensive room
SELECT * FROM rooms WHERE price IS NOT NULL ORDER BY price DESC LIMIT 1;

-- Update a room at Hotel California with a room number of 202 to go from vacant-true to vacant false.

-- Reference
-- https://stackoverflow.com/questions/12007166/sql-error-table-specified-more-than-once
UPDATE rooms SET vacant = 'false' FROM rooms AS rooms_alias INNER JOIN hotels ON hotels.id = rooms_alias.hotel_id WHERE rooms_alias.room_num = 202 AND hotels.name = 'Hotel California';

-- Update all the rooms with the hotel_id of 7 to now have a hotel_id that matches the Grand Budapest Hotel
UPDATE rooms SET hotel_id = 6 FROM rooms AS rooms_alias WHERE rooms_alias.hotel_id = 7;