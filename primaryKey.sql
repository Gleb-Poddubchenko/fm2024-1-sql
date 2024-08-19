CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

DROP TABLE IF EXISTS "messages";

CREATE TABLE IF NOT EXISTS "messages"(
    "id" bigserial PRIMARY KEY,
    "body" varchar(2048) NOT NULL CHECK("body"!=''),
    "authorId"int REFERENCES "users"("id"),
    "createAt" timestamp NOT NULL DEFAULT current_timestamp,
    "IsREad" boolean  DEFAULT false
);

INSERT INTO "messages"("body","authorId")
VALUES
('hi','3'),
('hi','1'),
('1111','2');
