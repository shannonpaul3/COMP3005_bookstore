create table warehouse
	(w_id				varchar(5),
	 address			varchar(100),
	 primary key (w_id)
	);

create table author
	(author_name	varchar(30),
	 gender			varchar(2),
	 primary key (author_name)
	);

create table book
	(ISBN			varchar(13),
	 title			varchar(100),
	 author_name		varchar(30),
 	 pub_name		varchar(30),
	 year			varchar(4),
	 num_pages		numeric(10, 0),
	 genre			varchar(100),
	 price			numeric(10, 2),
	 primary key (ISBN),
	 foreign key (author_name) references author(author_name)
	 	on delete cascade
	);

create table stock
	(ISBN			varchar(13),
	 w_id			varchar(5),
	 quantity		numeric(10, 0),
	 prev_quantity		numeric(10, 0),
	 primary key (ISBN, w_id),
	 foreign key (ISBN) references book(ISBN)
	 	on delete cascade,
	 foreign key (w_id) references warehouse(w_id)
	 	on delete cascade
	);

create table publisher
	(pub_name		varchar(30),
	 address		varchar(100),
	 email			varchar(50),
	 phone_number	varchar(10),
	 bank_account	varchar(10),
	 primary key (pub_name)
	);

create table contract
	(ISBN			varchar(13),
	 pub_name		varchar(30),
	 percentage		numeric(5,2),
	 primary key (ISBN, pub_name),
	 foreign key (ISBN) references book(ISBN)
	 	on delete cascade,
	 foreign key (pub_name) references publisher(pub_name)
	 	on delete cascade
	);

create table customer
	(user_id		varchar(5),
	 password		varchar(5) not null,
	 full_name		varchar(20) not null,
	 shipping_add	varchar(100),
	 billing_add	varchar(100),
	 primary key (user_id)
	);

create table store_owner
	(owner_id		varchar(5),
	 password		varchar(5) not null,
	 full_name		varchar(20) not null,
	 primary key (owner_id)
	);

create table active_order
	(order_number	varchar(5),
	 user_id		varchar(5),
	 shipping		varchar(100),
	 billing			varchar(100),
	 order_total	numeric(10, 2),
	 primary key (order_number),
	 foreign key (user_id) references customer(user_id)
	);

create table book_order
	(order_number	varchar(5),
	 ISBN			varchar(13),
	 primary key (order_number, ISBN),
	 foreign key (order_number) references active_order(order_number)
on delete cascade,
	 foreign key (ISBN) references book(ISBN)
		on delete cascade
	);

create table sale
	(owner_id		varchar(5),
	 order_number	varchar(5),
	 cost			numeric(10, 2),
	 profit			numeric(10, 2),
	 primary key (owner_id, order_number),
	 foreign key (order_number) references active_order(order_number)
	 	on delete cascade,
	 foreign key (owner_id) references store_owner(owner_id)
	);
