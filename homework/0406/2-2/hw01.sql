CREATE TABLE animals (
  animal_name TEXT NOT NULL,
  height INT NOT NULL,
  weight INT NOT NULL,
  age INT 
);

ALTER TABLE animals ADD meal TEXT NOT NULL;
ALTER TABLE animals RENAME COLUMN animal_name TO name;

ALTER TABLE animals RENAME to zoo;