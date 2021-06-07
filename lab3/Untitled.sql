CREATE TABLE "balleries" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar,
  "phone" varchar,
  "level" int,
  "teacher_id" int
);

CREATE TABLE "teachers" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "subject_id" int
);

CREATE TABLE "subject" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" varchar,
  "group_id" int UNIQUE
);

ALTER TABLE "balleries" ADD FOREIGN KEY ("teacher_id") REFERENCES "teachers" ("id");

ALTER TABLE "teachers" ADD FOREIGN KEY ("subject_id") REFERENCES "subject" ("id");
