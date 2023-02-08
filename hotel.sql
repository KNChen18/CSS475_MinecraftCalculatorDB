-- CREATE TABLE Hotel 
--     (hotelNo int [NOT NULL] [UNIQUE] [PRIMARY],
--      hotelName text [NOT NULL],
--      city text [NOT NULL]); 



-- insert into Hotel values (1, 'Death Inn', 'Seattle'); 

-- insert into Hotel values (2, 'Life Inn', 'Chicago'); 

-- insert into Hotel values (3, 'Earth Inn', 'Olympia'); 

-- insert into Hotel values (4, 'World Inn', 'Bothell'); 

-- insert into Hotel values (5, 'Ocean Inn', 'Columbus'); 

-- insert into Hotel values (6, 'Hilton', 'Columbus'); 

-- insert into Hotel values (7, 'Ocean', 'Las Vegas'); 

-- insert into Hotel values (8, 'Ocean', 'Columbus'); 

-- insert into Hotel values (9, 'Ocean2', 'Las Vegas'); 

-- insert into Hotel values (10, 'Ocean3', 'Las Vegas'); 

SELECT * FROM HOTEL;

-- CREATE TABLE Guest
--     (guestNo int [NOT NULL] [UNIQUE] [PRIMARY],
--      guestname text [NOT NULL],
--      guestAddress text [NOT NULL]);

-- insert into Guest values (1, 'Maria Chen', '111 NE 111 Ave, Seattle, WA');
-- insert into Guest values (2, 'Julie Tahajian', 'Pasadena, CA');
-- insert into Guest values (3, 'Farha Banerjee', 'Dallas, TX');
-- insert into Guest values (4, 'Ichiro Suzuki', 'New York, NY');

SELECT * FROM Guest;

CREATE TABLE Rooom 
    (roomNo int [NOT NULL] [UNIQUE] [PRIMARY],
     H hotelNo, r roomType, int prices);


CREATE TABLE Booking (H hotelNo [NOT NULL] [UNIQUE], 
                      G guestNo [NOT NULL] [UNIQUE], 
                      DATE dateFrom, DATE dateTo, R roomNo);
   

-- DOMAINS 

--Domain for room types (value type)

--Domain for Hotel Numbers (referential)

--Domain for room prices ($50-$500) (range of ints)
CREATE DOMAIN DroomType [AS] ROOMTYPE 

[DEFAULT defaultOption] [CHECK (searchCondition)]; 


-- Domain for room number (1-9999) (range of ints)