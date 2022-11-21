use BikeStores;

-- M��terilerden isimleri 'a' ile soyisimleri 'b' ile ba�layanlar� getiriniz.
SELECT * FROM sales.customers c Where (c.first_name LIKE 'a%') and (c.last_name LIKE 'b%')


-- Ka� farkl� �r�n oldu�unu sayd�r�n�z.
SELECT COUNT(DISTINCT product_id) FROM production.products p, production.categories c where p.category_id =c.category_id

--'Electra Cruiser 1 (24-Inch) - 2016' �r�n�n� alan ve telefon numaras� bilgisi bulunan kullan�c�lar�n customer_id, first_name, last_name, phone, order_date, order_status ve product_name bilgilerini sipari� tarihi yeniden eskiye do�ru olacak �ekilde getiriniz.
SELECT c.customer_id,c.first_name,c.last_name,c.phone,o.order_date,o.order_status,p.product_name  
FROM sales.orders o, sales.order_items i, production.products p,sales.customers c 
where (p.product_name='Electra Cruiser 1 (24-Inch) - 2016' 
and p.product_id=i.product_id and o.order_id=i.order_id and o.customer_id=c.customer_id and c.phone is not null) 
order by o.order_date;


--'ELectra' markas�n�n 'Children Bicycles' kategorisindeki 2016-2018 model y�l�na sahip �r�nlerini fiyat�na g�re s�ralay�n�z (brand_name, category_name, product_name, model_year, list_price).
SELECT brand_name, category_name, product_name, model_year, list_price 
FROM production.brands, production.products, production.categories 
WHERE (products.category_id=categories.category_id AND brands.brand_id=products.brand_id) AND brand_name='Electra' AND category_name = 'Children Bicycles' AND (model_year BETWEEN 2016 AND 2018) 
ORDER BY list_price



---- Telefon numaras� NULL olan m��terilerin numaralar�n� '0123456789' olarak g�ncelleyiniz.
UPDATE sales.customers SET sales.customers.phone = '0123456789' WHERE sales.customers.phone IS NULL;







