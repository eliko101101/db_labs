CREATE TABLE "balleries" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar,
  "phone" varchar,
  "level" int,
  "group_id" int
);

CREATE TABLE "teachers" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "group_id" int
);

CREATE TABLE "subject" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" varchar,
  "teacher_id" int
);

CREATE TABLE "group" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "time" timestamp,
  "location" varchar,
  "balleries" int,
  "teachers" int
);

ALTER TABLE "balleries" ADD FOREIGN KEY ("group_id") REFERENCES "group" ("id");

ALTER TABLE "teachers" ADD FOREIGN KEY ("group_id") REFERENCES "group" ("id");

ALTER TABLE "subject" ADD FOREIGN KEY ("teacher_id") REFERENCES "teachers" ("id");

ALTER TABLE "group" ADD FOREIGN KEY ("balleries") REFERENCES "balleries" ("id");
