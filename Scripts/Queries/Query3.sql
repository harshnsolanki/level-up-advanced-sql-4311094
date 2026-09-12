-- Get a list of all sales and all customers even if some of the data
-- has been removed. 

Select 
    cus.firstName, 
    cus.lastName, 
    cus.email, 
    sal.salesAmount, 
    sal.soldDate 
from customer cus
full outer join sales sal 
    on cus.customerid = sal.customerid;