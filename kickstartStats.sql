-- Count the number failed and successful kickstarts
SELECT country, COUNT("ID") AS "Count", to_char(launched, 'YYYY') as year
FROM kickstarter
WHERE "state"='successful'
GROUP BY country, year
ORDER BY country, year;


-- Total Kick Starter goals
SELECT country, SUM(goal) AS "Grand Total"
FROM kickstarter
GROUP BY country;

-- Average Kick Starter goals
SELECT ROUND(AVG(goal::numeric),2) AS "Average Goal"
FROM kickstarter;

-- Average Kick Starter goals that are successful
SELECT ROUND(AVG(goal::numeric),2) AS "Average Successful Goal"
FROM kickstarter
WHERE "state" = 'successful';

-- Average Kick Starter goals that are failures
SELECT ROUND(AVG(goal::numeric),2) AS "Average Failed Goal"
FROM kickstarter
WHERE "state" = 'failed';

-- Count of kick starts by country
SELECT country, COUNT("ID") AS "Total Kickstarts"
FROM kickstarter
GROUP BY country;

-- Count of kick starts by country and state aka success or failure
SELECT country, "state", COUNT("ID") AS "Total Kickstarts"
FROM kickstarter
GROUP BY country, "state";

-- Find the minimum succesful kickstarts using subquery
SELECT MIN(count) FROM (SELECT country, "state", COUNT("ID") FROM kickstarter GROUP BY country, "state") AS t
WHERE "state" = 'successful';

-- Join worlbank and country tables
SELECT * 
FROM worldbank
INNER JOIN country ON
country.wb=worldbank.country

select * from country

-- subquery and join
SELECT country."country", worldbank."year", "Count", worldbank."percapita"
FROM worldbank
INNER JOIN country ON
country."wb"=worldbank."country"
INNER JOIN 
	(
	SELECT country, COUNT("ID") AS "Count", to_char(launched, 'YYYY') as year
	FROM kickstarter
	WHERE "state"='successful'
	GROUP BY country, year
	ORDER BY country, year
	) AS a
	ON
	a."country" = country."ks" 
	AND 
	a."year"=worldbank."year";
	
	