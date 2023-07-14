/*Query 1
Write a query that returns unique regions in territory table.
*/
SELECT DISTINCT Region FROM Territory

/*Query 2
Write a query that returns all the subregions in UKIR region.*/
SELECT subregion  FROM  territory WHERE region = 'UKIR'

/*Query 3
Write a query that shows how many territories exist per region.
Order the result based on the highest number of territories.*/
SELECT region, COUNT (territory) AS 'No of Territory'
FROM territory
GROUP BY region
ORDER BY 'No of Territory' DESC

/*Query 4
Write a query that returns the total revenue for the current year.*/
SELECT SUM(revenue) AS total_revenue
FROM revenue
WHERE calendar_key LIKE '%2019%'

/*Query 5
Write a query that returns the total revenue per region.
Only take current year year into account and show the region with the highest revenue at the top.*/
SELECT Region, SUM(revenue) AS total_revenue
FROM revenue r
JOIN Territory t ON r.territory_key = t.territory_key
JOIN Calendar c ON r.calendar_key = c.calendar_key
WHERE c.calendar_key LIKE '%2019%'
GROUP BY t.region
ORDER BY total_revenue DESC

/*Query 6
Write a query that returns the region, subregion, segment, territory and total revenue.
Only take current year into account. Filter the result to only show ENT segment.
Only return total revenues greater than 85,000.*/ 
SELECT t.region, t.subregion, t.segment, t.Territory, SUM(r.revenue) AS total_revenue
FROM Revenue r
JOIN Territory t ON r.territory_key = t.territory_key
JOIN Calendar c ON r.calendar_key = c.calendar_key
WHERE c.calendar_key LIKE '%2019%'
AND t.segment = 'ENT'
GROUP BY t.region, t.subregion, t.segment, t.Territory
HAVING SUM(r.revenue) > 85000
