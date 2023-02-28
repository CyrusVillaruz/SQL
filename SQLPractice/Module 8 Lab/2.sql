SELECT MIN(CUS_BALANCE) AS 'Minimum Balance', MAX(CUS_BALANCE) AS 'Maximum Balance', AVG(CUS_BALANCE) AS 'Average Balance'
FROM CUSTOMER
WHERE CUS_CODE IN (
    SELECT DISTINCT CUS_CODE
    FROM INVOICE
    WHERE INV_DATE >= '2018-01-16' AND INV_DATE <= '2018-01-17'
    );