-- DROP TABLE kickstarter

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

-- Create World Bank new table
CREATE TABLE worldbank (
  	"Country Code" VARCHAR PRIMARY KEY,
	"2010" MONEY,
	"2011" MONEY,
	"2012" MONEY,
	"2013" MONEY,
	"2014" MONEY,
	"2015" MONEY,
	"2016" MONEY,
	"2017" MONEY
);

SELECT * FROM worldbank;