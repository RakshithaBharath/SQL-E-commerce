-- User
CREATE TABLE User (
  userId INT AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  phoneNum VARCHAR(20) NOT NULL,
  PRIMARY KEY (userId)
);

-- UserRole
CREATE TABLE UserRole (
  roleId INT PRIMARY KEY,
  roleName VARCHAR(20) NOT NULL
);

-- Buyer
CREATE TABLE Buyer (
  userId INT,
  roleId INT,
  PRIMARY KEY (userId),
  FOREIGN KEY (userId) REFERENCES User(userId),
  FOREIGN KEY (roleId) REFERENCES UserRole(roleId)
);

-- Seller
CREATE TABLE Seller (
  userId INT,
  roleId INT,
  PRIMARY KEY (userId),
  FOREIGN KEY (userId) REFERENCES User(userId),
  FOREIGN KEY (roleId) REFERENCES UserRole(roleId)
);

-- Bank Card 
CREATE TABLE Bank_Card (
  cardNumber VARCHAR(20),
  userId INT NOT NULL,
  bank VARCHAR(20) NOT NULL,
  expiryDate DATE NOT NULL,
  PRIMARY KEY (cardNumber),
  FOREIGN KEY (userId) REFERENCES User(userId)
);

-- Credit Card
CREATE TABLE Credit_Card (
  cardNumber VARCHAR(20),
  userId INT NOT NULL,
  organization VARCHAR(20),
  PRIMARY KEY (cardNumber),
  FOREIGN KEY (userId) REFERENCES User(userId)
);

-- Debit Card 
CREATE TABLE Debit_Card (
  cardNumber VARCHAR(20),
  userId INT NOT NULL,
  PRIMARY KEY (cardNumber),
  FOREIGN KEY (cardNumber) REFERENCES Bank_Card(cardNumber),
  FOREIGN KEY (userId) REFERENCES User(userId)
);

-- Store
CREATE TABLE Store (
  sid INT AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  startTime TIMESTAMP,
  customerGrade INT,
  streetAddr VARCHAR(50),
  city VARCHAR(20),
  province VARCHAR(20),
  PRIMARY KEY (sid)
);

-- Product
CREATE TABLE Product (
  pid INT AUTO_INCREMENT,
  sid INT NOT NULL,
  name VARCHAR(20),
  brand VARCHAR(20),
  type_ VARCHAR(20),
  price INT,
  colour VARCHAR(15),
  customerReview VARCHAR(150),
  modelNumber VARCHAR(20),
  PRIMARY KEY (pid),
  FOREIGN KEY (sid) REFERENCES Store(sid)
);

-- Order Item (itemid, pid, price, creationTime)
CREATE TABLE Item(
  itemid INT AUTO_INCREMENT,
  pid INT,
  price INT,
  creationTime TIMESTAMP,
  PRIMARY KEY (itemid),
  FOREIGN KEY (pid) REFERENCES Product(pid)
);

-- Address
CREATE TABLE Address (
  addrid INT AUTO_INCREMENT,
  userid INT,
  name VARCHAR(20),
  city VARCHAR(25),
  postalCode VARCHAR(10),
  streetAddr VARCHAR(50),
  province VARCHAR(25),
  contactPhoneNumber VARCHAR(20),
  PRIMARY KEY (addrid),
  FOREIGN KEY (userid) REFERENCES User(userId)
);

-- Order
CREATE TABLE Orders (
  orderNumber INT AUTO_INCREMENT PRIMARY KEY,
  creationTime TIMESTAMP,
  paymentStatus VARCHAR(15),
  totalAmount INT,
  userId INT,
  FOREIGN KEY (userId) REFERENCES User(userId)
);
