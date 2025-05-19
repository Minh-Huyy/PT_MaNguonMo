CREATE DATABASE IF NOT EXISTS my_store; USE my_store;
CREATE TABLE category ( id INT AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(100) NOT NULL,DESCRIPTION TEXT );
CREATE TABLE product (
	id INT AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR(100) NOT NULL,
	DESCRIPTION TEXT,
	PRICE DECIMAL(10, 2) NOT NULL,
	image VARCHAR(255) DEFAULT NULL,
	
	category_id INT,
	FOREIGN KEY (category_id) REFERENCES category(id)	
);

INSERT INTO category (name) 
VALUES 
    ('Thiết bị di động'),
    ('Máy tính và phụ kiện'),
    ('Thiết bị gia dụng thông minh'),
    ('Âm thanh'),
    ('Camera và thiết bị chụp ảnh'),
    ('Thiết bị mạng'),
    ('Phụ kiện điện tử'),
    ('Thiết bị chơi game'),
    ('Thiết bị điện tử trong ô tô');
