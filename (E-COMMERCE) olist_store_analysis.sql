# KPI - 1 
# Weekday vs Weekend (order_purchase_timestamp) Payment Statistics


use olist_store_analysis;
select
CASE WHEN DAYOFWEEK(STR_TO_DATE(o.order_purchase_timestamp, '%Y-%m-%d'))
IN (1, 7) THEN 'Weekend' ELSE 'Weekday' END AS DayType,
COUNT(DISTINCT o.order_id) AS TotalOrders,
round(SUM(p.payment_value)) AS TotalPayments,
round(AVG(p.payment_value)) AS AveragePayment
from
olist_orders_dataset o
join
olist_order_payments_dataset p ON o.order_id = p.order_id
group by
DayType;

#KPI - 2
#Number of Orders with review score 5 and payment type as credit card.


use olist_store_analysis;
select
count(pmt.order_id) as Total_Orders
from
olist_order_payments_dataset pmt
inner join olist_order_reviews_dataset rev on pmt.order_id = rev.order_id
where
rev.review_score = 5
and pmt.payment_type = 'credit_card';


#KPI - 3
# Average number of days taken for order_delivered_customer_date for pet_shop


select
prod.product_category_name,
round(avg(datediff(ord.order_delivered_customer_date, ord.order_purchase_timestamp)),0) as Avg_delivery_days
from olist_orders_dataset ord
join
(SELECT product_id, Order_id, product_category_name
from olist_products_dataset
join olist_order_items_dataset using (product_id)) as prod
on ord.order_id = prod.order_id
where prod.product_category_name = "Pet_shop"
group by prod.product_category_name;


# KPI - 4
# Average price and payment values from customers of sao paulo city


WITH orderItemsAvg AS (
Select round(AVG(item.price)) AS avg_order_item_price
from olist_order_items_dataset item
join olist_orders_dataset ord ON item.order_id = ord.order_id
join olist_customers_dataset cust ON ord.customer_id = cust.customer_id
where cust.customer_city = "Sao Paulo"
)
select
(select avg_order_item_price from orderItemsAvg) AS avg_order_item_price,
round(AVG(pmt.payment_value)) AS avg_payment_value
from olist_order_payments_dataset pmt
Join olist_orders_dataset ord ON pmt.order_id = ord.order_id
join olist_customers_dataset cust ON ord.customer_id = cust.customer_id
where cust.customer_city = "Sao Paulo";


# KPI - 5
# Relationship between shipping days (order_delivered_customer_date - order_purchase_timestamp) Vs review scores.


select
rew.review_score,
round(avg(datediff(ord.order_delivered_customer_date,order_purchase_timestamp)),0) as "Avg shipping days"
From olist_orders_dataset as ord
Join olist_order_reviews_dataset as rew on rew.order_id = ord.order_id
group by rew.review_score
order by rew.review_score 



