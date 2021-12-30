# COMP3005_bookstore
Shannon Paul

SOME NOTES AND INSTRUCTIONS

Postgresql:
- create database named 'bookstore'
- run DDL.sql inside Query Tool (located in SQl folder)
- run Functions.sql inside Query Tool (located in SQl folder)

Run Bookstore.java:
- make sure jar file is set as driver in IDE
- from command line:
    java Bookstore.java

Other:
- all queries are inside Bookstore.java (JDBC)
- database name and password can be changed inside Bookstore.java
- ER diagram and Relation-Schema diagram located in Documents folder

APPLICATION DESCRIPTION:

This application lets users browse a collection of books that are available in the bookstore. A user can search the bookstore by book name, author name, ISBN, genre, etc.. When a book is selected, information on the author(s), genre, publisher, number of pages, price, etc. can be viewed. A user can select as many books as she likes to be added to the checkout basket. A user needs to be registered in the bookstore to be able to checkout. When checking out, the user inserts billing and shipping information (can be different than those used in registration), and completes the order. The bookstore has the feature of tracking an order via an order number. A user can use this order number to track where the order is currently. The bookstore owners can add new books to their collections, or remove books from their store. They also store information on the publishers of books such as name, address, email address, phone number(s), banking account, etc.. The owners have access to reports that show sales. The application automatically places orders for new books if the remaining quantity is less than a given threshold (e.g., 10 books).
