-- Inserting information to each table 
INSERT INTO CUSTOMERS_STORE VALUES(1,'helmet','jhoe','jhoe123@gmail.com','st 567 north','toronto','ON','6B38C7',3137919518,20);
INSERT INTO CUSTOMERS_STORE VALUES(2,'roy','silvia','silviaroy75@yahoo.com','st 34 BC south','toronto','ON','2T31X2',3045898579,25);
INSERT INTO CUSTOMERS_STORE(CUSTOMER#,LASTNAME,FIRSTNAME,MAIL,PHONENUMBER,AGE) VALUES(3,'lee','dante','lee20@gmail.com',3189952345,45);
INSERT INTO CUSTOMERS_STORE VALUES(4,'jhonson','thomas','thomas2022@outlook.com','st 17 west ','mississauga','ON','A1W9L2',3045602189,33);
INSERT INTO CUSTOMERS_STORE(CUSTOMER#,LASTNAME,FIRSTNAME,MAIL,PHONENUMBER,AGE)  VALUES(5,'anthony','davis','anthony999@hotmail.com',3178904762,52);


INSERT INTO EMPLOYEE_STORE VALUES(100,'brown','sophie','sophiebrown123@gmail.com','st 45 north','toronto','ON','7K90D3',3049906755,2500);
INSERT INTO EMPLOYEE_STORE(EMPLOYEE#,LASTNAME,FIRSTNAME,MAIL,PHONENUMBER) VALUES(101,'smith','emily','smith1990@hotmail.com',3175337800,3000);
INSERT INTO EMPLOYEE_STORE VALUES(102,'trembley','jackson','jtrembley34@gmail.com','st 22 east','missisauga','ON','2Q53F0',3701786766,1800);
INSERT INTO EMPLOYEE_STORE(EMPLOYEE#,LASTNAME,FIRSTNAME,MAIL,PHONENUMBER) VALUES(103,'taylor','jhonny','jhonnyt505@yahoo.com',3208036647,2250);
INSERT INTO EMPLOYEE_STORE VALUES(104,'anderson','logan','logan2022@outlook.com','st 98 west','toronto','ON','7P39N6',3146579027,3500);

INSERT INTO SHIPMENT_STORE VALUES(101,'16-08-2022','st 567 north','toronto','ON','6B38C7',8.00);
INSERT INTO SHIPMENT_STORE VALUES(102,'09-07-2022','st 17 west ','mississauga','ON','A1W9L2',22.50);
INSERT INTO SHIPMENT_STORE VALUES(103,'16-06-2022','st 34 BC south','toronto','ON','2T31X2',5.25);
INSERT INTO SHIPMENT_STORE VALUES(104,'27-07-2022','st 99 west-north','montreal','QC','5M43W4',30.00);
INSERT INTO SHIPMENT_STORE VALUES(105,'22-08-2022','st 257 east','quebec','QC','8X68H9',30.00);

INSERT INTO ORDERS_STORE VALUES(1001,'10-08-2022',1,102,101);
INSERT INTO ORDERS_STORE VALUES(1002,'01-07-2022',2,101,102);
INSERT INTO ORDERS_STORE VALUES(1003,'10-06-2022',4,100,103);
INSERT INTO ORDERS_STORE VALUES(1004,'15-07-2022',3,102,104);
INSERT INTO ORDERS_STORE VALUES(1005,'09-08-2022',5,104,105);

INSERT INTO ITEMS_STORE VALUES (987,'t-shirt','blue light',23.40,48.99,10);
INSERT INTO ITEMS_STORE VALUES (457,'pant','black',33.00,70.99,5);
INSERT INTO ITEMS_STORE VALUES (378,'jordan 4','white oreo',120.50,300.00,2);
INSERT INTO ITEMS_STORE VALUES (190,'jean','white',47.80,90.00,20);
INSERT INTO ITEMS_STORE VALUES (230,'cap','red',10.00,25.99,10);

INSERT INTO ORDER_ITEMS_STORE VALUES(100,1001,457,70.99,2);
INSERT INTO ORDER_ITEMS_STORE VALUES(101,1001,987,48.99,1);
INSERT INTO ORDER_ITEMS_STORE VALUES(102,1002,378,300.00,1);
INSERT INTO ORDER_ITEMS_STORE VALUES(103,1003,230,25.99,3);
INSERT INTO ORDER_ITEMS_STORE VALUES(104,1003,190,90.00,1);
INSERT INTO ORDER_ITEMS_STORE VALUES(105,1004,987,48.99,2);
INSERT INTO ORDER_ITEMS_STORE VALUES(106,1005,190,90.00,3);