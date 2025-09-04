## Consumer Trend Analysis
### Description
Analyzed demographic trends, consumption patterns, and promotion effectiveness. Identified high-value customers, leading to targeted marketing recommendations.

### Data 
- Source: Kaggle
- Description of dataset: 2240 records, 29 columns (ID, Year_Birth, Education, MaritalStatus, Income, ...)
### Tools and Technique
- SQL Server: Cleaning (JOINs, CTEs, Aggregate Functions, Subquery, Converting Data Types)
- Power BI: Data modeling and Visualization
### Implementaion
1. Data Cleaning by SQL
- Convert data types
- Rename Column
- Detect and remove Null values
- Remote Duplicate
- Standardizing categories
2. Data normalization and data modeling by Power BI
- Unpivot các cột MntWines, MntFruits, MntMeatProducts, … thành 2 cột:
  - Category (Wine, Fruits, Meats, Sweets, …)
  - Spending (số tiền chi tiêu tương ứng)
- Unpivot các cột WebSpend, StoreSpend, CatalogSpend thành 2 column: Channel (Web, Store, Catalog) and Number of purchases using that channel
- Làm tương tự với các bảng Response
- Tách dataset đã chuẩn hóa thành các bảng Dimension và Fact trong Query Editor theo Star Schema. Trong đó:
  - Fact Table: Spending (chi tiêu theo sản phẩm), Purchases (số lần mua theo kênh (Web/Store/Catalog), Subspend (số lần ghé Website, Recency, thời gian) and Repsonse (phản hồi chiến dịch)._
  - Dimension table: Customers, Channel, Campaign and Products
  - Date table: Date
(File hình ảnh data model)
3. Visualization
- Create a dashboard using Power BI
### Result
### Conclusion
