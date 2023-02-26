-- Invoice table starts at 2017

SELECT DISTINCT cust_fname, cust_lname, cust_street, cust_city, cust_state, cust_zip
FROM lgcustomer
JOIN lginvoice on lgcustomer.cust_code = lginvoice.cust_code
JOIN lgline ON LGINVOICE.inv_num = lgline.inv_num
JOIN lgproduct ON LGLINE.prod_sku = lgproduct.prod_sku
JOIN lgbrand ON LGPRODUCT.brand_id = lgbrand.brand_id
WHERE lgbrand.brand_name = 'Foresters Best'
AND lginvoice.inv_date BETWEEN '2017-07-15' AND '2017-07-31'
ORDER BY cust_state, cust_lname, cust_fname;