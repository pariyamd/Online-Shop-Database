

# Online shop database

This database is designed for an online shop in which anyone can make a profile and after logging in, one can view the list of items in their cart and can add/remove goods to/from the cart, finally by submitting the cart, a receipt is provided to customer which shows the details of customers cart goods and the prices.
Each product is supplied by a producer, the information of the producer is also stored.
### 1.Making the tables:
First step, building the database and the tables, code in tables.sql
we need the following tables:
- **User** : Name, Last name, ID, Phone number, address, city
- **Producer** : Name, Last name, ID, Phone number
- **Factor** : Code, Buyer, Purchase Date
- **Product** : Code, Name, Purchase date, Sale price, Purchase price, balance, producer
- **List** : Factor, Product, Count, Rank

### 2. Insert instances:
in order to test the proficiency of our database we have to work with some data, so the second step is inserting new instances, code in inserts.sql
### 3.Extracting & reporting information:
At last, we can extract information by making queries and views. Each query is explained in the comments of "queries.sql"s codes.
### UML diagrams
