DROP TABLE IF EXISTS "products";

CREATE TABLE IF NOT EXISTS "products"(
"Name" varchar(64) NOT NULL CHECK("Name"!='') UNIQUE ,
"Price" numeric(6,2) CHECK("Price" <= 10000),
"DateOfManufacture" DATE CHECK("DateOfManufacture"< current_date),
"NumberOfUnits" INT CHECK("NumberOfUnits" >= 0 AND "NumberOfUnits" <= 1000) DEFAULT 0,
"Currency" varchar(3) DEFAULT 'uah',
"Action" boolean DEFAULT false 
);

INSERT INTO "products"
     VALUES(
        'cheese',520, '2024-06-12',1,DEFAULT,DEFAULT
     ),('jamon',1920,'2022-01-01',2,'uah', true),
     ('wine',8000,'2020-07-06',1,DEFAULT,true)