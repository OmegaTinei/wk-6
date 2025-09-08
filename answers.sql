-- Question 1: INNER JOIN
-- This query retrieves employee details by joining the 'employees' table with the 'offices' table.
-- It returns only the rows where there is a matching officeCode in both tables.
SELECT
    -- Select the requested columns from the employees table.
    e.firstName,
    e.lastName,
    e.email,
    -- Select the officeCode, which is the join key.
    e.officeCode
FROM
    -- Using 'e' as an alias for the employees table to keep the query concise.
    employees AS e
-- INNER JOIN ensures that only employees with a valid, matching officeCode are returned.
INNER JOIN
    -- Using 'o' as an alias for the offices table.
    offices AS o
ON
    -- The join condition links records from both tables on the officeCode column.
    e.officeCode = o.officeCode;


-- Question 2: LEFT JOIN
-- This query retrieves product information by joining the 'products' table with the 'productlines' table.
-- A LEFT JOIN returns all products, even if they don't have a matching productLine entry.
SELECT
    -- Select the requested product details.
    p.productName,
    p.productVendor,
    p.productLine
FROM
    -- Using 'p' as an alias for the products table (the "left" table).
    products AS p
-- LEFT JOIN ensures all rows from the products table are included in the result.
LEFT JOIN
    -- Using 'pl' as an alias for the productlines table (the "right" table).
    productlines AS pl
ON
    -- The join condition links products to their respective product lines.
    p.productLine = pl.productLine;


-- Question 3: RIGHT JOIN
-- This query retrieves order details by joining the 'customers' table with the 'orders' table.
-- A RIGHT JOIN ensures all orders are returned, with customer details where available.
SELECT
    -- Select the requested columns from the orders table.
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM
    -- Using 'c' as an alias for the customers table (the "left" table).
    customers AS c
-- RIGHT JOIN ensures that all orders are included in the result, regardless of whether a matching customer is found.
RIGHT JOIN
    -- Using 'o' as an alias for the orders table (the "right" table).
    orders AS o
ON
    -- The join condition links orders to their customers.
    c.customerNumber = o.customerNumber
-- LIMIT 10 restricts the result set to the first 10 orders.
LIMIT 10;
