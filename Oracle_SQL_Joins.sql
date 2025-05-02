SELECT *
FROM Products;

SELECT *
FROM Customers;

SELECT *
FROM Orders;

SELECT *
FROM ORDER_ITEMS;


SELECT P.PRODUCT_ID as Product_Id, P.Price as Price, OI.Quantity as Quantity, OI.ORDER_ID
FROM Products P
JOIN Order_Items OI
ON P.PRODUCT_ID = OI.PRODUCT_ID;

COMMIT;
