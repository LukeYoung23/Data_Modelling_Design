INSERT INTO customer (Customer_name, Customer_email, Customer_password, Customer_address, Customer_other_details)
VALUES 
        ('John Smith', 'JohnSmith@gmail.com' , 'JohnSmith123' , '30 Crows Lane' , 'N/A'),
        ('Jack Jones', 'JackJones@gmail.com', 'JackJones123', '24 thoughts road', 'N/A'),
        ('Aaron Porter', 'AaronPorter@gmail.com', 'AaronPorter123', '69 Lichfield Road', 'N/A'),
        ('Chuk Wogozie', 'Chukwogozie@gmail.com', 'Chukwogozie123', '65 Africa Road', 'N/A'),
        ('Adam Davis', 'AdamDavis@gmail.com', 'Adamdavis123', '34 Woke Street', 'N/A');

INSERT INTO Merchant (Merchant_name, Merchant_email, Merhcant_other_details)
VALUES 
        ('Tesco', 'Tesco@gmail.com', '65 Tesco lane'),
        ('ALDI', 'ALDI@gmail.com', '12 Aldi lane'),
        ('LIDL', 'LIDL@gmail.com', '34 Lidl lane'),
        ('Co-op', 'Co-op@gmail.com', '62 Coop lane'),
        ('Londis', 'Londis@gmail.com', '72 Londis lane');

INSERT INTO Product (Merchant_id, Product_other_details)
VALUES 
        ('1','Oranges'),
        ('2','Peanut Butter'),
        ('3','Grapes'),
        ('4','Milk 4pints'),
        ('5','Cheese');

INSERT INTO Purchase (Purchase_date, Customer_id, Product_id, Purchase_quantity, purchase_other_details)
VALUES 
        ('02/01/2020', '1','1','4', 'N/A'),
        ('04/05/2008','2','2', '5', 'N/A'),
        ('03/01/2001','3','3', '6','N/A'),
        ('07/8/2019', '4','4','7', 'N/A'),
        ('11/12/2018', '5','5','12', 'N/A');

INSERT INTO Account (Customer_id, Account_type, Date_opened, Account_other_details)
VALUES 
        ('1','Debit', CAST('04/02/2020' as date), 'N/A'),
        ('2','Credit', CAST('06/01/2019' as date), 'N/A'),
        ('3','Savings', CAST('08/02/1998' as date), 'N/A'),
        ('4','HelpToBuy', CAST('11/12/2003' as date), 'N/A'),
        ('5','Debit', CAST('02/09/2015' as date), 'N/A');

INSERT INTO Bank (Bank_address, Bank_other_details)
VALUES 
        ('45 LLoyds Road', 'N/A'),
        ('54 Santander Lane', 'N/A'),
        ('12 Natwest Street', 'N/A'),
        ('18 Barclays Close', 'N/A'),
        ('78 TSB Park', 'N/A');

INSERT INTO Transaction_info (Purchase_id, Bank_id, Account_id, Transaction_date, Transaction_amount, Transaction_other_details)
VALUES 
        ('1','1','1',CAST('04/01/2020' as date), '56', '65 Tesco lane'),
        ('2','2','2',CAST('06/05/2008' as date), '67', '12 Aldi lane'),
        ('3','3','3',CAST('05/01/2001' as date), '78', '34 Lidl lane'),
        ('4','4','4',CAST('09/8/2019' as date), '89', '62 Coop lane'),
        ('5','5','5',CAST('11/12/2018' as date), '110', '72 Londis lane');