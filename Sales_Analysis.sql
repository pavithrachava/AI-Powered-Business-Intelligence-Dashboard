create DATABASE superstore;
use superstore;
show tables;
RENAME TABLE `Sample - Superstore` TO orders;
SELECT *
FROM orders
LIMIT 10;
SELECT
ROUND(SUM(Sales),2) AS Total_Sales
FROM orders;
SELECT
COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM orders;
SELECT
ROUND(
(SUM(Profit)/SUM(Sales))*100,
2
) AS Profit_Margin
FROM orders;
SELECT
Region,
ROUND(SUM(Sales),2) AS Sales
FROM orders
GROUP BY Region
ORDER BY Sales DESC;
SELECT
Region,
ROUND(SUM(Profit),2) AS Profit
FROM orders
GROUP BY Region
ORDER BY Profit DESC;
SELECT
State,
ROUND(SUM(Sales),2) AS Sales
FROM orders
GROUP BY State
ORDER BY Sales DESC
LIMIT 10;
SELECT
State,
ROUND(SUM(Profit),2) AS Profit
FROM orders
GROUP BY State
ORDER BY Profit DESC
LIMIT 10;
SELECT
`Product Name`,
ROUND(SUM(Sales),2) AS Sales
FROM orders
GROUP BY `Product Name`
ORDER BY Sales DESC
LIMIT 10;
SELECT
`Product Name`,
SUM(Quantity) AS Quantity_Sold
FROM orders
GROUP BY `Product Name`
ORDER BY Quantity_Sold DESC
LIMIT 10;
