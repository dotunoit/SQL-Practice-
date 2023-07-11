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
revenue NUMERIC (7,2) )

INSERT INTO dbo.Revenue (Revenue_key, territory_key, calender_key, revenue)
VALUES
    (1, 1, '2019-01-01', 20000.00),
    (2, 1, '2019-02-01', 22000.00),
    (3, 1, '2019-03-01', 23500.00),
    (4, 1, '2019-04-01', 25000.00),
    (5, 2, '2019-01-01', 6000.00),
    (6, 2, '2019-02-01', 6500.00),
    (7, 2, '2019-03-01', 6200.00),
    (8, 2, '2019-04-01', 6600.00),
    (9, 3, '2019-01-01', 18500.00),
    (10, 3, '2019-02-01', 19000.00),
    (11, 3, '2019-03-01', 20000.00),
    (12, 3, '2019-04-01', 25000.00),
    (13, 1, '2018-01-01', 19000.00),
    (14, 1, '2018-02-01', 19500.00);