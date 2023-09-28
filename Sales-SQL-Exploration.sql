-- Inspecting the Data
SELECT * FROM [dbo].[sales]

-- Checking columns with unique values
SELECT DISTINCT status FROM [dbo].[sales]
SELECT DISTINCT year_id FROM [dbo].[sales]
SELECT DISTINCT month_id FROM [dbo].[sales]
SELECT DISTINCT productline FROM [dbo].[sales]
SELECT DISTINCT country FROM [dbo].[sales]
SELECT DISTINCT dealsize FROM [dbo].[sales]
SELECT DISTINCT territory FROM [dbo].[sales]

-- Analysis
-- Grouping sales by Productline, Year, Country, Dealsize
SELECT productline as Productline, sum(sales) Revenue
FROM [dbo].[sales]
GROUP BY productline
ORDER BY Revenue DESC

SELECT year_id as Year, sum(sales) Revenue
FROM [dbo].[sales]
GROUP BY year_id
ORDER BY Revenue DESC

SELECT country as Country, sum(sales) Revenue
FROM [dbo].[sales]
GROUP BY country
ORDER BY Revenue DESC


SELECT dealsize as Dealsize, sum(sales) Revenue
FROM [dbo].[sales]
GROUP BY dealsize
ORDER BY Revenue DESC

-- What was the best month for sales in a specific year? How much was earned that month?
SELECT month_id as Month, sum(sales) as Revenue
FROM [dbo].[sales]
WHERE year_id = 2004 -- Changeable
GROUP BY month_id 
ORDER BY 2 DESC

--November seems to be the month, what product do they sell in November, Classic I believe
SELECT month_id as Month, productline as Product, sum(sales) as Revenue
FROM [dbo].[sales]
WHERE month_id = 11 and year_id = 2004
GROUP BY month_id, productline
ORDER BY 2 DESC