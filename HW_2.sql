-- Information schema (database metadata about all tables, columns, keys, etc.)
 
-- to see primary and foreign keys  (constraints)       
-- SELECT *  
-- FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
-- WHERE TABLE_SCHEMA = 'classicmodels'
-- AND TABLE_NAME = 'customers';  

-- to see all tables in database
-- SELECT *  
-- FROM INFORMATION_SCHEMA.tables
-- WHERE TABLE_SCHEMA = 'classicmodels'; 

-- to see all columns in database
-- SELECT *  
-- FROM INFORMATION_SCHEMA.columns
-- WHERE TABLE_SCHEMA = 'classicmodels';

-- to see structure of one table (columns, datatypes, keys)
-- desc classicmodels.employees;


-- show all customers in Australia
Select * from classicmodels.customers
Where country = 'Australia';

-- show First and Last name of customers in Melbourne
Select customerName, contactLastName from classicmodels.customers
where city = 'Melbourne';

-- show all customers with Credit Limit over $200,000
Select * from classicmodels.customers
where creditLimit > 200000;

-- who is the president of the company?
Select firstName, lastName from classicmodels.employees
where jobTitle like '%President%';

-- how many Sales Reps are in the company?
Select * from classicmodels.employees
where jobTitle like '%Sales Rep%';

-- show payments in descending order
Select * from classicmodels.payments
order by amount desc;

-- what was the check# for the payment done on December 17th 2004
Select checkNumber from classicmodels.payments
where paymentDate = '2004-12-17';

-- show product line with the word 'realistic' in the description
select productLine from classicmodels.productlines
where textDescription like '%realistic%'; 

-- show product name for vendor 'Unimax Art Galleries'
select productName from classicmodels.products
where productVendor = 'Unimax Art Galleries';

-- what is the customer number for the highest amount of payment
select customerNumber from classicmodels.payments
order by amount desc
limit 1;

-- Save your work 