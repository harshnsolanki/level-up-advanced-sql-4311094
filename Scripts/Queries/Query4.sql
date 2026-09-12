-- Pull a report that totals the number of cars 
-- sold by each employee.

Select s.employeeId, e.firstname, e.lastName, count(s.salesid) as [Total Cars Sold]
From sales s
inner join employee e on e.employeeId = s.employeeid
Group by s.employeeid, e.firstname, e.lastName
Order by [Total Cars Sold] desc