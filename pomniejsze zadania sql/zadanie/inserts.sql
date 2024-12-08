BEGIN
    EXECUTE IMMEDIATE '
    DELETE FROM ORDERS
    ';
    EXECUTE IMMEDIATE '
    DELETE FROM PRODUCTS
   ';
   EXECUTE IMMEDIATE '
    DELETE FROM Customers
    ';
   
    
    EXECUTE IMMEDIATE 'insert into customers (CUSTOMER_ID,CUSTOMERS_Name,CUSTOMER_BIRTH) values (1,''Marcel Kolinka'',to_date(''24.09.2005'',''dd.mm.rrrr''))'; 
	EXECUTE IMMEDIATE 'insert into customers (CUSTOMER_ID,CUSTOMERS_Name,CUSTOMER_BIRTH) values (2,''Jeremi Kolinka'',to_date(''24.09.2005'',''dd.mm.rrrr''))'; 
	EXECUTE IMMEDIATE 'insert into customers (CUSTOMER_ID,CUSTOMERS_Name,CUSTOMER_BIRTH) values (3,''Beniamin Kolinka'',to_date(''06.01.1999'',''dd.mm.rrrr'')) '; 
	EXECUTE IMMEDIATE 'insert into customers (CUSTOMER_ID,CUSTOMERS_Name,CUSTOMER_BIRTH) values (4,''Natalia Kolinka'',to_date(''5.03.2000'',''dd.mm.rrrr''))'; 
	EXECUTE IMMEDIATE 'insert into customers (CUSTOMER_ID,CUSTOMERS_Name,CUSTOMER_BIRTH) values (5,''Eryk Andrzejak'',to_date(''30.03.2005'',''dd.mm.rrrr'')) '; 
	EXECUTE IMMEDIATE 'insert into customers (CUSTOMER_ID,CUSTOMERS_Name,CUSTOMER_BIRTH) values (6,''Wiktor Stradomski'',to_date(''27.04.2005'',''dd.mm.rrrr'')) '; 
	EXECUTE IMMEDIATE 'insert into customers (CUSTOMER_ID,CUSTOMERS_Name,CUSTOMER_BIRTH) values (7,''Milosz bronecki'',to_date(''22.03.2005'',''dd.mm.rrrr''))'; 
	EXECUTE IMMEDIATE 'insert into customers (CUSTOMER_ID,CUSTOMERS_Name,CUSTOMER_BIRTH) values (8,''Stanislaw dudkiewicz'',to_date(''5.06.2005'',''dd.mm.rrrr'')) '; 
	EXECUTE IMMEDIATE 'insert into customers (CUSTOMER_ID,CUSTOMERS_Name,CUSTOMER_BIRTH) values (9,''Marcelina Lewicka'',to_date(''23.04.2004'',''dd.mm.rrrr''))'; 
	EXECUTE IMMEDIATE 'insert into customers (CUSTOMER_ID,CUSTOMERS_Name,CUSTOMER_BIRTH) values (10,''Oliwka Wosiek'',to_date(''2.01.2006'',''dd.mm.rrrr''))'; 
	EXECUTE IMMEDIATE 'insert into customers (CUSTOMER_ID,CUSTOMERS_Name,CUSTOMER_BIRTH) values (11,''Daniel Dziedziczak'',to_date(''23.12.2005'',''dd.mm.rrrr''))'; 
commit;
    


	
    EXECUTE IMMEDIATE ' insert into PRODUCTS (PRODUCTS_ID,PRODUCT_NAME,PRODUCT_CODE,PROCUST_DESCRIPTION) values (1,''Komputer'',3463,''PC_do_grania'')';
	EXECUTE IMMEDIATE ' insert into PRODUCTS (PRODUCTS_ID,PRODUCT_NAME,PRODUCT_CODE,PROCUST_DESCRIPTION) values (2,''Talisman'',2763,''Talisman_gra_planszowa'')';
	EXECUTE IMMEDIATE ' insert into PRODUCTS (PRODUCTS_ID,PRODUCT_NAME,PRODUCT_CODE,PROCUST_DESCRIPTION) values (3,''Samsung'',3382,''Telefon_samsung_A20'')';
	EXECUTE IMMEDIATE 'insert into PRODUCTS (PRODUCTS_ID,PRODUCT_NAME,PRODUCT_CODE,PROCUST_DESCRIPTION) values (4,''Iphone'',7593,''Iphone_telefon_od_apple_nowy'')';
	EXECUTE IMMEDIATE 'insert into PRODUCTS (PRODUCTS_ID,PRODUCT_NAME,PRODUCT_CODE,PROCUST_DESCRIPTION) values (5,''Buty'',3453,''Buty_adidas'')';
	EXECUTE IMMEDIATE ' insert into PRODUCTS (PRODUCTS_ID,PRODUCT_NAME,PRODUCT_CODE,PROCUST_DESCRIPTION) values (6,''Ochraniacze'',9532,''Ochraniacze_do_gry_w_pilke nozna'')';
	EXECUTE IMMEDIATE 'insert into PRODUCTS (PRODUCTS_ID,PRODUCT_NAME,PRODUCT_CODE,PROCUST_DESCRIPTION) values (7,''Spray'',4233,''Spray_na_komary'')';
	EXECUTE IMMEDIATE 'insert into PRODUCTS (PRODUCTS_ID,PRODUCT_NAME,PRODUCT_CODE,PROCUST_DESCRIPTION) values (8,''Miecz'',6453,''miecz_sredniowieczny'')';
	EXECUTE IMMEDIATE 'insert into PRODUCTS (PRODUCTS_ID,PRODUCT_NAME,PRODUCT_CODE,PROCUST_DESCRIPTION) values (9,''Luk'',7532,''Luk_do_strzelania'')';
	EXECUTE IMMEDIATE 'insert into PRODUCTS (PRODUCTS_ID,PRODUCT_NAME,PRODUCT_CODE,PROCUST_DESCRIPTION) values (10,''siodlo'',6256,''siodlo_do_konia'')';
	EXECUTE IMMEDIATE 'insert into PRODUCTS (PRODUCTS_ID,PRODUCT_NAME,PRODUCT_CODE,PROCUST_DESCRIPTION) values (11,''uprzez'',3621,''uprzez_dla_konia'')';
	commit;
    


    
    
    EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (1,2,5,1,to_date(''23.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (2,1,1,1,to_date(''23.07.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (3,3,3,1,to_date(''21.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (4,4,6,1,to_date(''27.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (5,1,4,2,to_date(''24.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (6,2,7,1,to_date(''27.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (7,2,2,1,to_date(''21.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (8,6,1,6,to_date(''29.06.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (9,7,8,1,to_date(''19.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (10,9,5,1,to_date(''23.05.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (11,11,10,1,to_date(''28.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (12,10,11,2,to_date(''12.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (13,8,7,35,to_date(''13.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (14,5,4,1,to_date(''16.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (15,2,2,1,to_date(''15.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (16,7,9,1,to_date(''19.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (17,6,10,1,to_date(''20.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (18,5,11,1,to_date(''01.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (19,4,4,1,to_date(''04.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (20,3,3,1,to_date(''29.07.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (21,2,5,1,to_date(''25.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (22,1,2,1,to_date(''18.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (23,1,1,1,to_date(''14.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (24,8,6,4,to_date(''17.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (25,9,4,1,to_date(''18.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (26,11,3,1,to_date(''06.08.2022'',''dd.mm.rrrr''))';
	EXECUTE IMMEDIATE 'insert into ORDERS (ORDER_ID,CUSTOMER_ID,PRODUCT_ID, QUANTITY,ORDER_DATE) values (27,6,5,1,to_date(''09.08.2022'',''dd.mm.rrrr''))';
	commit;
    END;