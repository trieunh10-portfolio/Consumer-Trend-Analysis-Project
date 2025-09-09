-- Classify income to income_level.
ALTER TABLE Customers
ADD Income_level VARCHAR(50);

UPDATE Customers
SET Income_level = CASE WHEN income >= 80000  THEN 'High'
	                    WHEN income >= 40000 AND income < 80000 THEN 'Medium'
	                    ELSE 'Low'
                   END;

-- Spending statistics by age group
SELECT Age_Group, SUM(Spend) AS TotalSpend 
FROM spending
LEFT JOIN customers
   ON spending.customer_ID = customers.customer_ID
GROUP BY Age_group
ORDER BY TotalSpend DESC;

-- Spending statistics by category
SELECT Age_Group, Category, SUM(Spend) AS TotalSpend 
FROM Products
LEFT JOIN Spending
   ON products.product_key = spending.product_key
LEFT JOIN Customers
   ON spending.customer_ID = customers.customer_ID
GROUP BY Age_group, Category
ORDER BY TotalSpend DESC;


-- Statistics on number of purchases by channel
SELECT Channel, SUM(PurchaseCount) as Total_time_purchase
FROM Purchase p
LEFT JOIN Channel ch
   ON p.channel_key = ch.channel_key
GROUP BY Channel
ORDER BY Total_time_purchase DESC;


-- Trends in using shopping channels by age group
SELECT Age_Group, Channel, SUM(PurchaseCount) as Total_time_purchase
FROM Purchase p
LEFT JOIN Channel ch
   ON p.channel_key = ch.channel_key
LEFT JOIN Customers c
   ON p.customer_id = c.customer_id
GROUP BY Age_group, Channel
ORDER BY Total_time_purchase DESC;


-- Number of promotional purchases by age group
SELECT Age_Group, SUM(Purchases_with_discount) AS Total_discountpur 
FROM (SELECT DISTINCT customer_id, Purchases_with_discount FROM Spending) AS sub
LEFT JOIN customers c
   ON sub.customer_id = c.customer_id
GROUP BY Age_Group
ORDER BY Total_discountpur DESC;


-- Number of responses to campaigns by age group
SELECT Age_Group, COUNT(AcceptCount) as Total_accept
FROM Response r
LEFT JOIN Campaign cp
   ON r.campaign_key = cp.campaign_key
LEFT JOIN customers c
   ON r.customer_id = c.customer_id
WHERE AcceptCount = 1
GROUP BY Age_group
ORDER BY total_accept DESC;



-- Range of recency by Age group
WITH Sub AS (
SELECT customer_id, age_group, recency,
       CASE WHEN recency <= 7 THEN 'Within 7 days'
	        WHEN recency <= 30 THEN 'Within 30 days'
	        WHEN recency <=60  THEN 'Within 60 days'
	        ELSE 'Greater than 60 days'
       END AS Range_of_Recency
FROM SubSpend)
SELECT age_group, Range_of_Recency , COUNT(Range_of_Recency) AS Recency_statistic FROM Sub 
LEFT JOIN customers c
   ON sub.customer_id = c.customer_id
GROUP BY age_group
ORDER BY Recency_statistic DESC;



				
