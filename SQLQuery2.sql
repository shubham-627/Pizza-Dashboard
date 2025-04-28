select sum(total_price) as total_revenue from pizza_sales;

select sum(total_price)/count(distinct order_id) as Avg_order_value from pizza_sales;

select sum(quantity) as Total_pizza_sold from pizza_sales

select count(distinct order_id) as Total_order from pizza_sales

select (sum(quantity)/ count(distinct order_id)) as avg_pizza_perorder from pizza_sales

select datename(dw,order_date) as order_day,count(distinct order_id) as total_orders from pizza_sales group by datename(dw,order_date)

select datename(month,order_date) as month ,count(distinct order_id) as total_orders from pizza_sales group by datename(month,order_date)

select pizza_category,sum(total_price)*100/(select sum(total_price) from pizza_sales) as total_sales_PCT from pizza_sales  group by pizza_category

select pizza_size,sum(total_price)*100/(select sum(total_price) from pizza_sales)  as total_sales_PCT from pizza_sales  group by pizza_size order by total_sales_PCT desc

select top 5 pizza_name,sum(total_price) as total_revenue from pizza_sales group by pizza_name order by total_revenue desc 

select top 5 pizza_name,sum(total_price) as total_revenue from pizza_sales group by pizza_name order by total_revenue

select top 5 pizza_name,sum(quantity) as total_quantity from pizza_sales group by pizza_name order by total_quantity desc 

select top 5 pizza_name,count(distinct order_id) as total_orders from pizza_sales group by pizza_name order by total_orders desc 