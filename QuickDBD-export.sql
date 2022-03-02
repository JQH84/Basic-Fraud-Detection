-- preapring the environment for table creation 
DROP TABLE IF EXISTS card_holder CASCADE;
DROP TABLE IF EXISTS credit_card CASCADE;
DROP TABLE IF EXISTS merchant_category CASCADE;
DROP TABLE IF EXISTS merchant CASCADE;
DROP TABLE IF EXISTS transaction CASCADE;


CREATE TABLE "card_holder" (
    "id_holder" int   NOT NULL,
    "name" varchar(255)   NOT NULL,
    CONSTRAINT "pk_card_holder" PRIMARY KEY (
        "id_holder"
     )
);

CREATE TABLE "credit_card" (
    "card_num" varchar(20)   NOT NULL,
    "cardholder_id" int   NOT NULL,
	
);

CREATE TABLE "merchant_category" (
    "id_merch_cat" int   NOT NULL,
    "name" varchar(255)   NOT NULL,
    CONSTRAINT "pk_merchant_category" PRIMARY KEY (
        "id_merch_cat"
     )
);

CREATE TABLE "merchant" (
    "id" int   NOT NULL,
    "name" varchar(255)   NOT NULL,
    "id_merchant_category" int   NOT NULL,
    CONSTRAINT "pk_merchant" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "transaction" (
    "id" int   NOT NULL,
    "date" timestamp   NOT NULL,
    "amount" float   NOT NULL,
    "card" varchar(20)   NOT NULL,
    "id_merchant" int   NOT NULL,
    CONSTRAINT "pk_transaction" PRIMARY KEY (
        "id"
     )
);


