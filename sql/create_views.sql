-- 1. Delivery delays
CREATE OR REPLACE VIEW v_delivery_delays AS
SELECT
    c.customer_state,
    AVG(DATEDIFF(o.order_delivered_customer_date, o.order_estimated_delivery_date)) AS avg_delivery_delay
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_delivered_customer_date IS NOT NULL
  AND o.order_estimated_delivery_date IS NOT NULL
GROUP BY c.customer_state;

-- 2. Top revenue product categories
CREATE OR REPLACE VIEW v_top_categories_revenue AS
SELECT
    p.product_category_name,
    SUM(oi.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name;

-- 3. Low-rating sellers
CREATE OR REPLACE VIEW v_low_rating_sellers AS
SELECT
    s.seller_id,
    AVG(r.review_score) AS avg_score,
    COUNT(r.review_score) AS review_count
FROM sellers s
JOIN order_items oi ON s.seller_id = oi.seller_id
JOIN order_reviews r ON oi.order_id = r.order_id
GROUP BY s.seller_id
HAVING AVG(r.review_score) < 3;

-- 4. High-value customers
CREATE OR REPLACE VIEW v_high_value_customers AS
SELECT
    c.customer_id,
    c.customer_city,
    c.customer_state,
    COUNT(DISTINCT o.order_id) AS order_count,
    SUM(oi.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY
    c.customer_id,
    c.customer_city,
    c.customer_state
ORDER BY total_spent DESC, order_count DESC;
