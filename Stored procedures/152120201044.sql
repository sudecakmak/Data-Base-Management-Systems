use BikeStores;

go


--1) Saklý yordam yapýsýný kullanarak çalýþanlardan isimleri ve soyisimleri istenen harf ile
--baþlayanlarý getiriniz (first_name, last_name).


create procedure Selectname @first_name varchar(255), @last_name varchar(255)
as
select * from sales.staffs s where s.first_name LIKE @first_name +'%'  and s.last_name LIKE @last_name+  '%' 

exec Selectname @first_name='F', @last_name='J'
exec Selectname @first_name='B', @last_name='H'




--2) Saklý yordam yapýsýný kullanarak sipariþlerde istenen sipariþ durumu ve maðaza
--tanýmlayýcý numarasýna sahip sipariþleri müþterilerin isimlerine göre sýralayan sorguyu
--yazýnýz (customer_id, first_name, last_name, product_id, email, order_status, store_id).

create procedure liststatus @order_status int, @store_id int
as
begin
SELECT
	c.customer_id,
	c.first_name,
	c.last_name,
	i.product_id,
	c.email,
	o.order_status,
	s.store_id
FROM sales.customers c
INNER JOIN sales.orders o
ON c.customer_id=o.customer_id
INNER JOIN sales.stores s
ON s.store_id=o.store_id
INNER JOIN sales.order_items i
ON i.order_id=o.order_id
WHERE o.order_status=@order_status and o.store_id=@store_id
order by c.first_name
end

exec liststatus @order_status = 2 , @store_id = 1
exec liststatus @order_status = 2 , @store_id = 2



--3) Saklý yordam yapýsýný kullanarak istenen markanýn istenen kategorideki ürünlerini belirli
--model aralýðýna(minimun-maksimum) göre sýralayan sorguyu yazýnýz (brand_name,
--category_name, product_name, model_year, list_price).

create procedure listpricebymodel @brand_name varchar(50), @category_name varchar(50), @max_model int, @min_model int
as
begin
SELECT
	b.brand_name,
	c.category_name,
	p.product_name,
	p.model_year,
	p.list_price
FROM production.categories c
INNER JOIN production.products p
ON c.category_id=p.category_id
INNER JOIN production.brands b
ON p.brand_id=b.brand_id
WHERE b.brand_name=@brand_name and c.category_name=@category_name and p.model_year between @min_model and @max_model
order by p.model_year
end

exec listpricebymodel @brand_name='Electra', @category_name='Children Bicycles', @min_model=2017, @max_model=2018;
exec listpricebymodel @brand_name='Heller', @category_name='Mountain Bikes', @min_model=2017, @max_model=2018;



