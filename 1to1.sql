CREATE TABLE "coaches"(
"id" serial PRIMARY KEY,
"name" varchar(32) NOT NULL
);


CREATE TABLE "teames"(
    "id" serial PRIMARY KEY,
    "name" varchar (32) NOT NULL,
    "coachId" int REFERENCES "coaches"("id")
);

ALTER TABLE "coaches"
ADD COLUMN "teamId" int REFERENCES "teames"("id");