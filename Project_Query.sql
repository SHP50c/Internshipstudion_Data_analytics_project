CREATE database RetailSalesData;
USE RetailsalesData;

CREATE TABLE Sales_Data_Transactions (
customer_id VARCHAR(255),
trans_date VARCHAR(255),
trans_amount INT
);

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transactions
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

CREATE TABLE Sales_Data_Response (
customer_id VARCHAR(255) PRIMARY KEY,
response INT
);

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Response.csv'
INTO TABLE Sales_Data_Response
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

EXPLAIN SELECT * FROM Sales_Data_Transactions WHERE customer_id='C55295';

CREATE INDEX idx_id ON Sales_Data_Transactions(customer_id);

EXPLAIN SELECT * FROM Sales_Data_Transactions WHERE customer_id='C55295';