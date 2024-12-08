BEGIN
    EXECUTE IMMEDIATE '
drop table orders
';
    EXECUTE IMMEDIATE '
drop table customers
';
    EXECUTE IMMEDIATE '
drop table products
';
    EXECUTE IMMEDIATE '
 create TABLE customers (
    customer_id           NUMBER NOT NULL PRIMARY KEY,
    customers_name        VARCHAR2(200 CHAR),
    customer_birth        date
)
';
    EXECUTE IMMEDIATE '
CREATE TABLE products (
    products_id         NUMBER NOT NULL PRIMARY KEY,
    product_name        VARCHAR2(200 CHAR),
    product_code        number, 
    product_description VARCHAR2(2000 CHAR)
)
';
    EXECUTE IMMEDIATE '
CREATE TABLE orders (
    order_id         NUMBER NOT NULL PRIMARY KEY,
    customer_id      number not null,
    product_id       number not null,
    quantity         number not null,
    order_date       date  not null,
    CONSTRAINT customer_id_fk FOREIGN KEY ( customer_id )
        REFERENCES customers(customer_id) ,
    CONSTRAINT product_id_fk FOREIGN KEY ( product_id )
        REFERENCES products(products_id)
) ';
END;