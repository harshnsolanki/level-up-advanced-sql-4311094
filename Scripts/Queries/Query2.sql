Select e.firstname,e.lastName,e.title ,e.startDate, s.salesAmount, s.salesId from employee e 
left join sales s on e.employeeid = s.employeeid 
where e.title='Sales Person' AND s.salesAmount is null;