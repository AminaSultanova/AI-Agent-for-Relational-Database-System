-- customers
CREATE INDEX idx_customers_city ON customers(customer_city);
CREATE INDEX idx_customers_state ON customers(customer_state);

-- orders
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
CREATE INDEX idx_orders_delivered_date ON orders(order_delivered_customer_date);
CREATE INDEX idx_orders_estimated_date ON orders(order_estimated_delivery_date);

-- order_items
CREATE INDEX idx_order_items_order_id ON order_items(order_id);
CREATE INDEX idx_order_items_product_id ON order_items(product_id);
CREATE INDEX idx_order_items_seller_id ON order_items(seller_id);

-- payments
CREATE INDEX idx_payments_order ON order_payments(order_id);
CREATE INDEX idx_payments_type ON order_payments(payment_type);

-- reviews
CREATE INDEX idx_reviews_order_id ON order_reviews(order_id);
CREATE INDEX idx_reviews_score ON order_reviews(review_score);

-- products
CREATE INDEX idx_products_category ON products(product_category_name);
