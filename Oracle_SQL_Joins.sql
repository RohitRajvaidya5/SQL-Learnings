SELECT *
FROM Products;

SELECT *
FROM Customers;

SELECT *
FROM Orders;

SELECT *
FROM ORDER_ITEMS;

SELECT *
FROM ANIME;


SELECT P.PRODUCT_ID as Product_Id, P.Price as Price, OI.Quantity as Quantity, OI.ORDER_ID
FROM Products P
JOIN Order_Items OI
ON P.PRODUCT_ID = OI.PRODUCT_ID;

COMMIT;

-- Print headers of the table
SELECT column_name
FROM all_tab_columns
WHERE table_name = 'ANIME';  -- Optional: If table is not in your current schema

-- Find Anime with Same Genre but Different Names
SELECT A.NAME as Aname, B.NAME as Bname, A.GENRE
FROM ANIME A
JOIN ANIME B
ON A.GENRE = B.GENRE
WHERE A.ANIME_ID <> B.ANIME_ID;

SELECT A.NAME AS Aname, B.NAME AS Bname, DBMS_LOB.SUBSTR(A.GENRE, 100) AS genre
FROM ANIME A
JOIN ANIME B
  ON DBMS_LOB.SUBSTR(A.GENRE, 100) = DBMS_LOB.SUBSTR(B.GENRE, 100)
WHERE A.ANIME_ID < B.ANIME_ID;

SELECT column_name, data_type, data_length
FROM user_tab_columns
WHERE table_name = 'ANIME';