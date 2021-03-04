\c modelling_sql

CREATE TABLE drives(drive_id SERIAL PRIMARY KEY);

CREATE TABLE settlements(settlement_id SERIAL PRIMARY KEY,
drive_id INT NOT NULL,
FOREIGN KEY (drive_id) REFERENCES drives(drive_id));

CREATE TABLE departments(department_id SERIAL PRIMARY KEY,
name VARCHAR(50));

CREATE TABLE workers(worker_id SERIAL PRIMARY KEY,
 name VARCHAR(50),
address VARCHAR(100));

CREATE TABLE assignments(worker_id INT NOT NULL REFERENCES workers(worker_id),
settlement_id INT NOT NULL REFERENCES settlements(settlement_id),
PRIMARY KEY (worker_id, settlement_id);


CREATE TABLE jobs(department_id INT NOT NULL REFERENCES departments(department_id),
worker_id INT NOT NULL REFERENCES workers(worker_id),
PRIMARY KEY (worker_id, department_id);

