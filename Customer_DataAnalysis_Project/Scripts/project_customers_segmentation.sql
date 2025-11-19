-- 1.How is the shopping distribution according to gender?
select coalesce(gender,"unknown") As gender,count(*) as total_orders from customer
GROUP BY COALESCE(gender, 'Unknown')
ORDER BY total_orders DESC;

-- 2.Which gender did we sell more products to?
select coalesce(gender,"unknown") As gender,sum(quantity) as total_orders_sold from customer
GROUP BY COALESCE(gender, 'Unknown')
ORDER BY total_orders_sold DESC;
-- 3.Which gender generated more revenue?
select coalesce(gender,"Unknown") as gender,sum(quantity*price) as Total_revenue_generated from customer
group by coalesce(gender,"Unknown")
order by total_revenue_generated desc;

-- 4.Distribution of purchase categories relative to other columns?
select category,gender,count(*) as Total_shopping from customer
group by category,gender 
order by category,total_shopping desc;
-- 5.How is the shopping distribution according to age?
select age, count(*) AS Total_Orders from customer
group by age
order by age;

-- 5.How is the shopping distribution according to age?
SELECT 
    CASE 
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+' 
    END AS age_group,
    COUNT(*) AS total_orders
FROM customer
GROUP BY age_group
ORDER BY total_orders DESC;

-- 6.Which age cat did we sell more products to?
SELECT 
        case
        when age between 18 and 25 then "18-25"
        when age between 26 and 35 then "26-35"
		when age between 36 and 45 then "36-45"
        else "46+"
end as age_group,
sum(quantity) as total_product_sold
from customer
group by age_group
order by total_product_sold desc;
-- 7.Which age cat generated more revenue?
SELECT 
	case
        when age between 18 and 25 then "18-25"
        when age between 26 and 35 then "26-35"
		when age between 36 and 45 then "36-45"
        else "46+"
end as age_group,
sum(quantity*price) as total_revenue_generated
from customer
group by age_group
order by total_revenue_generated desc;

-- 9.	Does the payment method have a relation with other columns?
select payment_method,sum(quantity*price) as total_revenue from customer
group by payment_method
order by total_revenue;

-- 10.How is the distribution of the payment method?
select payment_method,count(*) as total_orders 
from customer
group by payment_method
order by total_orders;








