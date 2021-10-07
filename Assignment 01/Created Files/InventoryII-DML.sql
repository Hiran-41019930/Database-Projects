-- InventoryII-DML.sql
-- script to populate Inventory Database
-- CST 8215


INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('USA', 'America', 850554133);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('IND', 'India', 127485654);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('EGY', 'Egypt', 248975302);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('BMU', 'Bermuda', 64893802);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('IDN', 'Indonesia', 36521870);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('HKG', 'Hong Kong', 54758296);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('NGA', 'Nigeria', 47896533);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('ESP', 'Spain', 64893802);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('RUS', 'Russian Federation', 1441450);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('MEX', 'Mexico', 1130753);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('DZA', 'Algeria', 404000);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('CHN', 'China', 1349000);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('CHL', 'Chile', 1800407);
INSERT INTO COUNTRY_T (Code, Cntry_Name, Cntry_Population) VALUES ('CAN', 'Canada', 3615587);


INSERT INTO Customer_T VALUES ('C001', 'Hiran', 'Samarasinghe', '613-720-4723', '1385 Woodroffe Ave', 'Ottawa'   ,'ON','K2G1V8', 100, 'CAN');
INSERT INTO Customer_T VALUES ('C002', 'Pasan', 'Samarasinghe', '111-727-4000', '1385 Woodroffe Ave', 'Ottawa'   ,'ON','K2G1V8', 50, 'CHN');
INSERT INTO Customer_T VALUES ('C003', 'Jack', 'Johnson', '420-250-4023', '1385 Woodroffe Ave', 'Ottawa'   ,'ON','K2G1V8', 200, 'USA');
INSERT INTO Customer_T VALUES ('C004', 'Mohamed', 'Rezk', '660-120-2723', '854 Younge Street' , 'Toronto'  ,'ON','K2G1V8', 275, 'EGY');
INSERT INTO Customer_T VALUES ('C005', 'John', 'Wick', '847-717-6853', '264 Main Street'   , 'Kitchener','ON','K2G1V8', 500, 'BMU');
INSERT INTO Customer_T VALUES ('C006', 'Karnav', 'Pinchal', '027-317-7123', '357 Rue Catherine' , 'Montreal' ,'ON','K2G1V8', 0, 'IND');


INSERT INTO Invoice_T VALUES ('I23001', 'C001', '2011-02-15');
INSERT INTO Invoice_T VALUES ('I23002', 'C001', '2011-04-25');
INSERT INTO Invoice_T VALUES ('I23003', 'C004', '2011-06-12');
INSERT INTO Invoice_T VALUES ('I23004', 'C002', '2011-07-08');
INSERT INTO Invoice_T VALUES ('I23005', 'C005', '2011-08-24');
INSERT INTO Invoice_T VALUES ('I23006', 'C006', '2011-09-07');
INSERT INTO Invoice_T VALUES ('I23007', 'C006', '2010-12-28');
INSERT INTO Invoice_T VALUES ('I23008', 'C006', '2011-12-15');


INSERT INTO Product_T VALUES ('P2011', 'Compac Presario', '2011-02-14', 20, 5, 499.99, 0, 'USA');
INSERT INTO Product_T VALUES ('P2012', 'HP laptop', '2010-09-25', 40, 5, 529.99, 0, 'RUS');
INSERT INTO Product_T VALUES ('P2013', 'Samsung LCD', '2010-02-15', 22, 8, 329.99, 0,'CAN');
INSERT INTO Product_T VALUES ('P2014', 'Brother Network All-In-One Laser Printer', '2010-10-10', 50, 10, 159.99, 0, 'CHN');
INSERT INTO Product_T VALUES ('P2015', 'Western Digital External Hard drive', '2010-04-08', 30, 10, 149.99, NULL, 'IDN');
INSERT INTO Product_T VALUES ('P2016', 'Apple iPad 2 with Wi-Fi + 3G', '2011-02-23', 90, 200, 849.00, 0, 'IND');
INSERT INTO Product_T VALUES ('P2017', 'iPAD 2 Smart Cover', '2011-02-14', 70, 10, 45.00, 10, 'HKG');


INSERT INTO Invoice_Line_T VALUES ('I23001', 1, 'P2011', 1, 650.75); 
INSERT INTO Invoice_Line_T VALUES ('I23001', 2, 'P2014', 3, 159.99);
INSERT INTO Invoice_Line_T VALUES ('I23002', 1, 'P2012', 1, 529.99);
INSERT INTO Invoice_Line_T VALUES ('I23003', 1, 'P2015', 3, 140.75);
INSERT INTO Invoice_Line_T VALUES ('I23004', 1, 'P2014', 1, 159.99);
INSERT INTO Invoice_Line_T VALUES ('I23005', 1, 'P2016', 1, 798.99);
INSERT INTO Invoice_Line_T VALUES ('I23006', 1, 'P2011', 1, 499.99);
INSERT INTO Invoice_Line_T VALUES ('I23007', 1, 'P2012', 1, 529.99);
INSERT INTO Invoice_Line_T VALUES ('I23008', 1, 'P2016', 3, 689.00);
INSERT INTO Invoice_Line_T VALUES ('I23008', 2, 'P2017', 3, 35.99);


INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (81, 'As Saddah', 'HKG', 25603449);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (62, 'Toronnto', 'CAN', 61571726);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (43, 'New York', 'USA', 26775478);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (41, 'Sindangraja', 'IDN', 51280902);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (82, 'Delhi', 'IND', 48573832);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (28, 'Sinarbakti', 'IDN', 73346138);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (57, 'Nangkasari', 'IDN', 79118138);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (15, 'Nürnberg', 'NGA', 81990154);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (20, 'Cairo', 'EGY', 62420380);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (99, 'Stod', 'EGY', 56664160);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (44, 'Kademangan', 'IDN', 54646386);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (37, 'Dugulubgey', 'RUS', 43189614);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (88, 'Cácota', 'NGA', 30039756);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (45, 'Čair', 'MEX', 70461927);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (51, 'Businga', 'HKG', 26484818);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (17, 'Shreveport', 'USA', 45336630);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (16, 'Makale', 'IDN', 54248106);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (71, 'Pasadena', 'USA', 36873958);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (52, 'Lysekil', 'CHL', 20625910);
INSERT INTO City_T (City_ID, City_Name, Cntry_Code, City_Population) values (98, 'Nanhai', 'CAN', 66881083);


-- eof: Inventory-DML.sql
