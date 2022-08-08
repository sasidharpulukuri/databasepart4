INSERT INTO customer_details(customer_id,customer_name,customer_address,phone_number)
VALUES('c4','jack','street o','43424')


UPDATE customer_details
SET customer_name='jakey',customer_address='os street',phone_number='978978'
WHERE customer_id='c4';


DELETE FROM customer_details WHERE customer_id='c4';

SELECT order_id,order_date
FROM order_details
ORDER BY quantity ASC

SELECT customer_name
FROM review
WHERE comment='good';

SELECT customer_details.customer_id,order_details.order_date
FROM customer_details
INNER JOIN order_details ON customer_details.customer_id=order_details.customer_id;

SELECT MAX(price)
FROM order_details

SELECT MIN(quantity)
FROM order_details



SELECT AVG(amount)
FROM payment

SELECT COUNT(customer_id)
FROM payment

 SELECT process AS current_status_of_order
FROM order_status;






