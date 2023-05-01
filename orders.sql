--Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(30),
  product_price FLOAT,
  quantity INTEGER);


-- Select all the records from the orders table.
INSERT INTO orders(person_id,product_name,product_price,quantity)
VALUES(125, 'perfume',100.25,1),
(125, 'books', 70.6, 3),
(125, 'clothes', 200.7, 5),
(260, 'bag', 150.30, 1),
(260, 'jewelry', 300.40, 2);

SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- Calculate the total order price.
SELECT SUM(product_price) FROM orders;

-- Calculate the total order price by a single person_id.
SELECT person_id, SUM(product_price) FROM orders
GROUP BY person_id;