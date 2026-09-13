-- Get a list of employees who have made more 
-- than 5 sales this year.

SELECT e.employeeid, e.firstname, e.lastname, COUNT(s.salesid) AS [Total Cars Sold]
FROM sales s
INNER JOIN employee e ON e.employeeId = s.employeeid
GROUP BY e.employeeid, e.firstname, e.lastname
HAVING  COUNT(s.salesId) > 5
ORDER BY [Total Cars Sold] DESC