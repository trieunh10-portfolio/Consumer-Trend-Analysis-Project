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
_- Đưa dataset đã được làm sạch về dạng chuẩn hóa (unpivot các cột MntWines, MntFruits, MntMeatProducts, WebSpend, StoreSpend, CatalogSpend, ...)_
- Transferring the cleaned dataset to the normalization form (unpivot columns MntWines, MntFruits, MntMeatProducts, WebSpend, StoreSpend, CatalogSpend, ...)
- Tách dataset đã chuẩn hóa thành các bảng Dimension và Fact trong Query Editor theo Star Schema. Trong đó:
- Separating the normalized dataset into Dimension and Fact tables in Query Editor according to the Star Schema, with:
  - Fact Table: Spending (chi tiêu theo sản phẩm), Purchases (số lần mua theo kênh (Web/Store/Catalog), Subspend (số lần ghé Website, Recency, thời gian) and Repsonse (phản hồi chiến dịch)._
  - Dimension table: Customers, Channel, Campaign and Products
  - Date table: Date
(File hình ảnh data model)
3. Visualization
- Built an interactive Power BI dashboard for visualization and storytelling.
### Result
- Nhóm khách hàng mua sắm nhiều nhất: Middle_Aged (46 - 59) và Adult (25 - 45)
- The age group with the highest spending was Middle_Aged (46 - 59), followed by Adult (25 - 45). The most purchased products are wine, followed by meat.
- Loại sản phẩm được mua nhiều nhất là Wine and Meat
- Kênh mua sắm được lựa chọn nhiều nhất là Store, tiếp đến là Web. Trong đó Middle_Aged và Elderly có xu hướng mua trực tiếp hơn, Adult mua sắm nhiều ở cả 2 hình thức nhưng lại là nhóm thường visit website nhất.
- The most chosen shopping channel is Store, followed by Web. Middle-aged and Elderly tend to buy more directly, Adult shop a lot in both forms, but it is the group that most often visits the website.
- Mid_Aged and Adult mua hàng giảm giá nhiều nhất
- Adult phản hồi accept với các Campaign nhiều nhất nhưng tỉ lệ mua lại thấp
- The Adult has the highest acceptance rate with campaigns, but has a low purchase rate
- Tỉ lệ Recency cao nhất ở Elderly, nhóm tuổi có thời gian mua sắm gần nhất nằm trong Elderly và Youth
- Recency rate is highest in the Elderly, the age group with the most recent shopping time is in Elderly and the Youth.
### Conclusion
- Upsell các mặt hàng Wine, Meat and Gold (đặc biệt đối với phân khúc khách hàng Midd-Aged with High Income)
- Mid_Aged và Elderly trung thành với mua hàng truyền thống hơn và thích mua các deal giảm giá -> Tổ chức các chương trình khuyến mãi tại Store dành cho Mid_Aged
- Chạy các chiến dịch marketing hoặc tăng cường khuyến mãi trên các kênh online đối với Adult
- Duy trì các chương trình loyalty đối với nhóm Elderly
- Nhóm Youth và Elderly có thể trở thành tập khách hàng tiềm năng -> tạo các chương trình mua hàng đặc biệt cho nhóm này

- Upsell Wine, Meats and Gold (especially for Middle-aged with High Income)
- Middle-aged and Elderly are more loyal to traditional purchases and like to buy deals with discount -> Organize promotions in-store for Middle-aged
- Run marketing campaigns or increase promotions on online channels for Adult
- Maintain loyalty programs for the Elderly group
- Potential customers likely to come from the Youth and Elderly groups -> create special purchase programs for both groups.
  
