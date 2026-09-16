-- Find all the sales where car purchased was electric.  

SELECT s.salesid, i.inventoryId, i.year, s.soldDate, m.model, m.EngineType, i.isAvailable
FROM sales s
INNER JOIN inventory i
ON s.inventoryid = i.inventoryid
INNER JOIN model m 
ON m.modelid = i.modelid 
WHERE m.EngineType = 'Electric'