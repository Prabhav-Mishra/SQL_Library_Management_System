# Library Management System - SQL Mini Project

## Overview

The **Library Management System** is an SQL-based project designed to handle a library's book management system. It helps manage book records, author details, member information, and transactions for borrowing and returning books. The system also tracks overdue books and calculates late fees.

This project includes:
- Managing books, authors, library members, transactions (borrowing and returning books), and overdue fees.
- SQL queries for basic operations like **CREATE**, **INSERT**, **SELECT**, **UPDATE**, and **DELETE**.
- Calculating late fees for overdue books.

## Features

- **Books Table**: Stores details about books available in the library, including title, author, published year, and available copies.
- **Authors Table**: Holds information about authors, such as name, birthdate, and nationality.
- **Members Table**: Contains details about library members, including their name, address, and phone number.
- **Transactions Table**: Tracks the borrowing and returning of books by members, including borrow and return dates.
- **LateFees Table**: Calculates and tracks late fees for overdue books.

## Project Structure

The project includes the following SQL files:

1. **create_tables.sql**: Contains SQL statements for creating tables (Books, Authors, Members, Transactions, and LateFees).
2. **insert_data.sql**: Inserts sample data into the tables.
3. **queries.sql**: Provides SQL queries for selecting data, updating records, and calculating late fees.

## Setup Instructions

### Prerequisites:
- SQL Database (e.g., MySQL, PostgreSQL, SQLite)
- SQL Client (e.g., MySQL Workbench, pgAdmin, or any database client)

### Steps:

1. **Create the Database**:
   - Create a new database in your SQL environment (e.g., `library_management`).
   
2. **Run the SQL Scripts**:
   - Execute the `create_tables.sql` file to create the required tables in the database.
   - Execute the `insert_data.sql` file to insert sample data into the tables.
   - Run the `queries.sql` file to perform operations like viewing all books, calculating overdue fees, and updating records.

3. **Explore the Queries**:
   - Use the provided SQL queries to interact with the data. Modify them to suit specific needs, such as generating reports or filtering records.

## SQL Scripts Overview

### `create_tables.sql`

This script creates the following tables:
- **Authors**: Stores author information.
- **Books**: Stores book details with a foreign key reference to authors.
- **Members**: Stores library member information.
- **Transactions**: Tracks the borrowing and returning of books.
- **LateFees**: Stores information about late fees for overdue books.

### `insert_data.sql`

This script populates the database with sample data:
- Adds authors like J.K. Rowling, George Orwell, and J.R.R. Tolkien.
- Inserts books like "Harry Potter and the Philosopher's Stone", "1984", and "The Hobbit".
- Adds members like Alice Brown, Bob Green, and Charlie White.
- Creates sample transactions for borrowing books and late fee records.

### `queries.sql`

This script contains a series of queries to interact with the database:
- Retrieve lists of books, authors, and members.
- Display all book borrowing transactions.
- Calculate late fees for overdue books.
- Update book return dates and insert late fee payments.

## Example Queries

1. **View All Books**:
   ```sql
   SELECT * FROM Books;
