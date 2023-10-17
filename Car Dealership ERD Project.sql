--create a table for customer
CREATE TABLE customer(
  customer_id SERIAL primary key,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  DOB VARCHAR(10)
);

--create a table for salesperson
CREATE TABLE salesperson (
  sales_id SERIAL primary key,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);

--create table for mechanic
CREATE TABLE mechanic (
  mechanic_id SERIAL primary key,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);

--create a table for cars
CREATE TABLE Cars (
  car_id SERIAL primary key,
  make VARCHAR(100),
  model VARCHAR(100),
  color VARCHAR(100)
 );
--create table for service ticket
CREATE TABLE Service_Ticket (
  ticket_id SERIAL primary key,
  service_name VARCHAR(100),
  car_id INTEGER not null,
  customer_id INTEGER not null,
  foreign key(car_id) references Cars(car_id),
  foreign key(customer_id) references customer(customer_id)
);
--create a table for an invoice
CREATE TABLE Invoice (
  invoice_id SERIAL primary key,
  car_id INTEGER not null,
  customer_id INTEGER not null,
  sales_id INTEGER not null,
  foreign key(car_id) references Cars(car_id),
  foreign key(customer_id) references customer(customer_id),
  foreign key(sales_id) references salesperson(sales_id)
);

--create a table for the service history
CREATE TABLE Service_History (
  records_id SERIAL primary key,
  car_id INTEGER not null,
  foreign key(car_id) references Cars(car_id)
);
--create a table for parts used in service
CREATE TABLE Parts (
  part_id SERIAL primary key,
  num_used INTEGER,
  ticket_id INTEGER not null,
  foreign key(ticket_id) references Service_Ticket(ticket_id)
);

---inserting data into the dealership
insert into customer(
	customer_id,
	first_name,
	last_name,
	DOB
) values(
	1,
	'Reece',
	'Ruppert',
	'09-16-1998');
insert into salesperson(
	sales_id,
	first_name,
	last_name
) values(
	1,
	'Larry',
	'Guterman');
insert into Cars(
	car_id,
    make,
    model,
    color 
) values(
    251,
    'Hyundai',
    'Sonata',
    'black');
insert into customer(
	customer_id,
	first_name,
	last_name,
	DOB
) values(
	2,
	'Sarah',
	'Arnold',
	'08-18-1999');
insert into salesperson(
	sales_id,
	first_name,
	last_name
) values(
	2,
	'Kara',
	'Beeman');
insert into Cars(
	car_id,
    make,
    model,
    color 
    ) values(
    270,
    'Hyundai',
    'Tuscon',
    'white');

select* from cars 


