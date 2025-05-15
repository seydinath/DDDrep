CREATE TABLE
    Product (
        Product_id VARCHAR(20) CONSTRAINT cont_prod PRIMARY KEY,
        Product_name VARCHAR(20) CONSTRAINT cont_prod NOT NULL,
        Price Number CONSTRAINT cont_price CHECK (Price > 0),
    );



CREATE TABLE
    Costumers (
        Costumer_id VARCHAR(20) CONSTRAINT pk_cost PRIMARY KEY,
        Costumer_name VARCHAR(20) CONSTRAINT cont_cost NOT NULL,
        Costumer_tel NUMBER CONSTRAINT cont_tel,
    );



CREATE TABLE
    Orders (
        Customer_id VARCHAR(20) CONSTRAINT pk_order PRIMARY KEY,
        Product_id VARCHAR (20),
        Quantity NUMBER,
        Total_amount NUMBER,
        CONSTRAINT fk_customer FOREIGN KEY (Customer_id) REFERENCES Customers (Customer_id),
        CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES Product (Product_id)
    );


ALTER TABLE Product ADD COLUMN Category VARCHAR(20);

ALTER TABLE Orders ADD COLUMN Order_date DATETIME DEFAULT CURRENT_TIMESTAMP;