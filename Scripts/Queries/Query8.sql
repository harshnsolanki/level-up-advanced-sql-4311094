-- Create a report that shows the amount of 
-- sales per employee for each month in 2021.

WITH SalesPerEmpCTE AS (
  SELECT e.employeeId, strftime( '%Y', s.soldDate) AS Year, s.soldDate, s.SalesAmount, e.firstname, e.lastname
  FROM sales s
  INNER JOIN employee e ON e.employeeid = s.employeeid
  WHERE strftime( '%Y', s.solddate) = '2021'
)

SELECT employeeId, firstname, lastname, SUM(salesamount) AS [Total Sales], strftime( '%m' ,solddate) AS month
FROM SalesPerEmpCTE
GROUP BY month, employeeId, firstName, lastname
ORDER BY month ASC, [Total Sales] DESC 