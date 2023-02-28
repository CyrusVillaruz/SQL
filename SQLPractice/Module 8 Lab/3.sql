SELECT CUS_CODE, CUS_BALANCE
FROM CUSTOMER
WHERE CUS_CODE NOT IN (
    SELECT DISTINCT CUS_CODE
    FROM INVOICE
    WHERE INV_DATE >= '2018-01-16' AND INV_DATE <= '2018-01-17'
    )
ORDER BY CUS_CODE;
