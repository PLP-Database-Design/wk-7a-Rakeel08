-- Question 1: Achieving 1NF;; Transform the ProductDetail table into 1NF
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

-- Insert data into the new table by splitting the products into separate rows
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
SELECT 101, 'John Doe', 'Laptop' UNION ALL
SELECT 101, 'John Doe', 'Mouse' UNION ALL
SELECT 102, 'Jane Smith', 'Tablet' UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard' UNION ALL
SELECT 102, 'Jane Smith', 'Mouse' UNION ALL
SELECT 103, 'Emily Clark', 'Phone';
