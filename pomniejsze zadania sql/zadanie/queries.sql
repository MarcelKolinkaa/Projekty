SELECT
    c.customer_id,
    c.customers_name,
    p.product_name,
    o.quantity,
    o.order_date
FROM
    customers  c
    LEFT JOIN orders     o ON ( c.customer_id = o.customer_id )
    LEFT JOIN products   p ON ( p.products_id = o.product_id )
ORDER BY
    o.customer_id,
    o.order_date DESC;
    
    
    
    
    
SELECT
    c.customers_name ,
    count(o.quantity) as amount_of_orders,
    extract(year from o.order_date) as YEAR
    
FROM
    orders o
    left join customers c on (o.customer_id = c.customer_id)
   WHERE
      extract(year from o.order_date) = 2022
     
   group by 
   c.customers_name,
   extract(year from o.order_date)
 having 
 count(o.quantity)>=5;
