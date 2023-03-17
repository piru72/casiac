

create database finalpractice
use finalpractice

CREATE TABLE Rating (
    RateId INT PRIMARY KEY IDENTITY(1,1),
    MovieId INT NOT NULL,
    reviewStar INT NOT NULL,
    NumofRating INT NOT NULL
);

INSERT INTO Rating (MovieId, reviewStar, NumofRating)
VALUES (1, 8, 10),
       (2, 7, 15),
       (3, 6, 5),
       (4, 9, 20),
       (5, 10, 8),
       (6, 8, 12);

SELECT MovieId, SUM(reviewStar) AS totalReviewStar
FROM Rating
GROUP BY MovieId
HAVING SUM(reviewStar) > 7;


SELECT MovieId, reviewStar
FROM Rating
WHERE reviewStar <> (
  SELECT AVG(reviewStar) 
  FROM Rating R2 
  WHERE R2.MovieId = Rating.MovieId
);




CREATE TABLE Hotel (
    room_no INT PRIMARY KEY IDENTITY(100,1),
    hotel_branch varchar(50) NOT NULL,
    rent INT NOT NULL,
);

INSERT INTO Hotel VALUES
('Dhanmondi',1000),
('Gulshan',2500),
('Dhanmondi',5000),
('Dhanmondi',3500),
('Uttara',2000);

CREATE TABLE Customer (
    cus_id INT PRIMARY KEY IDENTITY(301 ,1),
    cus_name varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
);

INSERT INTO Customer VALUES
('Mizan','Dhaka'),
('Auni','Dhaka'),
('Komol','Chittagong'),
('Tipu','Dhaka'),
('Shams','Chittagong')
;





CREATE TABLE Booking (
    cus_id INT FOREIGN KEY REFERENCES Customer(cus_id),
    room_no INT FOREIGN KEY REFERENCES Hotel(room_no)
);

INSERT INTO Booking VALUES
(301,104),
(303,103),
(305,101),
(304,101),
(303,104)
;

SELECT * FROM Customer
SELECT * FROM Hotel
SELECT * FROM Booking

--3

SELECT h.room_no, h.hotel_branch, h.rent
FROM Hotel h
JOIN (
  SELECT room_no 
  FROM Hotel 
  EXCEPT 
  SELECT room_no 
  FROM Booking
) AS c ON h.room_no = c.room_no;

--4
SELECT * FROM Booking
SELECT DISTINCT a.cus_id FROM
Booking a
join 
Booking b
on a.room_no = b.room_no 

--3
SELECT DISTINCT a.cus_name ,a.cus_id 
from Customer a
JOIN
( SELECT b.cus_id , count(b.cus_id) as 'count_room' from Booking b group by (b.cus_id)) as c
ON c.cus_id = a.cus_id 
where
c.count_room > 1





