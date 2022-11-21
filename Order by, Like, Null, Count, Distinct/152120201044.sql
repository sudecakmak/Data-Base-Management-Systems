use BikeStores;

-- Müþterilerden isimleri 'a' ile soyisimleri 'b' ile baþlayanlarý getiriniz.
SELECT * FROM sales.customers c Where (c.first_name LIKE 'a%') and (c.last_name LIKE 'b%')


-- Kaç farklý ürün olduðunu saydýrýnýz.
SELECT COUNT(DISTINCT product_id) FROM production.products p, production.categories c where p.category_id =c.category_id

--'Electra Cruiser 1 (24-Inch) - 2016' ürününü alan ve telefon numarasý bilgisi bulunan kullanýcýlarýn customer_id, first_name, last_name, phone, order_date, order_status ve product_name bilgilerini sipariþ tarihi yeniden eskiye doðru olacak þekilde getiriniz.
SELECT c.customer_id,c.first_name,c.last_name,c.phone,o.order_date,o.order_status,p.product_name  
FROM sales.orders o, sales.order_items i, production.products p,sales.customers c 
where (p.product_name='Electra Cruiser 1 (24-Inch) - 2016' 
and p.product_id=i.product_id and o.order_id=i.order_id and o.customer_id=c.customer_id and c.phone is not null) 
order by o.order_date;


--'ELectra' markasýnýn 'Children Bicycles' kategorisindeki 2016-2018 model yýlýna sahip ürünlerini fiyatýna göre sýralayýnýz (brand_name, category_name, product_name, model_year, list_price).
SELECT brand_name, category_name, product_name, model_year, list_price 
FROM production.brands, production.products, production.categories 
WHERE (products.category_id=categories.category_id AND brands.brand_id=products.brand_id) AND brand_name='Electra' AND category_name = 'Children Bicycles' AND (model_year BETWEEN 2016 AND 2018) 
ORDER BY list_price



---- Telefon numarasý NULL olan müþterilerin numaralarýný '0123456789' olarak güncelleyiniz.
UPDATE sales.customers SET sales.customers.phone = '0123456789' WHERE sales.customers.phone IS NULL;







