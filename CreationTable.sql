-- Creation of tables with their constraint

-- customer information table 
CREATE TABLE CUSTOMERS_STORE (
    customer# number(2) PRIMARY KEY,
    LastName varchar(20) NOT NULL,
    FirstName varchar(20) NOT NULL ,
    Mail varchar(30) NOT NULL UNIQUE,
    Address varchar(20),
    City varchar(20),
    State varchar (2),
    ZipCode varchar(6),
    PhoneNumber number(10) NOT NULL UNIQUE,
    age number(2) NOT NULL,
    CONSTRAINT CHECK_AGE CHECK (age > 18)
);

-- Employee information table
CREATE TABLE EMPLOYEE_STORE(
    employee# number(4) PRIMARY KEY,
    LastName varchar(20) NOT NULL,
    FirstName varchar(20) NOT NULL ,
    Mail varchar(30) NOT NULL UNIQUE,
    Address varchar(20),
    City varchar(20),
    State varchar (2),
    ZipCode varchar(6),
    PhoneNumber number(10) NOT NULL UNIQUE,
    salary numbr(6,2) NOT NULL
);

-- Shipments information 
CREATE TABLE SHIPMENT_STORE(
    shipment# number(3) PRIMARY KEY,
    shipDate date NOT NULL,
    shipStreet varchar(20) NOT NULL,
    shipCity varchar(20) NOT NULL,
    shipState varchar (2) NOT NULL,
    shipZipCode varchar(6) NOT NULL,
    shipCost number (4,2) NOT NULL
)

-- Orders made by customers
CREATE TABLE ORDERS_STORE(
    order# number(4) PRIMARY KEY,
    orderDate date NOT NULL,
    customer# number(4),
    employee# number(4),
    shipment# number(3),
    CONSTRAINT FK_CUSTOMER FOREIGN KEY (customer#) REFERENCES CUSTOMERS_STORE(customer#),
    CONSTRAINT FK_EMPLOYEE FOREIGN KEY (employee#) REFERENCES EMPLOYEE_STORE(employee#),
    CONSTRAINT FK_SHIPMENT FOREIGN KEY (shipment#) REFERENCES SHIPMENT_STORE(shipment#)
);

-- Items in our store
CREATE TABLE ITEMS_STORE(
    item# number(4) PRIMARY KEY,
    itemName varchar(20) NOT NULL,
    color varchar(10) NOT NULL,
    cost number(5,2) NOT NULL,
    retail number(5,2) NOT NULL,
    stock number(4)
    CONSTRAINT CHECK_COST CHECK (cost > retail)
)

-- Items ordered in each order by the customer
CREATE TABLE ORDER_ITEMS_STORE(
    orderItems number(4) PRIMARY KEY,
    order# number(4),
    item# number(4),
    costEach number(5,2),
    quantity number(2),
    CONSTRAINT FK_ORDER FOREIGN KEY (order#) REFERENCES ORDERS_STORE(order#),
    CONSTRAINT FK_ITEM FOREIGN KEY (item#) REFERENCES ITEMS_STORE(item#),
    CONSTRAINT CHECK_QUANTITY CHECK (quantity > 0)
)

