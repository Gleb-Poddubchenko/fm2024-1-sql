DROP TABLE IF EXISTS "users";

CREATE TABLE IF NOT EXISTS "users"(
"id" serial PRIMARY KEY,
    "firsName" varchar(32) NOT NULL CHECK("firsName" !=''),
    "lastName" varchar(32) NOT NULL CHECK(length("lastName")>=3 AND length("lastName")<=32),
    "email" varchar(256) NOT NULL CHECK("email"!='') UNIQUE,
    "height" smallint NOT NULL CHECK("height">=100 AND "height"<=250),
    "weight" numeric(5,2) NOT NULL CHECK("weight">=20 AND "weight"<=250),
    "birthday" date NOT NULL  CHECK ("birthday"<current_date),
    "isMale" boolean NOT NULL DEFAULT true
);

INSERT INTO "users"("firsName","lastName","email","height","weight", "birthday","isMale")
     VALUES('Brad','Pitt', 'pitt@gmail.com', 188,82.53,'1963-12-12' ,true),
     ('Anna','Pitt', 'pitt1@gmail.com', 158,82.53,'2003-10-12' ,true),
     ('Mim','limbo','pit@wiwigmail.com',124,44,'1956-05-12',true);



