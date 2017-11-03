CREATE TABLE category
(
  catId VARCHAR(100) DEFAULT '' PRIMARY KEY NOT NULL,
  catName VARCHAR(200),
  catDescription VARCHAR(200)
);
CREATE TABLE inventory
(
  productId VARCHAR(100) DEFAULT '' PRIMARY KEY NOT NULL,
  qty INT(11)
);
CREATE TABLE orderDetail
(
  orderId VARCHAR(100),
  productId VARCHAR(100),
  qty INT(11)
);
CREATE INDEX orderId ON orderDetail (orderId);
CREATE TABLE orders
(
  orderId VARCHAR(100) DEFAULT '' PRIMARY KEY NOT NULL,
  custId VARCHAR(100),
  tel VARCHAR(20),
  address VARCHAR(500)
);
CREATE INDEX custId ON productOrder (custId);
CREATE TABLE product
(
  productId VARCHAR(100) DEFAULT '' PRIMARY KEY NOT NULL,
  productName VARCHAR(200),
  productDescription VARCHAR(200),
  catId VARCHAR(100),
  unitPrice DOUBLE
);
CREATE INDEX catId ON product (catId);
CREATE TABLE user
(
  username VARCHAR(200) DEFAULT '' PRIMARY KEY NOT NULL,
  password VARCHAR(200) NOT NULL,
  userrole VARCHAR(50) DEFAULT 'USER'
);