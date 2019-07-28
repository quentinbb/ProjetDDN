DROP SCHEMA IF EXISTS production ;
CREATE SCHEMA production ;
USE production ;

CREATE TABLE categories (
	category_id INT AUTO_INCREMENT  PRIMARY KEY,
	category_name VARCHAR (255) NOT NULL
);

CREATE TABLE brands (
	brand_id INT AUTO_INCREMENT  PRIMARY KEY,
	brand_name VARCHAR (255) NOT NULL
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    model_year SMALLINT NOT NULL,
    list_price DECIMAL(10 , 2 ) NOT NULL
);

CREATE TABLE stocks (
	store_id INT,
	product_id INT,
	quantity INT,
	PRIMARY KEY (store_id, product_id)
);

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT  PRIMARY KEY,
    first_name VARCHAR (20) NOT NULL,
    last_name VARCHAR (20) NOT NULL,
    phone VARCHAR (25),
    email VARCHAR (100) NOT NULL,
    street VARCHAR (100) NOT NULL,
    city VARCHAR (50) NOT NULL,
    state VARCHAR (50) NOT NULL,
    zip_code INT NOT NULL
);

CREATE TABLE orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_id INT NOT NULL,
	order_status ENUM('0', '1', '2', '3', '4'),
	order_date DATE,
	required_date DATE,
	shipped_date DATE,
	store_id INT,
	staff_id INT
);

CREATE TABLE staffs (
	staff_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR (20) NOT NULL,
    last_name VARCHAR (20) NOT NULL,
    email VARCHAR (100) NOT NULL,
    phone VARCHAR (25),
    active1 ENUM('0', '1') NOT NULL,
    store_id INT,
    manager_id INT
);

CREATE TABLE stores (
	store_id INT AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR (50) NOT NULL,
    phone VARCHAR (25),
    email VARCHAR (100) NOT NULL,
    street VARCHAR (100) NOT NULL,
    city VARCHAR (50) NOT NULL,
    state VARCHAR (50) NOT NULL,
    zip_code INT NOT NULL
);

CREATE TABLE order_items (
	order_id INT NOT NULL,
    item_id INT,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    list_price DECIMAL (10, 2) NOT NULL,
    discount DECIMAL (10, 2) NOT NULL,
    PRIMARY KEY (order_id, item_id)
);