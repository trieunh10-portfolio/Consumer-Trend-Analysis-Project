

> *Create Date table*



 			Date = CALENDARAUTO()



> *Create Year Column*



 			Year = YEAR('Date'\[Date])



> *Create Quarter Column*



 			Quarter = "Q" \& QUARTER('Date'\[Date])



> *Create Month Column*



 			Month = FORMAT(('Date'\[Date]),"MMM")





> *Total Spend measure*





&nbsp;			Total Spend = SUM(Spending\[Spend])





> *Total Customer measure*

&nbsp;			

&nbsp;			TotalCustomer = COUNT(Customers\[Customer\_ID])





> *Calculate the number of times customers respond accept to campaigns*





&nbsp;			Total\_accept = CALCULATE(COUNT(Response\[AcceptCount]),FILTER(Response, Response\[AcceptCount] = 1))





> *Calculate the response rate of customers over all customers*





&nbsp;			Promotion Response Rate = DIVIDE(\[Total\_accept],CALCULATE(DISTINCTCOUNT(Response\[Customer\_ID]),ALL(Customers)))





> *Calculate the response rate of customers in each Age group*



&nbsp;			Promotion Response Rate by Age\_Group = DIVIDE(\[Total\_accept],CALCULATE(\[Total\_accept],ALL(Customers)))



> *Create a column to classify recency levels*





&nbsp;			Range of recency = IF(SubSpend\[Recency] <= 7, "Within 7 days", 

&nbsp;						IF(SubSpend\[Recency] <= 30, "Within 30 days", 

&nbsp;							IF(SubSpend\[Recency] <= 60, "Within 60 days", "Greater than 60 days")))





