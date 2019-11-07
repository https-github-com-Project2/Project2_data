-- DROP TABLE worldbank

-- Create KICKSTARTER new table
CREATE TABLE kickstarter (
  	"ID" VARCHAR PRIMARY KEY,
	category VARCHAR(30),
	main_category VARCHAR (30),
	country VARCHAR (10),
	launched DATE,
	goal MONEY,
	"state" VARCHAR (20),
	usd_goal_real MONEY
);

-- Query all fields from the table
SELECT *
FROM kickstarter;

-- Create World Bank new table, adjusted net national income in USD
CREATE TABLE worldbank (
  	country VARCHAR,
	"year" VARCHAR,
	"percapita" MONEY
);

SELECT * FROM worldbank;

-- Create country new table
CREATE TABLE country(
	country VARCHAR,
	WB VARCHAR (10),
	KS VARCHAR (10)
	);
	
SELECT * FROM country;