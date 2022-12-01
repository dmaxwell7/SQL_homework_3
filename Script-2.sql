create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(200),
	address VARCHAR(150),
	city VARCHAR(150),
	customer_state VARCHAR(100),
	zipcode VARCHAR(50)
);

/*orders table for the presidents*/
create table order_(
	order_id SERIAL primary key,
	order_date DATE default current_date,
	amount numeric(5,2),
	customer_id INTEGER,
	foreign key(customer_id) references customer(customer_id)
);

insert into customer(customer_id, first_name, last_name, email, address, city, customer_state,zipcode)
values(1, 'George', 'Washington', 'gwash@usa.gov', '3200 MT Vernon Hwy', 'MT Vernon', 'VA', '22121');

insert into customer(customer_id, first_name, last_name, email, address, city, customer_state,zipcode)
values(2, 'John', 'Adams', 'jadams@usa.gov', '1200 hancock', 'quincy', 'MA', '02169');

insert into customer(customer_id, first_name, last_name, email, address, city, customer_state,zipcode)
values(3, 'Thomas', 'Jefferson', 'tjeff@usa.gov', '931 Thomas Jefferson Pwky', 'Charlottesvile', 'VA', '02169');

insert into customer(customer_id, first_name, last_name, email, address, city, customer_state,zipcode)
values(4, 'James', 'Madison', 'jmad@usa.gov', '11350 conway', 'Orange', 'VA', '02169');

insert into customer(customer_id, first_name, last_name, email, address, city, customer_state,zipcode)
values(5, 'james', 'Monroe', 'jmonroe@usa.gov', '2050 James Monroe pky', 'Charlottesvile', 'VA', '02169');


/*Insert info into orders table*/


insert into order_(order_id,amount,customer_id)
values(1,234.56,1);

insert into order_(order_id,amount,customer_id)
values(2,78.50,3);

insert into order_(order_id,amount,customer_id)
values(3,124.00,2);

insert into order_(order_id,amount,customer_id)
values(4,65.50,3);

insert into order_(order_id,amount,customer_id)
values(5,55.59,null);

select * from order_ 
select * from customer

/*customer = table a*/
/*order_ == table b*/
/*INNER JOINT*/
select first_name, last_name, order_date, amount
from customer 
inner join order_ 
on customer.customer_id = order_.customer_id;


/*LEFT JOIN*/
select first_name, last_name, order_date, amount
from customer 
left join order_ 
on customer.customer_id = order_.customer_id 
where order_date is not null;

/*RIGHT JOIN*/
select first_name, last_name, amount
from customer 
right join order_ 
on customer.customer_id = order_.customer_id;

/*FULL JOIN*/
select first_name, last_name, order_date, amount
from customer 
full join order_ 
on customer.customer_id = order_.customer_id 































