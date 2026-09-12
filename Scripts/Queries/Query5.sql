-- Produce a report that lists the least and most 
-- expensive cars sold by each employee of this year.

Select s.salesid, e.firstName, e.lastName, MAX(s.salesamount), MIN(s.salesamount)
from sales s
inner join employee e on e.employeeid = s.employeeId
Group by s.salesid, e.firstName, e.lastName