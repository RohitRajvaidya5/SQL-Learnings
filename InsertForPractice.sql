-- Customers
INSERT INTO Customers VALUES (1, 'Alice', 'alice@gmail.com');
INSERT INTO Customers VALUES (2, 'Bob', 'bob@yahoo.com');
INSERT INTO Customers VALUES (3, 'Charlie', 'charlie@hotmail.com');

-- Products
INSERT INTO Products VALUES (101, 'Laptop', 75000);
INSERT INTO Products VALUES (102, 'Mouse', 500);
INSERT INTO Products VALUES (103, 'Keyboard', 1200);
INSERT INTO Products VALUES (104, 'Monitor', 15000);

-- Orders
INSERT INTO Orders VALUES (1001, 1, TO_DATE('2024-01-10', 'YYYY-MM-DD'));
INSERT INTO Orders VALUES (1002, 2, TO_DATE('2024-01-12', 'YYYY-MM-DD'));

-- Order_Items
INSERT INTO Order_Items VALUES (1, 1001, 101, 1);
INSERT INTO Order_Items VALUES (2, 1001, 102, 2);
INSERT INTO Order_Items VALUES (3, 1002, 104, 1);

COMMIT;
