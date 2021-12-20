insert into store_owner values('10001', '10001', 'Store Owner');

insert into author values('Kathryn Stocket', 'F');
insert into author values('Louisa May Alcott', 'F');
insert into author values('Jeanette Winterson', 'NB');
insert into author values('Imogen Hermes Gowar', 'F');
insert into author values('Angela Carter', 'F');
insert into author values('Zadie Smith', 'F');
insert into author values('J. K. Rowling', 'F');

insert into book values('9780241978900', 'The Help', 'Kathryn Stocket', 'Penguin Books Limited', '2009', 464, 'Historical Fiction, Drama', 15.36);
insert into book values('9780241374863', 'Little Women', 'Louisa May Alcott', 'Penguin Books Limited', '1968', 384, 'Novel, Fiction, Comedy', 15.99);
insert into book values('9780099598183', 'Oranges Are Not The Only Fruit', 'Jeanette Winterson', 'Penguin Books Limited', '1985', 240, 'Novel, Semi-autobiographical', 10.99);
insert into book values('9781784705992', 'The Mermaid and Mrs Hancock', 'Imogen Hermes Gowar', 'Penguin Books Limited', '2018', 496, 'Novel, Historical Fiction, Magical Realism', 13.99);
insert into book values('9781409015369', 'The Bloody Chamber and Other Stories', 'Angela Carter', 'Penguin Books Limited', '1979', 176, 'Magical Realism, Short Story', 15.36);
insert into book values('9780141939230', 'White Teeth', 'Zadie Smith', 'Penguin Books Limited', '2000', 560, 'Novel, Hysterical Realism', 10.99);
insert into book values('9780747532743', 'Harry Potter and the Philosophers Stone', 'J. K. Rowling', 'Bloomsbury Pub Ltd', '1997', 223, 'Fantasy Fiction', 10.99);
insert into book values('9780747538486', 'Harry Potter and the Chamber of Secrets', 'J. K. Rowling', 'Bloomsbury Pub Ltd', '1998', 251, 'Fantasy Fiction', 10.99);
insert into book values('9780747546290', 'Harry Potter and the Prisoner of Azkaban', 'J. K. Rowling', 'Bloomsbury Pub Ltd', '1999', 317, 'Fantasy Fiction', 10.99);
insert into book values('9780747550990', 'Harry Potter and the Goblet of Fire', 'J. K. Rowling', 'Bloomsbury Pub Ltd', '2000', 636, 'Fantasy Fiction', 10.99);
insert into book values('9780747561071', 'Harry Potter and the Order of the Phoenix', 'J. K. Rowling', 'Bloomsbury Pub Ltd', '2003', 766, 'Fantasy Fiction', 10.99);
insert into book values('9780747581086', 'Harry Potter and the Half Blood Prince', 'J. K. Rowling', 'Bloomsbury Pub Ltd', '2005', 607, 'Fantasy Fiction', 10.99);
insert into book values('9780545010221', 'Harry Potter and the Deathly Hallows', 'J. K. Rowling', 'Bloomsbury Pub Ltd', '2007', 607, 'Fantasy Fiction', 10.99);

insert into publisher values('Penguin Books Limited', '20 Vauxhall Bridge Rd, London, SW1V 2SA, UK', 'consumerservices@penguinrandomhouse.com', '8007333000', '1234567890');
insert into publisher values('Bloomsbury Pub Ltd', '1385 Broadway, Fifth Floor, New York, NY 10018 USA', 'OnlineSalesUS@bloomsbury.com', '8883308477', '9876543210');

insert into warehouse values('W_001', 'Amazon YOW1, 5225 Boundary Rd, Navan, ON K4B 1P6');

insert into stock values('9780241978900', 'W_001', 11, 40);
insert into stock values('9780241374863', 'W_001', 15, 80);
insert into stock values('9780099598183', 'W_001', 10, 30);
insert into stock values('9781784705992', 'W_001', 20, 50);
insert into stock values('9781409015369', 'W_001', 17, 20);
insert into stock values('9780141939230', 'W_001', 30, 110);
insert into stock values('9780747532743', 'W_001', 13, 95);
insert into stock values('9780747538486', 'W_001', 26, 150);
insert into stock values('9780747546290', 'W_001', 80, 100);
insert into stock values('9780747550990', 'W_001', 50, 110);
insert into stock values('9780747561071', 'W_001', 35, 120);
insert into stock values('9780747581086', 'W_001', 30, 90);
insert into stock values('9780545010221', 'W_001', 12, 150);

insert into contract values('9780241978900', 'Penguin Books Limited', 5);
insert into contract values('9780241374863', 'Penguin Books Limited', 6);
insert into contract values('9780099598183', 'Penguin Books Limited', 7);
insert into contract values('9781784705992', 'Penguin Books Limited', 8);
insert into contract values('9781409015369', 'Penguin Books Limited', 9);
insert into contract values('9780141939230', 'Penguin Books Limited', 10);
insert into contract values('9780747532743', 'Bloomsbury Pub Ltd', 8);
insert into contract values('9780747538486', 'Bloomsbury Pub Ltd', 8);
insert into contract values('9780747546290', 'Bloomsbury Pub Ltd', 8);
insert into contract values('9780747550990', 'Bloomsbury Pub Ltd', 8);
insert into contract values('9780747561071', 'Bloomsbury Pub Ltd', 8);
insert into contract values('9780747581086', 'Bloomsbury Pub Ltd', 8);
insert into contract values('9780545010221', 'Bloomsbury Pub Ltd', 8);
