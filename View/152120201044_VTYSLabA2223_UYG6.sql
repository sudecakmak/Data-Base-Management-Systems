use Prelab;

--1  INNER JOIN
CREATE VIEW [All orders] AS
SELECT sales.customers.first_name, sales.customers.last_name,sales.stores.store_name,sales.orders.order_id
FROM ((sales.orders
INNER JOIN sales.customers ON sales.orders.customer_id=sales.customers.customer_id)
INNER JOIN sales.stores ON sales.orders.store_id=sales.stores.store_id);

--2  SELF JOIN
CREATE VIEW [Find Manager] As
SELECT s.staff_id, s.first_name, s.last_name, COUNT (s2.staff_id) AS noEmp
FROM sales.staffs s2
JOIN sales.staffs s
ON s2.manager_id = s.staff_id
GROUP BY s.staff_id, s.first_name, s.last_name;


--3  HAVING
CREATE VIEW [Find stuff] AS
SELECT sales.staffs.first_name,sales.staffs.last_name,sales.staffs.staff_id, COUNT(sales.orders.order_id) as numberOfOrders
FROM sales.staffs 
INNER JOIN sales.orders ON sales.staffs.staff_id = sales.orders.staff_id 
WHERE sales.staffs.last_name LIKE '%l'  
GROUP BY sales.staffs.first_name,sales.staffs.last_name,sales.staffs.staff_id
HAVING COUNT(sales.orders.order_id) < 100;


--4  EXIST
CREATE VIEW [Bigger than 5] AS
SELECT production.products.product_id,production.products.product_name, production.products.model_year,production.products.list_price
FROM production.products
WHERE EXISTS
(SELECT production.stocks.product_id FROM production.stocks WHERE production.stocks.quantity > 5 and production.products.product_id=production.stocks.product_id);


--5  ANY
CREATE VIEW [Smaller than 5] As
select production.products.product_id,production.products.product_name, production.products.model_year,production.products.list_price
FROM production.products
WHERE product_id = ANY
(SELECT product_id
FROM production.stocks
WHERE quantity < 5);


--6  ALL
CREATE VIEW [Big 5] As
select production.products.product_id,production.products.product_name, production.products.model_year,production.products.list_price
FROM production.products
WHERE product_id = ALL
(SELECT product_id
FROM production.stocks
WHERE quantity > 5);


Select * From [All orders];
Select * From [Find Manager];
Select * From [Find stuff];
Select * From [Bigger than 5];
Select * From [Smaller than 5];
Select * From [Big 5];