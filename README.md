# Consumer Trend Analysis Project
## Goal
Analyze demographic trends, consumption patterns, and promotion effectiveness. Identify insights from high-value customers, leading to targeted marketing recommendations.
## Data 
- Source: Kaggle
- Dataset: marketing_campaign (2240 records, 29 columns)

- Link: [marketing_campaign](https://www.kaggle.com/datasets/imakash3011/customer-personality-analysis)
  
## Tools and Technique
- SQL Server: Data cleaning (CTEs, Subquery, Converting Data Types), data exploration (JOINs, CTEs, Aggregate Functions, Subquery).
- Power BI: Data modeling, DAX, and Visualization.
## Process
1. Data Cleaning by SQL

Code: [Data Cleaning Consumer Trend Project.sql](https://github.com/trieunh10-portfolio/Consumer-Trend-Analysis-Project/blob/main/Data%20Cleaning%20Consumer%20Trend%20Project.sql)

2. Data normalization and data modeling by Power BI
- Transformed the cleaned dataset into a normalized format by unpivoting the columns MntWines, MntFruits, MntMeatProducts, WebSpend, StoreSpend, and CatalogSpend.
- Divided the normalized dataset into Dimension and Fact tables in Query Editor according to the Star Schema, with:
  - Fact Tables: Spending, Purchases (number of purchases at Web/Store/Catalog), Subspend, and Response (number of responses).
  - Dimension tables: Customers, Channel, Campaign, and Products.
  - Date table: Date.

- Image of data model: [Consumer Trend Data Model.jpg](https://github.com/trieunh10-portfolio/Consumer-Trend-Analysis-Project/blob/main/Consumer%20Trend%20Data%20Model.jpg)

3. Data exploration by DAX/ SQL

- DAX Formula: [DAX Formula of Consumer Trend.md](https://github.com/trieunh10-portfolio/Consumer-Trend-Analysis-Project/blob/main/DAX%20Formula%20of%20Consumer%20Trend.md)

- SQL Code: [Data Exploration Consumer Trend Project by SQL.sql](https://github.com/trieunh10-portfolio/Consumer-Trend-Analysis-Project/blob/main/Data%20Exploration%20Consumer%20Trend%20Project%20by%20SQL.sql)

4. Built an interactive Power BI dashboard for visualization and storytelling
   
- Link to dashboard: [Consumer Trend Dashboard](https://app.powerbi.com/groups/me/reports/d5e06fdb-672a-4f68-aeea-78ec12145aca/627809e7b43119c37b2a?experience=power-bi)
  
## Results
- The age group with the highest spending is middle-aged (46 to 59), followed by adult (25 to 45). The most frequently purchased products are wine, followed closely by meat.
- The most chosen shopping channel is in-store, followed by the Website. Middle-aged and elderly customers tend to buy more directly, while adults frequently shop through both channels, with a notable tendency to visit the website.
- Middle-aged and adult customers tend to buy the most discounted products.
- Adults have the highest acceptance rate for marketing campaigns, but they have a lower purchase rate.
- The recency rate of shopping is highest among the adults, with both the middle-aged and adults showing the most recent shopping activity.
## Insights
- Promote wine, meats, and gold (especially targeting Middle-aged individuals with high income).
- Middle-aged and elderly customers tend to be more loyal to traditional purchasing habits and like to buy deals with discounts. Organize in-store promotions specifically for this age group.
- Enhance marketing campaigns or increase promotions on online channels aimed at adults.
- Maintain loyalty programs tailored for the elderly group.
- Potential customers are likely to come from both the middle-aged and adult groups; therefore, create special purchase programs for this group.


