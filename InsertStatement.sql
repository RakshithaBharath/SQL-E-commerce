-- Insert 10 Users
INSERT INTO User (name, phoneNum)
VALUES
  ('User1', '+91-1234567891'),
  ('User2', '+91-2345678912'),
  ('User3', '+91-3456789123'),
  ('User4', '+91-4567891234'),
  ('User5', '+91-5678912345'),
  ('User6', '+91-6789123456'),
  ('User7', '+91-7891234567'),
  ('User8', '+91-8901234568'),
  ('User9', '+91-9012345679'),
  ('User10', '+91-0123456780');

-- Insert 3 UserRoles
INSERT INTO UserRole (roleId, roleName)
VALUES
  (1, 'Buyer'),
  (2, 'Seller'),
  (3, 'Admin');

-- Insert Buyers
INSERT INTO Buyer (userId, roleId)
VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 1),
  (5, 1),
  (6, 1),
  (7, 1);

-- Insert Sellers
INSERT INTO Seller (userId, roleId)
VALUES
  (9, 2),
  (8, 2);

-- Insert 10 Bank_Card records
INSERT INTO Bank_Card (cardNumber, userId, bank, expiryDate)
VALUES
  ('1111-1111-1111-1111', 1, 'Bank1', '2025-12-31'),
  ('2222-2222-2222-2222', 2, 'Bank2', '2024-10-31'),
  ('3333-3333-3333-3333', 3, 'Bank3', '2023-08-31'),
  ('4444-4444-4444-4444', 4, 'Bank4', '2024-09-30'),
  ('5555-5555-5555-5555', 5, 'Bank5', '2023-11-30'),
  ('6666-6666-6666-6666', 6, 'Bank6', '2025-03-31'),
  ('7777-7777-7777-7777', 7, 'Bank7', '2024-07-31'),
  ('8888-8888-8888-8888', 8, 'Bank8', '2025-05-31'),
  ('9999-9999-9999-9999', 9, 'Bank9', '2024-12-31'),
  ('1010-1010-1010-1010', 10, 'Bank10', '2025-06-30');

-- Insert 10 Credit_Card records
INSERT INTO Credit_Card (cardNumber, userId, organization)
VALUES
  ('C111-1111-1111-1111', 1, 'CreditCard1'),
  ('C222-2222-2222-2222', 2, 'CreditCard2'),
  ('C333-3333-3333-3333', 3, 'CreditCard3'),
  ('C444-4444-4444-4444', 4, 'CreditCard4'),
  ('C555-5555-5555-5555', 5, 'CreditCard5'),
  ('C666-6666-6666-6666', 6, 'CreditCard6'),
  ('C777-7777-7777-7777', 7, 'CreditCard7'),
  ('C888-8888-8888-8888', 8, 'CreditCard8'),
  ('C999-9999-9999-9999', 9, 'CreditCard9'),
  ('C101-1010-1010-1010', 10, 'CreditCard10');

-- Insert 10 Debit_Card records
INSERT INTO Debit_Card (cardNumber, userId)
VALUES
  ('1111-1111-1111-1111', 1),
  ('2222-2222-2222-2222', 2),
  ('3333-3333-3333-3333', 3),
  ('4444-4444-4444-4444', 4),
  ('5555-5555-5555-5555', 5),
  ('6666-6666-6666-6666', 6),
  ('7777-7777-7777-7777', 7),
  ('8888-8888-8888-8888', 8),
  ('9999-9999-9999-9999', 9),
  ('1010-1010-1010-1010', 10);

-- Insert 3 Store records
INSERT INTO Store (name, startTime, customerGrade, streetAddr, city, province)
VALUES
  ('Store1', NOW(), 4, '123 Main St', 'City1', 'Province1'),
  ('Store2', NOW(), 3, '456 Elm St', 'City2', 'Province2'),
  ('Store3', NOW(), 5, '789 Oak St', 'City3', 'Province3');

-- Insert 10 Products
INSERT INTO Product (sid, name, brand, type_, price, colour, customerReview, modelNumber)
VALUES
  (1, 'Product1', 'Brand1', 'Type1', 100, 'Red', 'Good product', 'Model1'),
  (2, 'Product2', 'Brand2', 'Type2', 200, 'Blue', 'Excellent product', 'Model2'),
  (3, 'Product3', 'Brand3', 'Type3', 150, 'Green', 'Average product', 'Model3'),
  (1, 'Product4', 'Brand4', 'Type1', 120, 'Yellow', 'Good product', 'Model4'),
  (2, 'Product5', 'Brand5', 'Type2', 250, 'Black', 'Excellent product', 'Model5'),
  (3, 'Product6', 'Brand6', 'Type3', 180, 'White', 'Average product', 'Model6'),
  (1, 'Product7', 'Brand7', 'Type1', 110, 'Orange', 'Good product', 'Model7'),
  (2, 'Product8', 'Brand8', 'Type2', 230, 'Pink', 'Excellent product', 'Model8'),
  (3, 'Product9', 'Brand9', 'Type3', 170, 'Purple', 'Average product', 'Model9'),
  (1, 'Product10', 'Brand10', 'Type1', 130, 'Brown', 'Good product', 'Model10');

-- Insert 10 Orders
INSERT INTO Orders (creationTime, paymentStatus, totalAmount, userId)
VALUES
  (NOW(), 'Paid', 300, 1),
  (NOW(), 'Paid', 150, 2),
  (NOW(), 'Paid', 220, 3),
  (NOW(), 'Paid', 180, 4),
  (NOW(), 'Paid', 250, 5),
  (NOW(), 'Paid', 210, 6),
  (NOW(), 'Paid', 170, 7),
  (NOW(), 'Paid', 280, 8),
  (NOW(), 'Paid', 320, 9),
  (NOW(), 'Paid', 270, 10);

-- Insert 10 Order Items
INSERT INTO Item (pid, price, creationTime)
VALUES
  (1, 100, NOW()),
  (2, 200, NOW()),
  (3, 150, NOW()),
  (4, 120, NOW()),
  (5, 250, NOW()),
  (6, 180, NOW()),
  (7, 110, NOW()),
  (8, 230, NOW()),
  (9, 170, NOW()),
  (10, 130, NOW());

-- Insert 10 Addresses
INSERT INTO Address (userid, name, city, postalCode, streetAddr, province, contactPhoneNumber)
VALUES
  (1, 'Address1', 'City1', '12345', '123 Main St', 'Province1', '+91-1111111111'),
  (2, 'Address2', 'City2', '23456', '456 Elm St', 'Province2', '+91-2222222222'),
  (3, 'Address3', 'City3', '34567', '789 Oak St', 'Province3', '+91-3333333333'),
  (4, 'Address4', 'City4', '45678', '101 Pine St', 'Province4', '+91-4444444444'),
  (5, 'Address5', 'City5', '56789', '202 Maple St', 'Province5', '+91-5555555555'),
  (6, 'Address6', 'City6', '67890', '303 Cedar St', 'Province6', '+91-6666666666'),
  (7, 'Address7', 'City7', '78901', '404 Birch St', 'Province7', '+91-7777777777'),
  (8, 'Address8', 'City8', '89012', '505 Oak St', 'Province8', '+91-8888888888'),
  (9, 'Address9', 'City9', '90123', '606 Elm St', 'Province9', '+91-9999999999'),
  (10, 'Address10', 'City10', '01234', '707 Pine St', 'Province10', '+91-1010101010');

