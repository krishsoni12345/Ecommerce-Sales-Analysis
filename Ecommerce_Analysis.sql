 -- Total Orders
select count(*) as Total_orders 
from orders;


-- Total Sales
select sum(Net_Amount) as Total_sales 
from orders;


-- Top Items
select Item_Name,sum(Net_Amount) as sales
from orders
group by Item_Name
order by sales desc;


-- Top Cities
select City,sum(Net_Amount) as sales
from orders
group by City
order by sales desc;


-- Monthly sales
select Month,sum(Net_Amount) as sales
from orders
group by Month;


-- Highest Profit Items
select Item_Name,sum(Profit) as Profit
from orders
group by Item_Name
order by Profit desc;


 -- Payment Method Distribution
select Payment_Method,count(*) as Total_orders
from orders
group by Payment_Method;


 -- Cancelled Orders
select *
from orders
where Order_Status= 'Cancelled';