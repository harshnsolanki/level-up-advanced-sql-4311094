-- Get a list of employees who have made more 
-- than 5 sales this year.

select e.employeeid, e.firstname, e.lastname, count(s.salesid) as [Total Cars Sold]
from sales s
inner join employee e on e.employeeId = s.employeeid
group by e.employeeid, e.firstname, e.lastname
-- having count(s.salesid) > 5
-- order by [Total Cars Sold] desc

SELECT e.employeeid, e.firstname, e.lastname, COUNT(s.salesid) AS [Total Cars Sold]
FROM sales s
INNER JOIN employee e ON e.employeeId = s.employeeid
GROUP BY e.employeeid, e.firstname, e.lastname