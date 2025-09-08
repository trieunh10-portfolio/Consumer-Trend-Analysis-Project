-- Duplicate the table for data cleaning
SELECT * INTO Customer_Clean
FROM marketing_campaign;


SELECT * FROM Customer_Clean;

-- Converting data type of Dt_Customer column to Date type.
ALTER TABLE Customer_Clean
ADD EnrollmentDate Date;

UPDATE Customer_Clean
SET EnrollmentDate = CONVERT(Date, Enrollment_date);

ALTER TABLE Customer_Clean
DROP COLUMN Enrollment_Date;


-- Detect duplicate from dataset. There is no duplicate in this dataset.
WITH RowNum AS(SELECT *,
ROW_NUMBER() OVER (PARTITION BY Customer_ID, Year_Birth ORDER BY Customer_ID) as rn FROM Customer_Clean)
SELECT * FROM RowNum
WHERE rn > 1;


-- Check the number of missing values in Income.

SELECT Customer_ID, Income FROM Customer_Clean
WHERE Income = 0

-- Remove the missing value from Income. There is less than 5%, it is safe to drop those rows without significantly impacting the analysis.
DELETE FROM Customer_Clean
WHERE Income = 0;

-- Correct inconsistencies in column

UPDATE Customer_Clean
SET Education = CASE WHEN Education = 'Graduation' THEN 'Bachelor'
                     WHEN Education = '2n Cycle' THEN 'Secondary'
					 ELSE 'Primary' 
	            END 

UPDATE Customer_Clean
SET MaritalStatus = CASE WHEN MaritalStatus = 'Together' THEN 'Cohabiting'
                     WHEN MaritalStatus = 'Alone' THEN 'Single'
					 WHEN MaritalStatus = 'Married' THEN 'Married'
					 WHEN MaritalStatus  = 'Single' THEN 'Single'
					 WHEN MaritalStatus  = 'Divorced' THEN 'Divorced'
					 WHEN MaritalStatus  = 'Widow' THEN 'Widow'
					 ELSE 'None'
	            END; 

-- Check the number of unidentified maritalstatus.
SELECT Customer_id, Maritalstatus FROM Customer_Clean
WHERE Maritalstatus = 'None';

-- DELETE from dataset. There is less than 5%, it is safe to drop those rows without significantly impacting the analysis.
DELETE FROM Customer_Clean
WHERE Maritalstatus = 'None';


-- Remove Redundant Columns 
ALTER TABLE Customer_Clean
DROP COLUMN Contact, Revenue;


-- Create Age and Age_Group column
ALTER TABLE Customer_Clean
ADD Age INT, Age_Group VARCHAR(50);

UPDATE Customer_Clean
SET Age = 2010 - Year_Birth;

UPDATE Customer_Clean
SET Age_Group = CASE  WHEN Age <25 THEN 'Youth'
		              WHEN Age >= 25 AND Age <= 45 THEN 'Adult'
					  WHEN Age >=45 AND Age <60 THEN 'Middle_Aged'
					  ELSE 'Elderly'
					  END;
