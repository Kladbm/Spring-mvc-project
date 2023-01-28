CREATE TABLE my_db.users (
  id int NOT NULL AUTO_INCREMENT,
  username varchar(25),
  email varchar(25),
  password varchar(25),
  admin varchar(25),
  PRIMARY KEY (id)
);

CREATE TABLE my_db.details (
  id int NOT NULL AUTO_INCREMENT,
  city varchar(25),
  phone_number varchar(25),
  email varchar(25),
  PRIMARY KEY (id)
);

CREATE TABLE my_db.employees (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(25),
  surname varchar(25),
  salary int,
  department varchar(25),
  is_work varchar(25),
  details_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (details_id) REFERENCES my_db.details(id)
);
