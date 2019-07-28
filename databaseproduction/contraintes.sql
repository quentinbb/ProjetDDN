ALTER TABLE products
ADD CONSTRAINT fk_products_categories
  FOREIGN KEY (category_id)
  REFERENCES categories (category_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE ;
  
ALTER TABLE products
ADD CONSTRAINT fk_products_brand
  FOREIGN KEY (brand_id)
  REFERENCES brands (brand_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE ;
  
ALTER TABLE stocks
ADD CONSTRAINT fk_stocks_products
  FOREIGN KEY (product_id)
  REFERENCES products (product_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE ;
  
ALTER TABLE stocks
ADD CONSTRAINT fk_stocks_stores
  FOREIGN KEY (store_id)
  REFERENCES stores (store_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE ;
  
ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_products
  FOREIGN KEY (product_id)
  REFERENCES products (product_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE ;
  
ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_orders
  FOREIGN KEY (order_id)
  REFERENCES orders (order_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE ;
  
ALTER TABLE orders
ADD CONSTRAINT fk_orders_stores
  FOREIGN KEY (store_id)
  REFERENCES stores (store_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE ;
  
ALTER TABLE orders
ADD CONSTRAINT fk_orders_staffs
  FOREIGN KEY (staff_id)
  REFERENCES staffs (staff_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE ;
  
ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers
  FOREIGN KEY (customer_id)
  REFERENCES customers (customer_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE ;
  
ALTER TABLE staffs
ADD CONSTRAINT fk_staffs_stores
  FOREIGN KEY (store_id)
  REFERENCES stores (store_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE ;