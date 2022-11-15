
CREATE TABLE Annual_Sales (
    id varchar(10) NOT NULL,
    year int NOT NULL,
    amount int NOT NULL,
    Product_id varchar(10) NOT NULL,
    CONSTRAINT Annual_Sales_pk PRIMARY KEY (id)
);


CREATE TABLE Branch (
    id varchar(10) NOT NULL,
    name varchar(30) NOT NULL,
    location varchar(30) NOT NULL,
    Product_id varchar(10) NOT NULL,
    CONSTRAINT Branch_pk PRIMARY KEY (id)
);


CREATE TABLE Category (
    id varchar(10) NOT NULL,
    name varchar(30) NOT NULL,
    description varchar(200) NOT NULL,
    CONSTRAINT Category_pk PRIMARY KEY (id)
);


CREATE TABLE Person (
    id varchar(10) NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    phone varchar(10) NOT NULL,
    Branch_id varchar(10) NOT NULL,
    CONSTRAINT Person_pk PRIMARY KEY (id)
);


CREATE TABLE Product (
    id varchar(10) NOT NULL,
    name varchar(30) NOT NULL,
    cost int NOT NULL,
    Category_id varchar(10) NOT NULL,
    CONSTRAINT Product_pk PRIMARY KEY (id)
);


-- Reference: Annual_Sales_Product (table: Annual_Sales)
ALTER TABLE Annual_Sales ADD CONSTRAINT Annual_Sales_Product FOREIGN KEY Annual_Sales_Product (Product_id)
    REFERENCES Product (id);

-- Reference: Branch_Product (table: Branch)
ALTER TABLE Branch ADD CONSTRAINT Branch_Product FOREIGN KEY Branch_Product (Product_id)
    REFERENCES Product (id);

-- Reference: Person_Branch (table: Person)
ALTER TABLE Person ADD CONSTRAINT Person_Branch FOREIGN KEY Person_Branch (Branch_id)
    REFERENCES Branch (id);

-- Reference: Product_Category (table: Product)
ALTER TABLE Product ADD CONSTRAINT Product_Category FOREIGN KEY Product_Category (Category_id)
    REFERENCES Category (id);


