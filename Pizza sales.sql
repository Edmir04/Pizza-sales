--What days and times do we tend to be busiest and How many pizzas are we making during this peak periods (considering the number of orders)?
-- Busiest days
SELECT TOP(1) Datename(WEEKDAY, order_date) As Week_day, count(order_id)/count(distinct(order_date)) AS average_order
FROM [dbo].[pizza_sales$]
group by Datename(WEEKDAY, order_date)
order by count(order_id) desc

-- Busiest Time
SELECT TOP(1) Datename(HOUR, order_time) As hour, count(order_id)/count(distinct(order_date)) AS average_order
FROM [dbo].[pizza_sales$]
group by Datename(HOUR, order_time)
order by count(order_id) desc



--What are our best and worst-selling pizzas (considering the total number of orders)?
--Best-sell
SELECT Top (1) pizza_name, count(order_id) As [total Orders]
FROM [dbo].[pizza_sales$]
group by pizza_name
order by [total Orders] desc

--worst-sell
SELECT Top (1) pizza_name, count(*) As [total Orders]
FROM [dbo].[pizza_sales$]
group by pizza_name
order by [total Orders] asc


--What's our Total Orders?
SELECT count(order_id) AS Total_Orders
FROM [dbo].[pizza_sales$]




--What's our average order per day?
SELECT count(order_id)/count(distinct(order_date)) AS average_order_day
FROM [dbo].[pizza_sales$]



--What's our Total Revenue?
SELECT sum(total_price) AS Total_Revenue
FROM [dbo].[pizza_sales$]



