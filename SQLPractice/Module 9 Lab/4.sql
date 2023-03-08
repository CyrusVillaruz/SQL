UPDATE INVOICE
SET INV_SUBTOTAL = INV_SUMMARY.SUB_TOTAL
FROM INVOICE JOIN (SELECT INV_NUMBER, SUM(LINE_TOTAL) as SUB_TOTAL
                                       FROM LINE
                                       GROUP BY INV_NUMBER) as INV_SUMMARY
ON INVOICE.INV_NUMBER = INV_SUMMARY.INV_NUMBER;

-- This query sets the INV_SUBTOTAL column in the
-- INVOICE table to the sum of the LINE_TOTAL column
-- in the LINE table for each invoice. It then joins
-- the subquery's table with the invoice table using
-- their invoice numbers.