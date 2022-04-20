-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-10-28 23:29:59.935

-- tables
-- Table: address
CREATE TABLE address (
    address_id int  NOT NULL,
    address varchar(100)  NOT NULL,
    number_house varchar(50)  NOT NULL,
    reference varchar(200)  NOT NULL,
    status int  NOT NULL,
    tx_id int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_user_id int  NOT NULL,
    tx_date timestamp  NOT NULL,
    CONSTRAINT address_pk PRIMARY KEY (address_id)
);

-- Table: card
CREATE TABLE card (
    card_id int  NOT NULL,
    user_id int  NOT NULL,
    card_name varchar(20)  NOT NULL,
    card_number int  NOT NULL,
    expiration_year int  NOT NULL,
    expiration_month int  NOT NULL,
    CVC int  NOT NULL,
    creation_date date  NOT NULL,
    status int  NOT NULL,
    tx_id int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_user_id int  NOT NULL,
    tx_date timestamp  NOT NULL,
    CONSTRAINT card_pk PRIMARY KEY (card_id)
);

-- Table: cart
CREATE TABLE cart (
    cart_id int  NOT NULL,
    product_id int  NOT NULL,
    costo_total numeric(10,4)  NOT NULL,
    CONSTRAINT cart_pk PRIMARY KEY (cart_id)
);

-- Table: categoria
CREATE TABLE categoria (
    categoria_id int  NOT NULL,
    nombre varchar(50)  NOT NULL,
    status boolean  NOT NULL,
    CONSTRAINT categoria_pk PRIMARY KEY (categoria_id)
);

-- Table: h_card
CREATE TABLE h_card (
    h_card_id int  NOT NULL,
    card_id int  NOT NULL,
    user_id int  NOT NULL,
    card_name varchar(20)  NOT NULL,
    card_number int  NOT NULL,
    expiration_year int  NOT NULL,
    expiration_month int  NOT NULL,
    CVC int  NOT NULL,
    creation_date date  NOT NULL,
    status int  NOT NULL,
    tx_id int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_user_id int  NOT NULL,
    tx_date timestamp  NOT NULL,
    CONSTRAINT h_card_pk PRIMARY KEY (h_card_id)
);

-- Table: h_payment
CREATE TABLE h_payment (
    h_payment_id int  NOT NULL,
    payment_id int  NOT NULL,
    user_id int  NOT NULL,
    product_id int  NOT NULL,
    card_id int  NOT NULL,
    address_id int  NOT NULL,
    buy_date date  NOT NULL,
    status int  NOT NULL,
    tx_id int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_user_id int  NOT NULL,
    tx_date timestamp  NOT NULL,
    CONSTRAINT h_payment_pk PRIMARY KEY (h_payment_id)
);

-- Table: h_user
CREATE TABLE h_user (
    h_user_id int  NOT NULL,
    user_id int  NOT NULL,
    name varchar(50)  NOT NULL,
    lastname varchar(50)  NOT NULL,
    email varchar(60)  NOT NULL,
    cellphone varchar(20)  NOT NULL,
    telephone varchar(20)  NOT NULL,
    username varchar(50)  NOT NULL,
    password varchar(30)  NOT NULL,
    status int  NOT NULL,
    tx_id int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_user_id int  NOT NULL,
    tx_date timestamp  NOT NULL,
    CONSTRAINT h_user_pk PRIMARY KEY (h_user_id)
);

-- Table: media
CREATE TABLE media (
    media_id int  NOT NULL,
    product_id int  NOT NULL,
    url varchar  NOT NULL,
    type int  NOT NULL,
    creation_date date  NOT NULL,
    status int  NOT NULL,
    tx_id int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_user_id int  NOT NULL,
    tx_date timestamp  NOT NULL,
    CONSTRAINT media_pk PRIMARY KEY (media_id)
);

-- Table: notification
CREATE TABLE notification (
    notification_id int  NOT NULL,
    user_id int  NOT NULL,
    product_id int  NOT NULL,
    title varchar(20)  NOT NULL,
    message varchar(50)  NOT NULL,
    date timestamp  NOT NULL,
    status int  NOT NULL,
    tx_id int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_user_id int  NOT NULL,
    tx_date timestamp  NOT NULL,
    CONSTRAINT notification_pk PRIMARY KEY (notification_id)
);

-- Table: order
CREATE TABLE "order" (
    order_id int  NOT NULL,
    product_id int  NOT NULL,
    user_id int  NOT NULL,
    order_status_status_id int  NOT NULL,
    cantidad int  NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY (order_id)
);

-- Table: order_status
CREATE TABLE order_status (
    status_id int  NOT NULL,
    nombre varchar(100)  NOT NULL,
    CONSTRAINT order_status_pk PRIMARY KEY (status_id)
);

-- Table: payment
CREATE TABLE payment (
    payment_id int  NOT NULL,
    user_id int  NOT NULL,
    product_id int  NOT NULL,
    card_id int  NOT NULL,
    address_id int  NOT NULL,
    buy_date date  NOT NULL,
    status int  NOT NULL,
    tx_id int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_user_id int  NOT NULL,
    tx_date timestamp  NOT NULL,
    CONSTRAINT payment_pk PRIMARY KEY (payment_id)
);

-- Table: product
CREATE TABLE product (
    product_id int  NOT NULL,
    product_name varchar(100)  NOT NULL,
    details varchar(100)  NOT NULL,
    size varchar(20)  NOT NULL,
    stock int  NOT NULL,
    color varchar(50)  NOT NULL,
    quantity int  NOT NULL,
    cost_product numeric(10,4)  NOT NULL,
    status boolean  NOT NULL,
    tx_id int  NULL,
    tx_host varchar(100)  NULL,
    tx_user_id int  NULL,
    tx_date timestamp  NULL,
    categoria_categoria_id int  NOT NULL,
    CONSTRAINT product_pk PRIMARY KEY (product_id)
);

-- Table: product_type
CREATE TABLE product_type (
    product_type_id int  NOT NULL,
    product_id int  NOT NULL,
    type_id int  NOT NULL,
    CONSTRAINT product_type_pk PRIMARY KEY (product_type_id)
);

-- Table: receipt
CREATE TABLE receipt (
    receipt_id int  NOT NULL,
    cart_id int  NOT NULL,
    product_id int  NOT NULL,
    user_id int  NOT NULL,
    card_id int  NOT NULL,
    date date  NOT NULL,
    CONSTRAINT receipt_pk PRIMARY KEY (receipt_id)
);

-- Table: rol
CREATE TABLE rol (
    rol_id int  NOT NULL,
    name_rol varchar(50)  NOT NULL,
    CONSTRAINT rol_pk PRIMARY KEY (rol_id)
);

-- Table: transaction
CREATE TABLE transaction (
    tx_id int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_user_ud int  NOT NULL,
    tx_date timestamp  NOT NULL,
    CONSTRAINT transaction_pk PRIMARY KEY (tx_id)
);

-- Table: type
CREATE TABLE type (
    type_id int  NOT NULL,
    type_name varchar(50)  NOT NULL,
    status int  NOT NULL,
    tx_id int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_user_id int  NOT NULL,
    tx_date timestamp  NOT NULL,
    CONSTRAINT type_pk PRIMARY KEY (type_id)
);

-- Table: user
CREATE TABLE "user" (
    user_id int  NOT NULL,
    rol_id int  NOT NULL,
    name varchar(50)  NOT NULL,
    lastname varchar(50)  NOT NULL,
    email varchar(60)  NOT NULL,
    cellphone varchar(20)  NOT NULL,
    telephone varchar(20)  NOT NULL,
    username varchar(50)  NOT NULL,
    password varchar(30)  NOT NULL,
    status int  NOT NULL,
    rol varchar(20)  NOT NULL,
    CONSTRAINT user_pk PRIMARY KEY (user_id)
);

-- foreign keys
-- Reference: bill_address (table: payment)
ALTER TABLE payment ADD CONSTRAINT bill_address
    FOREIGN KEY (address_id)
    REFERENCES address (address_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: bill_card (table: payment)
ALTER TABLE payment ADD CONSTRAINT bill_card
    FOREIGN KEY (card_id)
    REFERENCES card (card_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: bill_product (table: payment)
ALTER TABLE payment ADD CONSTRAINT bill_product
    FOREIGN KEY (product_id)
    REFERENCES product (product_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: bill_user (table: payment)
ALTER TABLE payment ADD CONSTRAINT bill_user
    FOREIGN KEY (user_id)
    REFERENCES "user" (user_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: card_user (table: card)
ALTER TABLE card ADD CONSTRAINT card_user
    FOREIGN KEY (user_id)
    REFERENCES "user" (user_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: cart_product (table: cart)
ALTER TABLE cart ADD CONSTRAINT cart_product
    FOREIGN KEY (product_id)
    REFERENCES product (product_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: media_product (table: media)
ALTER TABLE media ADD CONSTRAINT media_product
    FOREIGN KEY (product_id)
    REFERENCES product (product_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: order_order_status (table: order)
ALTER TABLE "order" ADD CONSTRAINT order_order_status
    FOREIGN KEY (order_status_status_id)
    REFERENCES order_status (status_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: order_product (table: order)
ALTER TABLE "order" ADD CONSTRAINT order_product
    FOREIGN KEY (product_id)
    REFERENCES product (product_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: order_user (table: order)
ALTER TABLE "order" ADD CONSTRAINT order_user
    FOREIGN KEY (user_id)
    REFERENCES "user" (user_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: product_categoria (table: product)
ALTER TABLE product ADD CONSTRAINT product_categoria
    FOREIGN KEY (categoria_categoria_id)
    REFERENCES categoria (categoria_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: product_type_product (table: product_type)
ALTER TABLE product_type ADD CONSTRAINT product_type_product
    FOREIGN KEY (product_id)
    REFERENCES product (product_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: product_type_type (table: product_type)
ALTER TABLE product_type ADD CONSTRAINT product_type_type
    FOREIGN KEY (type_id)
    REFERENCES type (type_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: receipt_card (table: receipt)
ALTER TABLE receipt ADD CONSTRAINT receipt_card
    FOREIGN KEY (card_id)
    REFERENCES card (card_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: receipt_cart (table: receipt)
ALTER TABLE receipt ADD CONSTRAINT receipt_cart
    FOREIGN KEY (cart_id)
    REFERENCES cart (cart_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: receipt_product (table: receipt)
ALTER TABLE receipt ADD CONSTRAINT receipt_product
    FOREIGN KEY (product_id)
    REFERENCES product (product_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: receipt_user (table: receipt)
ALTER TABLE receipt ADD CONSTRAINT receipt_user
    FOREIGN KEY (user_id)
    REFERENCES "user" (user_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: user_rol (table: user)
ALTER TABLE "user" ADD CONSTRAINT user_rol
    FOREIGN KEY (rol_id)
    REFERENCES rol (rol_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

