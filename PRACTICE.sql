CREATE TABLE Testing (
territory_key INT PRIMARY KEY, 
region VARCHAR(10), 
subregion VARCHAR (10),
segment VARCHAR (5),
territory VARCHAR(20) NULL)

CREATE TABLE Revenue (
Revenue_key INT PRIMARY KEY,
territory_key INT,
calender_key DATE,
revenue DECIMAL (7,2) )