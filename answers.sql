--QUESTION ONE
USE salesDB;

-- Check 1NF: One product per row in an order
SELECT 
    o.orderNumber,
    c.customerName,
    p.productName,
    od.quantityOrdered
FROM orders o
JOIN customers c ON o.customerNumber = c.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
JOIN products p ON od.productCode = p.productCode
ORDER BY o.orderNumber, p.productName;

--question two
USE salesDB;
SELECT 
    o.orderNumber,
    o.orderDate,
    c.customerName
FROM orders o
JOIN customers c ON o.customerNumber = c.customerNumber;
SELECT 
    od.orderNumber,
    p.productName,
    od.quantityOrdered,
    od.priceEach
FROM orderdetails od
JOIN products p ON od.productCode = p.productCode
ORDER BY od.orderNumber;
