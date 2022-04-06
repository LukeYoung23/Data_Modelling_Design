SELECT Account.Account_id, customer.Customer_name, customer.Customer_address, Account.Account_type, Account.Date_opened, Bank.Bank_address
FROM Account
INNER JOIN customer ON Account.Customer_id=customer.Customer_id
INNER JOIN Transaction_info ON Transaction_info.Account_id=Account.Account_id
INNER JOIN Bank ON Bank.Bank_id=Transaction_info.Bank_id;