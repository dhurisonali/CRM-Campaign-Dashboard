-- 1. Total Orders
SELECT COUNT(order_id) AS total_orders
FROM orders;

-- 2. Orders by Campaign
SELECT campaign, COUNT(order_id) AS order_count
FROM orders
GROUP BY campaign;

-- 3. Orders by Status
SELECT order_status, COUNT(order_id) AS order_count
FROM orders
GROUP BY order_status;

-- 4. Monthly Order Trend
SELECT 
    EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
    EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY year, month
ORDER BY year, month;
