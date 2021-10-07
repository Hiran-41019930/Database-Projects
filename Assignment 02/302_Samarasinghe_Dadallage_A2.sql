
CREATE TABLE Customer (
  Customer_ID BIGINT,
  First_Name VARCHAR(30) NOT NULL,
  Last_Name VARCHAR(30) NOT NULL,
  Email VARCHAR(100) NOT NULL,
  Phone_Number VARCHAR(15) NOT NULL,
  PRIMARY KEY (Customer_ID)
);

CREATE TABLE Shipment(
  Shipping_Code CHAR(3),
  Shipping_Method VARCHAR(10) NOT NULL,
  Shipping_Terms INTEGER NOT NULL,
  Delivery_Date DATE NOT NULL,
  PRIMARY KEY (Shipping_Code)
);

CREATE TABLE Employee (
  Employee_ID BIGINT,
  First_Name VARCHAR(30) NOT NULL,
  Last_Name VARCHAR(30) NOT NULL,
  Job_Position VARCHAR(15),
  PRIMARY KEY (Employee_ID)
);

CREATE TABLE Invoice(
  Invoice_Number BIGINT,
  Customer_ID BIGINT,
  Date_Of_Purchase DATE NOT NULL,
  Due_Date DATE NOT NULL,
  Payment_Terms INTEGER NOT NULL,
  Shipping_Code CHAR(3),
  Employee_ID BIGINT,
  PRIMARY KEY (Invoice_Number),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
  FOREIGN KEY (Shipping_Code) REFERENCES Shipment(Shipping_Code),
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);


CREATE TABLE Province (
  Province_Code CHAR(2),
  Province_Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Province_Code)
);

CREATE TABLE Address (
  Address_Key BIGINT,
  Customer_ID BIGINT,
  Street_Address VARCHAR(100) NOT NULL,
  P_O_Box VARCHAR(10),
  Postal_Code CHAR(7)NOT NULL,
  Apartment INTEGER,
  City VARCHAR (50)NOT NULL,
  Province_Code CHAR(2),
  PRIMARY KEY (Address_Key),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
  FOREIGN KEY (Province_Code) REFERENCES Province(Province_Code)	
);


CREATE TABLE Invoice_Line (
  Product_Code CHAR(5),
  Inovice_Number BIGINT,
  Line_Price NUMERIC(15,2) NOT NULL,
  Quantity_Purchased INTEGER NOT NULL
);

CREATE TABLE Product (
  Product_Code CHAR(5),
  Product_Name VARCHAR(30) NOT NULL,
  Product_Price NUMERIC(15,2) NOT NULL,
  Product_QOH INTEGER NOT NULL,
  Product_Discount DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (Product_Code)
);








