SELECT * FROM customers;

-- 1. What is the total number of orders placed on the platform?
SELECT COUNT(Order_ID) AS "ORDERS" FROM CUSTOMERS;

-- 2. What is the total revenue generated (sum of Final_Price)?
SELECT SUM(Final_Price) AS "REVENUE" FROM CUSTOMERS;

-- 3. What is the average order value (Order_Value) across all orders?
SELECT AVG(Order_Value) AS "Avg_Order_Value" FROM CUSTOMERS;

-- 4. Which city has the highest number of orders?
SELECT City, COUNT(Order_ID) AS "Total_Orders"
FROM CUSTOMERS
GROUP BY City
ORDER BY Total_Orders DESC
LIMIT 1;

-- 5. What is the average delivery time (Delivery_Time_Minutes) for each city?
SELECT City, AVG(Delivery_Time_Minutes) AS "Average_Time"
FROM customers
GROUP BY City;

-- 6. Which restaurant type is the most popular based on the number of orders?
SELECT RESTAURANT_TYPE, COUNT(Order_ID) AS "Total_Orders"
FROM customers
GROUP BY Restaurant_Type
ORDER BY "Total_Orders" DESC
LIMIT 1;

-- 7. What is the average customer rating for each restaurant type?
SELECT Restaurant_Type, AVG(Customer_Rating) AS "Average_Rating"
FROM customers
GROUP BY Restaurant_Type;

-- 8. What is the total discount amount given across all orders?
SELECT SUM(Order_Value - Final_Price) AS "Total_Discount_Amount"
FROM customers;

-- 9. How many repeat customers are there compared to first-time customers?
SELECT Repeat_Label,COUNT(REPEAT_LABEL) AS "Total_Count"
FROM customers
GROUP BY Repeat_Label;

-- 10. What is the average order value for repeat customers versus non-repeat customers?
SELECT Repeat_Label,AVG(Order_Value) AS "Average_Order"
FROM customers
GROUP BY Repeat_Label;

-- 11. Which payment method is the most frequently used?
SELECT Payment_Method, COUNT(Order_ID) AS "Total_Orders"
FROM customers
GROUP BY Payment_Method
ORDER BY "Total_Orders" DESC
LIMIT 1;

-- 12. What is the distribution of orders across different cities?
SELECT City, COUNT(Order_ID) AS Total_Orders
FROM customers
GROUP BY City
ORDER BY Total_Orders DESC;

-- 13. List the top 5 customers (by Customer_ID) who have spent the most money.
SELECT Customer_ID, SUM(Final_Price) AS Total_Spent
FROM customers
GROUP BY Customer_ID
ORDER BY Total_Spent DESC
LIMIT 5;

-- 14. What is the average discount percentage offered in each city?
SELECT City,AVG(Discount_Percent) AS "Average_Discount"
FROM customers
GROUP BY City;

-- 15. How many orders have a delivery time greater than 45 minutes?
SELECT COUNT(Order_ID) AS "Order_Above_45mins"
FROM customers
WHERE Delivery_Time_Minutes > 45;

-- 16. What is the total revenue generated from each payment method?
SELECT Payment_Method,SUM(Final_Price) AS "REVENUE"
FROM customers
GROUP BY Payment_Method;

-- 17. Which city has the highest average customer rating?
SELECT City, AVG(Customer_Rating) AS "Average_Rating"
FROM customers
GROUP BY City
ORDER BY Average_Rating DESC
LIMIT 1;

-- 18. Find the maximum and minimum order values in the dataset.
SELECT MAX(Order_Value) AS "Max_Order", MIN(Order_Value) AS "Min_Order"
FROM customers;

-- 19. What is the percentage of repeat customers in each city?
SELECT City, AVG(Repeat_Customer) * 100 AS Repeat_Percentage
FROM customers
GROUP BY City;

-- 20. Which restaurant type has the fastest average delivery time?
SELECT Restaurant_Type, AVG(Delivery_Time_Minutes) AS "Avg_Delivery"
FROM customers
GROUP BY Restaurant_Type
ORDER BY Avg_Delivery
LIMIT 1;