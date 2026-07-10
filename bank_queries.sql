create database banking_case;
use banking_case;
show tables;
select * from customer;
SELECT COUNT(*) AS Total_Customers
FROM banking_case.customer;

SELECT *
FROM banking_case.customer
WHERE `Estimated Income` IS NULL
   OR `Bank Loans` IS NULL
   OR `Bank Deposits` IS NULL;

SELECT ROUND(AVG(Age),2) AS Average_Age
FROM banking_case.customer;

SELECT ROUND(AVG(`Estimated Income`),2) AS Average_Income
FROM banking_case.customer;

SELECT ROUND(SUM(`Bank Loans`),2) AS Total_Bank_Loans
FROM banking_case.customer;

SELECT ROUND(SUM(`Bank Deposits`),2) AS Total_Bank_Deposits
FROM banking_case.customer;

SELECT ROUND(AVG(`Credit Card Balance`),2) AS Average_CC_Balance
FROM banking_case.customer;

SELECT
GenderId,
COUNT(*) AS Total_Customers
FROM banking_case.customer
GROUP BY GenderId;

SELECT
Nationality,
COUNT(*) AS Customers
FROM banking_case.customer
GROUP BY Nationality
ORDER BY Customers DESC;

SELECT
Occupation,
COUNT(*) AS Customers
FROM banking_case.customer
GROUP BY Occupation
ORDER BY Customers DESC;

SELECT
Occupation,
ROUND(AVG(`Estimated Income`),2) AS Average_Income
FROM banking_case.customer
GROUP BY Occupation
ORDER BY Average_Income DESC;

SELECT
Occupation,
ROUND(SUM(`Bank Loans`),2) AS Total_Loans
FROM banking_case.customer
GROUP BY Occupation
ORDER BY Total_Loans DESC;

SELECT
Occupation,
ROUND(SUM(`Bank Deposits`),2) AS Total_Deposits
FROM banking_case.customer
GROUP BY Occupation
ORDER BY Total_Deposits DESC;

SELECT
`Risk Weighting`,
ROUND(AVG(`Estimated Income`),2) AS Average_Income
FROM banking_case.customer
GROUP BY `Risk Weighting`
ORDER BY `Risk Weighting`;

SELECT
`Risk Weighting`,
ROUND(SUM(`Bank Loans`),2) AS Total_Loans
FROM banking_case.customer
GROUP BY `Risk Weighting`
ORDER BY `Risk Weighting`;

SELECT
Name,
`Estimated Income`
FROM banking_case.customer
WHERE `Estimated Income` > 300000
ORDER BY `Estimated Income` DESC;

SELECT
ROUND(
SUM(`Bank Loans`) /
SUM(`Bank Deposits`),
2
) AS Loan_Deposit_Ratio
FROM banking_case.customer;

SELECT
Name,
`Estimated Income`,
CASE
WHEN `Estimated Income` < 100000 THEN 'Low'
WHEN `Estimated Income` < 300000 THEN 'Medium'
ELSE 'High'
END AS Income_Band
FROM banking_case.customer;

SELECT
Name,
`Risk Weighting`,
CASE
WHEN `Risk Weighting` <= 2 THEN 'Low Risk'
WHEN `Risk Weighting` = 3 THEN 'Medium Risk'
ELSE 'High Risk'
END AS Risk_Category
FROM banking_case.customer;

SELECT
YEAR(STR_TO_DATE(`Joined Bank`,'%d-%m-%Y')) AS Joining_Year,
COUNT(*) AS Total_Customers
FROM banking_case.customer
GROUP BY Joining_Year
ORDER BY Joining_Year;

SELECT
COUNT(*) AS Customers,
ROUND(AVG(`Estimated Income`),2) AS Avg_Income,
ROUND(SUM(`Bank Loans`),2) AS Total_Loans,
ROUND(SUM(`Bank Deposits`),2) AS Total_Deposits,
ROUND(AVG(`Risk Weighting`),2) AS Avg_Risk
FROM banking_case.customer;


