CREATE TABLE category
(
  catId VARCHAR(100) DEFAULT '' PRIMARY KEY NOT NULL,
  catName VARCHAR(200),
  catDescription VARCHAR(200)
);
CREATE TABLE user
(
  custId VARCHAR(100) DEFAULT '' PRIMARY KEY NOT NULL,
  name VARCHAR(200),
  address VARCHAR(200),
  phone VARCHAR(20),
  mail VARCHAR(100),
  password VARCHAR(20)
);
CREATE TABLE inventory
(
  productId VARCHAR(100) DEFAULT '' PRIMARY KEY NOT NULL,
  qty INT(11),
  CONSTRAINT inventory_ibfk_1 FOREIGN KEY (productId) REFERENCES product (productId)
);
CREATE TABLE orderDetail
(
  orderId VARCHAR(100),
  productId VARCHAR(100),
  qty INT(11),
  CONSTRAINT orderDetail_ibfk_1 FOREIGN KEY (orderId) REFERENCES orders (orderId),
  CONSTRAINT orderDetail_ibfk_2 FOREIGN KEY (productId) REFERENCES product (productId)
);
CREATE INDEX orderId ON orderDetail (orderId);
CREATE INDEX productId ON orderDetail (productId);
CREATE TABLE orders
(
  orderId VARCHAR(100) DEFAULT '' PRIMARY KEY NOT NULL,
  custId VARCHAR(100),
  paymentId VARCHAR(100),
  orderDate DATE,
  CONSTRAINT orders_ibfk_1 FOREIGN KEY (custId) REFERENCES user (custId),
  CONSTRAINT orders_ibfk_2 FOREIGN KEY (paymentId) REFERENCES payment (paymentId)
);
CREATE INDEX custId ON orders (custId);
CREATE INDEX paymentId ON orders (paymentId);
CREATE TABLE payment
(
  paymentId VARCHAR(100) DEFAULT '' PRIMARY KEY NOT NULL,
  amount DOUBLE,
  custId VARCHAR(100),
  CONSTRAINT payment_ibfk_1 FOREIGN KEY (custId) REFERENCES user (custId)
);
CREATE INDEX custId ON payment (custId);
CREATE TABLE product
(
  productId VARCHAR(100) DEFAULT '' PRIMARY KEY NOT NULL,
  productName VARCHAR(200),
  productDescription VARCHAR(200),
  catId VARCHAR(100),
  unitPrice DOUBLE,
  CONSTRAINT product_ibfk_1 FOREIGN KEY (catId) REFERENCES category (catId)
);
CREATE INDEX catId ON product (catId);

SELECT  * FROM category;

SELECT * FROM product;

DELETE product FROM product WHERE productId = "aaa";



