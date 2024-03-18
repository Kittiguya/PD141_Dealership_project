INSERT INTO dealership(
    dealership_id,
    dealer_name,
    dealer_address
) VALUES(
    '1',
    'Ciricos Major Auto',
    '19812 SW Kingston boulevard, Acron, New York'
);

INSERT INTO inventory(
    inventory_id,
    new_cars,
    used_cars,
    dealership_id
) VALUES (
    '1',
    'N/A',
    '2017 Toyota Supra',
    '1'
), (
    '2',
    'N/A',
    '2018 Toyota Supra',
    '1'
), (
    '3',
    'N/A',
    '2019 Cheverolet Stingray',
    '1'
), (
    '4',
    '2024 Toyota Supra',
    'N/A',
    '1'
), (
    '5',
    '2024 Honda Civic',
    'N/A',
    '1'
);

INSERT INTO staff(
    staff_id,
    first_name,
    last_name
) VALUES(
    '1',
    'Terra',
    'Sentafo'
), (
    '2',
    'Kazuto',
    'Kairiguya'
), (
    '3',
    'Aaron',
    'Eechevarria'
), (
    '4',
    'Kairi',
    'Hitsume'
), (
    '5',
    'Light',
    'Yagami'
);

INSERT INTO customer(
    cutomer_id,
    first_name,
    last_name,
    dealership_id
) VALUES(
    '1',
    'Son',
    'Goku',
    '1'
), (
    '2',
    'Prince',
    'Vegeta',
    '1'
), (
    '3',
    'Master',
    'Roshi',
    '1'
), (
    '4',
    'Donald',
    'Duck',
    '1'
), (
    '5',
    'Jack',
    'Skellington',
    '1'
);

INSERT INTO invoice(
    invoice_id,
    cutomer_id,
    staff_id
) VALUES(
    '1',
    '1',
    '3'
), (
    '2',
    '2',
    '4'
), (
    '3',
    '3',
    '2'
), (
    '4',
    '4',
    '5'
), (
    '5',
    '5',
    '1'
);

INSERT INTO service(
    service_ticket,
    history,
    service_date,
    staff_id,
    cutomer_id
) VALUES(
    '1',
    'Customer bought the car today', 
    '3/17/2024',
    '5',
    '1'
), (
    '2',
    'Bought his first oil change today!',
    '3/17/2024',
    '3',
    '1'
), (
    '3',
    'Purchased the vehicle today',
    '3/17/2022',
    '2',
    '3'
), (
    '4',
    'Purchased an oil change and tire change',
    '3/16/2024',
    '4',
    '5'
), (
    '5',
    'Came in for a tune up, I.E oil change, tire rotate',
    '3/14/2024',
    '1',
    '4'
);