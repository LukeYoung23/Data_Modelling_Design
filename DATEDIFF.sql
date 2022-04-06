
SELECT transaction_info.[Purchase_id], transaction_info.[transaction_id], Purchase.[Purchase_date], transaction_info.[transaction_date], DATEDIFF (day, Purchase_date, transaction_date) as diff_in_days 
FROM Purchase, transaction_info 
WHERE Purchase.[Purchase_id] = transaction_info.[Purchase_id]

