USE act4;

CREATE TABLE Product (
    ID INT(8) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ProductName VARCHAR(32) NOT NULL
);

INSERT INTO Product(ProductName) 
VALUES('Pencil'),('Ballpen'),('Notebook'),('Eraser');

CREATE TABLE Customer (
    ID INT(8) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(64) NOT NULL,
    LastName VARCHAR(32) NOT NULL,
    Address VARCHAR(128) NOT NULL
);

INSERT INTO Customer(FirstName, LastName, Address) VALUES
('Jeff', 'Horn', 'QC'), 
('Amy', 'Perez', 'Manila'), 
('Kyle', 'Korver', 'Cavite'), 
('Lee', 'Sin', 'QC');

CREATE TABLE OrderTable (
    ID INT(8) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Product_ID INT(8) NOT NULL,
    Customer_ID INT(8) NOT NULL,
    Quantity INT(4) NOT NULL,
    UnitPrice INT(8) NOT NULL,
    FOREIGN KEY (Product_ID)
        REFERENCES Product (ID),
    FOREIGN KEY (Customer_ID)
        REFERENCES Customer (ID)
);

INSERT INTO OrderTable(Product_ID, Customer_ID, Quantity, UnitPrice) VALUES
(1,1,5,10),
(2,2,3,15),
(3,3,12,22),
(1,4,4,10),
(4,2,3,8);

CREATE TABLE Inventory(
Product_ID INT(8) NOT NULL PRIMARY KEY,
Quantity INT(4) NOT NULL,
UnitPrice INT(8) NOT NULL,
FOREIGN KEY (Product_ID) REFERENCES Product(ID)
);

INSERT INTO Inventory(Product_ID, Quantity, UnitPrice) VALUES
(1,250,10),
(2,300,15),
(3,235,22),
(4,500,8);

SELECT * FROM Product;
SELECT * FROM Customer;
SELECT * FROM OrderTable;
SELECT * FROM Inventory;