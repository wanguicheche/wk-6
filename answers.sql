-- Question 1 retrieve specific employee details from the 'employees' table.
-- Use a RIGHT JOIN to combine data from the 'employees' and 'offices' tables.
-- The RIGHT JOIN will include all records from the 'offices' table,
-- even if there are no matching employees.

SELECT
    e.firstName,       -- Selects the first name of the employee.
    e.lastName,        -- Selects the last name of the employee.
    e.email,           -- Selects the employee's email address.
    e.extension        -- Selects the employee's phone extension.
FROM
    employees AS e     -- Specifies the 'employees' table and gives it the alias 'e' for brevity.
RIGHT JOIN
    offices AS o       -- Specifies the 'offices' table and gives it the alias 'o'.
ON
    e.officeCode = o.officeCode; -- This is the join condition, which links rows from both tables
                                 -- where the 'officeCode' value is the same.
                                 
-- Question 2 retrieves product information from the 'products' table.
-- Use a LEFT JOIN to combine the 'products' table with the 'productlines' table.
-- The LEFT JOIN ensures that all products are included in the result,
-- even if they do not have a matching record in the 'productlines' table.    
SELECT
    p.productName,     -- Selects the name of the product.
    p.productVendor,   -- Selects the product's vendor.
    p.productLine      -- Selects the product line.
FROM
    products AS p      -- Specifies the 'products' table as the left table and gives it the alias 'p'.
LEFT JOIN
    productlines AS pl -- Specifies the 'productlines' table as the right table and gives it the alias 'pl'.
ON
    p.productLine = pl.productLine; -- This is the join condition, linking rows from both tables
                                   -- where the 'productLine' value is the same.  
                                   
 -- Question 3 retrieves information about the first 10 orders.
-- Use a RIGHT JOIN to combine the 'orders' table with the 'customers' table.
-- The RIGHT JOIN ensures that all customers are included in the result,
SELECT
    o.orderNumber,       -- Selects the order number.
    o.shippedDate,       -- Selects the date the order was shipped.
    o.customerNumber     -- Selects the customer number.
FROM
    orders AS o          -- Specifies the 'orders' table as the left table and gives it the alias 'o'.
RIGHT JOIN
    customers AS c       -- Specifies the 'customers' table as the right table and gives it the alias 'c'.
ON
    o.customerNumber = c.customerNumber -- This is the join condition, linking both tables by customer number.
LIMIT 10;                -- This clause restricts the output to the first 10 rows returned by the query.

