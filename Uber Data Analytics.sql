CREATE TABLE Uber_Data_Analytics (
Date_ VARCHAR(50),
Time_ VARCHAR(50),
Booking_ID VARCHAR(50),
Booking_Status VARCHAR(50),
Customer_ID VARCHAR(50),
Vehicle_Type VARCHAR(50),
Pickup_Location VARCHAR(50),
Drop_Location VARCHAR(50),
Avg_VTAT FLOAT(10,2),
Avg_CTAT FLOAT(10,2),
Cancelled_Rides_By_Customer VARCHAR(50),
Reason_For_Cancelling_By_Customer VARCHAR(50),
Cancelled_Rides_By_Driver VARCHAR(50),
Driver_Cancellation_Reason VARCHAR(50),
Incomplete_Rides VARCHAR(50),
Incomplete_Ride_Reason VARCHAR(50),
Booking_Value NUMERIC(50),
Ride_Distance FLOAT(10,2),
Driver_Ratings NUMERIC(10,2),
Customer_Rating NUMERIC(10,2),
Payment_Method VARCHAR(50)
);

SELECT * FROM uber_data_analytics;

LOAD DATA LOCAL INFILE "C:/Users/Darko/Downloads/archive (4)/ncr_ride_bookings.csv"
INTO TABLE uber_data_analytics
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM uber_data_analytics;

CREATE TABLE uber_data_analytics_bak AS
SELECT * FROM uber_data_analytics;



SELECT * FROM uber_data_analytics_bak;

UPDATE uber_data_analytics
SET Booking_Status = null
WHERE Booking_Status = 'null';

UPDATE uber_data_analytics
SET Customer_ID = null
WHERE Customer_ID = 'null';

UPDATE uber_data_analytics
SET Vehicle_Type = null
WHERE Vehicle_Type = 'null';

UPDATE uber_data_analytics
SET Pickup_Location = null
WHERE Pickup_Location = 'null';

UPDATE uber_data_analytics
SET Drop_Location = null
WHERE Drop_Location = 'null';

UPDATE uber_data_analytics
SET Avg_VTAT = null
WHERE Avg_VTAT = '0.00';

UPDATE uber_data_analytics
SET Avg_CTAT = null
WHERE Avg_CTAT = '0.00';

UPDATE uber_data_analytics
SET Cancelled_Rides_By_Customer = null
WHERE Cancelled_Rides_By_Customer = 'null';

UPDATE uber_data_analytics
SET Reason_For_Cancelling_By_Customer = null
WHERE Reason_For_Cancelling_By_Customer = 'null';

UPDATE uber_data_analytics
SET Cancelled_Rides_By_Driver = null
WHERE Cancelled_Rides_By_Driver = 'null';

UPDATE uber_data_analytics
SET Driver_Cancellation_Reason = null
WHERE Driver_Cancellation_Reason = 'null';

UPDATE uber_data_analytics
SET Incomplete_Rides = null
WHERE Incomplete_Rides = 'null';

UPDATE uber_data_analytics
SET Incomplete_Ride_Reason = null
WHERE Incomplete_Ride_Reason = 'null';

UPDATE uber_data_analytics
SET Booking_Value = null
WHERE Booking_Value = '0';

UPDATE uber_data_analytics
SET Ride_Distance = null
WHERE Ride_Distance = '0.00';

UPDATE uber_data_analytics
SET Driver_Ratings = null
WHERE Driver_Ratings = '0.00';

UPDATE uber_data_analytics
SET Customer_Rating = null
WHERE Customer_Rating = '0.00';

UPDATE uber_data_analytics
SET Payment_Method = null
WHERE Payment_method = 'null';

SELECT * FROM uber_data_analytics;

SELECT DISTINCT Cancelled_Rides_By_Driver
FROM uber_data_analytics;

SELECT DISTINCT CONCAT('[', Cancelled_Rides_By_Driver, ']') AS value
FROM uber_data_analytics;

UPDATE uber_data_analytics
SET Cancelled_Rides_By_Driver = NULL
WHERE TRIM(LOWER(Cancelled_Rides_By_Driver)) = 'null';

SELECT DISTINCT Cancelled_Rides_By_Driver
FROM uber_data_analytics;

SELECT * FROM uber_data_analytics;

SELECT DISTINCT CONCAT('[', Payment_Method, ']') AS value
FROM uber_data_analytics;

UPDATE uber_data_analytics
SET Payment_Method = NULL
WHERE TRIM(LOWER(Payment_Method)) = 'null';

SELECT DISTINCT CONCAT('[', Payment_Method, ']') AS value,
       LENGTH(Payment_Method) AS length
FROM uber_data_analytics;

UPDATE uber_data_analytics
SET Payment_Method = NULL
WHERE TRIM(LOWER(Payment_Method)) = 'null'
   OR TRIM(Payment_Method) = '';
   
   SELECT DISTINCT CONCAT('[', Payment_Method, ']') AS value,
       HEX(Payment_Method) AS hex_value,
       LENGTH(Payment_Method) AS length
FROM uber_data_analytics;

UPDATE uber_data_analytics
SET Payment_Method = NULL
WHERE LOWER(TRIM(Payment_Method)) = 'null';

UPDATE uber_data_analytics
SET Payment_Method = NULL
WHERE LOWER(REPLACE(REPLACE(Payment_Method, '\r', ''), '\n', '')) = 'null';

SELECT * FROM uber_data_analytics;

SELECT
IFNULL(Avg_VTAT, 'N/A') AS Avg_VTAT,
IFNULL(Avg_CTAT, 'N/A') AS Avg_CTAT,
IFNULL(Cancelled_Rides_By_Customer, 'N/A') AS Cancelled_Rides_By_Customer,
IFNULL(Cancelled_Rides_By_Driver, 'N/A') AS Cancelled_Rides_By_Driver,
IFNULL(Driver_Cancellation_Reason, 'N/A') AS Driver_Cancellation_Reason,
IFNULL(Incomplete_Rides, 'N/A') AS Incomplete_Rides,
IFNULL(Booking_Value, 'N/A') AS Booking_Value,
IFNULL(Ride_Distance, 'N/A') AS Ride_Distance,
IFNULL(Driver_Ratings, 'N/A') AS Driver_Ratings,
IFNULL(Customer_Rating, 'N/A') AS Customer_Rating,
IFNULL(Payment_Method, 'N/A') AS Payment_Method
FROM uber_data_analytics;



















