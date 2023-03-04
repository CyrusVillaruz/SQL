SELECT SUM(INVOICE_COUNT) AS "Total Invoices",
ROUND(SUM(Total_Purchases),2) AS "Total Sales",
ROUND(MIN(Total_Purchases),2) AS "Minimum Customer Purchases",
ROUND(MAX(Total_Purchases),2) AS "Largest Customer Purchases",
ROUND(AVG(Total_Purchases),2) AS "Average Customer Purchases"
FROM (SELECT COUNT(DISTINCT INVOICE.INV_NUMBER) AS INVOICE_COUNT,
      SUM(LINE_UNITS * LINE_PRICE) AS Total_Purchases FROM INVOICE
      JOIN LINE ON INVOICE.INV_NUMBER = LINE.Inv_Number
      GROUP BY CUS_CODE)
AS Customer_Purchases_details;

-- SELECT SUM(INVOICE_COUNT) AS "Total Invoices",
-- ROUND(SUM(Total_Purchases), 2) AS "Total Sales",
-- ROUND(MIN(Total_Purchases), 2) AS "Minimum Customer Purchases",
-- ROUND(MAX(Total_Purchases), 2) AS "Largest Customer Purchases",
-- ROUND(AVG(Total_Purchases), 2) AS "Average Customer Purchases"
-- FROM
-- (SELECT CUS_CODE,
--         (SELECT COUNT(DISTINCT INV_NUMBER) FROM INVOICE WHERE CUS_CODE = Customer_Purchases_details.CUS_CODE) AS INVOICE_COUNT,
--         (SELECT SUM(LINE_UNITS * LINE_PRICE) FROM LINE WHERE INV_NUMBER IN (SELECT INV_NUMBER FROM INVOICE WHERE CUS_CODE = Customer_Purchases_details.CUS_CODE)) AS Total_Purchases
--     FROM (SELECT DISTINCT CUS_CODE FROM INVOICE) AS Customer_Purchases_details
-- ) AS Customer_Purchases_summary;
