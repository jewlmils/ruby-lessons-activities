-- Drop the existing tables if they exist
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS customers;

-- Create the customers table
CREATE TABLE customers(
    customer_id     SERIAL      PRIMARY KEY, -- Unique identifier for each customer
    first_name      VARCHAR(100),           -- First name of the customer
    last_name       VARCHAR(100)            -- Last name of the customer
);

-- Insert data into the customers table
INSERT INTO customers (first_name, last_name)
VALUES ('Fred', 'Mcdonald'),               -- Inserting data for customer Fred Mcdonald
       ('Rovic', 'Mellina'),               
       ('Kenny', 'Rogers');               

-- Create the transactions table
CREATE TABLE transactions(
    trans_id        SERIAL      PRIMARY KEY, -- Unique identifier for each transaction
    amount          DECIMAL(5,2),           -- Amount of the transaction
    customer_id     INTEGER,                -- Customer ID associated with the transaction
    FOREIGN KEY(customer_id)                -- Foreign key constraint referencing the customers table
        REFERENCES customers(customer_id)
);

-- Insert data into the transactions table
INSERT INTO transactions (amount, customer_id)
VALUES (4.99, 3),                           -- Inserting transaction data for customer 
       (2.89, 2),                           
       (3.38, 3),                          
       (4.99, 1);                          

-- Update the customers table
-- Note: This should be an UPDATE statement instead of INSERT for updating existing records
INSERT INTO customers (first_name, last_name)
VALUES ('Ronald', 'Mcdonald');              -- Inserting new data for customer Ronald Mcdonald

-- SELECT * FROM customers;
-- SELECT * FROM transactions;

--* INNER JOIN selects records that have a matching key in both tables.

-- Retrieve transaction data along with customer names using a LEFT JOIN
SELECT trans_id, amount, first_name, last_name
FROM transactions LEFT JOIN customers
ON transactions.customer_id = customers.customer_id;

-- Inserting new customer Gold Roger
INSERT INTO customers (first_name, last_name)
VALUES ('Gold', 'Roger');

-- Inserting a transaction with NULL customer_id
INSERT INTO transactions (amount, customer_id)
VALUES (1.00, NULL);

-- Retrieve all data from transactions table along with associated customer information using a RIGHT JOIN
SELECT *
FROM transactions RIGHT JOIN customers
ON transactions.customer_id = customers.customer_id;

--* INNER JOIN only shows what's common between two tables.
--* LEFT JOIN keeps everything from the left table and adds matching things from the right.
--* RIGHT JOIN keeps everything from the right table and adds matching things from the left.


SELECT first_name, last_name, section
FROM classrooms INNER JOIN students
ON classrooms.id = students.id;


SELECT first_name, last_name, section
FROM classrooms LEFT JOIN students
ON classrooms.id = students.id;


SELECT first_name, last_name, section
FROM classrooms RIGHT JOIN students
ON classrooms.id = students.id;

SELECT *
FROM classrooms FULL JOIN students
ON classrooms.id = students.id;