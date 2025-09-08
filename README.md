## Consumer Trend Analysis
### Goal
Analyzed demographic trends, consumption patterns, and promotion effectiveness. Identified insights from high-value customers, leading to targeted marketing recommendations.
### Data 
- Source: Kaggle
- Dataset: Marketing_campaign (2240 records, 29 columns (ID, Year_Birth, Education, MaritalStatus, Income, ...))
### Tools and Technique
- SQL Server: Cleaning (CTEs, Aggregate Functions, Subquery, Converting Data Types)
- Power BI: Data modeling and Visualization
### Process
1. Data Cleaning by SQL
- Convert data types
- Rename Column
- Detect and remove Null values
- Remote Duplicate
- Standardizing categories
(Link cdoe SQL)
2. Data normalization and data modeling by Power BI
- Đưa dataset đã được làm sạch về dạng chuẩn hóa (unpivot các cột MntWines, MntFruits, MntMeatProducts, WebSpend, StoreSpend, CatalogSpend, ...)
- Tách dataset đã chuẩn hóa thành các bảng Dimension và Fact trong Query Editor theo Star Schema. Trong đó:
  - Fact Table: Spending (chi tiêu theo sản phẩm), Purchases (số lần mua theo kênh (Web/Store/Catalog), Subspend (số lần ghé Website, Recency, thời gian) and Repsonse (phản hồi chiến dịch)._
  - Dimension table: Customers, Channel, Campaign and Products
  - Date table: Date
(File hình ảnh data model)
3. Visualization
- Built an interactive Power BI dashboard for visualization and storytelling.
### Result
- Nhóm khách hàng mua sắm nhiều nhất: Mid_Aged (46 - 59) và Adult (25 - 45)
- Loại sản phẩm được mua nhiều nhất là Wine and Meat
- Kênh mua sắm được lựa chọn nhiều nhất là Store, tiếp đến là Web. Trong đó Mid_Age và Elderly có xu hướng mua trực tiếp hơn, Adult mua sắm nhiều ở cả 2 hình thức nhưng lại là nhóm thường visit website nhất.
- Mid_Aged and Adult mua hàng giảm giá nhiều nhất
- Adult phản hồi accept với các Campaign nhiều nhất nhưng tỉ lệ mua lại thấp
- Tỉ lệ Recency cao nhất ở Elderly, nhóm tuổi có thời gian mua sắm gần nhất nằm trong Elderly và Youth
### Conclusion
- Upsell các mặt hàng Wine, Meat and Gold (đặc biệt đối với phân khúc khách hàng Midd-Aged with High Income)
- Mid_Aged và Elderly trung thành với mua hàng truyền thống hơn và thích mua các deal giảm giá -> Tổ chức các chương trình khuyến mãi tại Store dành cho Mid_Aged
- Chạy các chiến dịch marketing hoặc tăng cường khuyến mãi trên các kênh online đối với Adult
- Duy trì các chương trình loyalty đối với nhóm Elderly
- Nhóm Youth và Elderly có thể trở thành tập khách hàng tiềm năng -> tạo các chương trình mua hàng đặc biệt cho nhóm này


  
