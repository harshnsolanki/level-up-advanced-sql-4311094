-- Get a list of salespeople and rank the car 
-- models they've sold the most of. 

SELECT e.employeeId, e.firstName, e.lastName, m.model, m.enginetype, COUNT(s.salesId) AS [Cars Sold],
DENSE_RANK() OVER(
    PARTITION BY e.employeeId
    ORDER BY COUNT(s.salesId) DESC
  ) AS [emp rank]
FROM sales s
INNER JOIN inventory i
ON i.inventoryid = s.inventoryid
INNER JOIN employee e
ON e.employeeId = s.employeeId
INNER JOIN model m 
ON m.modelid = i.modelid 
GROUP BY e.employeeId, e.firstName, e.lastName, m.model, m.EngineType
ORDER BY e.employeeId, [emp rank] ASC;