CREATE TABLE dealership(
    dealership_id SERIAL PRIMARY KEY,
    dealer_name VARCHAR,
    dealer_address VARCHAR
);

CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    new_cars VARCHAR,
    used_cars VARCHAR
);


CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE customer(
    cutomer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY

);

CREATE TABLE service(
    service_ticket SERIAL PRIMARY KEY,
    history VARCHAR(100),
    service_date TIMESTAMP

);

ALTER TABLE inventory
ADD column dealership_id INTEGER,
ADD CONSTRAINT f_dealership_id FOREIGN KEY (dealership_id) REFERENCES dealership(dealership_id);

ALTER TABLE customer
ADD column dealership_id INTEGER,
ADD CONSTRAINT f_dealership_id FOREIGN KEY (dealership_id) REFERENCES dealership(dealership_id);

ALTER TABLE invoice
ADD column cutomer_id INTEGER,
ADD CONSTRAINT f_cutomer_id FOREIGN KEY (cutomer_id) REFERENCES customer(cutomer_id),
ADD column staff_id INTEGER,
ADD CONSTRAINT f_staff_id FOREIGN KEY (staff_id) REFERENCES staff(staff_id);

ALTER TABLE service
ADD column staff_id INTEGER,
ADD CONSTRAINT f_staff_id FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
ADD column cutomer_id INTEGER,
ADD CONSTRAINT f_cutomer_id FOREIGN KEY (cutomer_id) REFERENCES customer(cutomer_id);