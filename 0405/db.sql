CREATE TABLE users(
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  age INTEGER NOT NULL,
  contry TEXT NOT NULL,
  phone TEXT NOT NULL,
  balance INTEGER NOT NULL
);

select first_name, age, balance from users where age >= 30 order by balance desc;

select first_name, age, contry from users where first_name like '%호%';

select first_name, phone from users where phone like '02-%';