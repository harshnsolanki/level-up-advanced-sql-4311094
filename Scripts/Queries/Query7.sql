-- Create a report showing total sales per year using CTE (Common table expression)

WITH YearlySalesCTE AS (
  SELECT strftime( '%Y' ,solddate) as Year, salesAmount
  FROM Sales
)

SELECT Year, FORMAT( '$%.2f' ,SUM(salesAmount)) AS [Total Sales]
FROM YearlySalesCTE
GROUP BY Year
ORDER BY YEAR DESC
