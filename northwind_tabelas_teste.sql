CREATE TABLE customers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	email VARCHAR(255)
);
INSERT INTO customers(name,email) VALUES 
('Alice', 'alice@example.com'), ('Bob',NULL),(NULL,'charlie@example.com'),
('Charlie','alice@example.com');

CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
	order_date DATE,
	customer_id INT,
	status VARCHAR(50),
	amount DECIMAL (10,2),
	country_code CHAR(2)
);

INSERT INTO orders (order_date,customer_id,status,amount, country_code) VALUES
('2025-06-10',1,'placed',100.00,'US'),
('2025-06-11',2,'invalid_statis',200.00,'CA'),
(NULL,3,'completed',300.00,'GB'),
('2025-06-13',4,'returned',150.00,NULL);


/*CREATE TABLE orders_items(
	item_id SERIAL PRIMARY KEY,
	order_id INT,
	product_id INT,
	quantity INT,
	price DECIMAL(10,2)
);

INSERT INDO orders_items (order_id,product_id,quantity,price)
VALUES
(1,101,1,100.00),
(5,102,2,100.00),
(3,103,3,100.00),
(4,101,1,100.00);*/