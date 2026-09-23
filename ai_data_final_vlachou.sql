DROP TABLE IF EXISTS walmart_sales;

CREATE TABLE walmart_sales (
    ID INT,
    Store INT,
    Date DATE,
    IsHoliday INT,
    Dept DECIMAL(10,1),
    Weekly_Sales DECIMAL(15, 2),
    Temperature TEXT,
    Fuel_Price TEXT,
    MarkDown1 TEXT,
    MarkDown2 TEXT,
    MarkDown3 TEXT,
    MarkDown4 TEXT,
    MarkDown5 TEXT,
    CPI TEXT,
    Unemployment TEXT,
    Extra_Type TEXT,
    Extra_Size TEXT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/walmart_sales.csv'
INTO TABLE walmart_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT *
FROM walmart_sales
WHERE Store = 1
  AND Dept BETWEEN 1 AND 20
  AND YEAR(Date) = 2012
  AND IsHoliday = 0;