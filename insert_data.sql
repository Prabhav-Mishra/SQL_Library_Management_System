-- Insert Sample Data into Authors Table
INSERT INTO Authors (id, name, birth_date, nationality) VALUES
(1, 'J.K. Rowling', '1965-07-31', 'British'),
(2, 'George Orwell', '1903-06-25', 'British'),
(3, 'J.R.R. Tolkien', '1892-01-03', 'British');

-- Insert Sample Data into Books Table
INSERT INTO Books (id, title, author_id, published_year, category, available_copies) VALUES
(1, 'Harry Potter and the Philosopher's Stone', 1, 1997, 'Fantasy', 5),
(2, '1984', 2, 1949, 'Dystopian', 3),
(3, 'The Hobbit', 3, 1937, 'Fantasy', 4);

-- Insert Sample Data into Members Table
INSERT INTO Members (id, name, address, phone, membership_date) VALUES
(1, 'Alice Brown', '123 Elm St, City, Country', '555-1234', '2024-01-10'),
(2, 'Bob Green', '456 Oak St, City, Country', '555-5678', '2023-11-12'),
(3, 'Charlie White', '789 Pine St, City, Country', '555-8765', '2024-03-05');

-- Insert Sample Data into Transactions Table
INSERT INTO Transactions (transaction_id, member_id, book_id, borrow_date, return_date) VALUES
(1, 1, 1, '2024-01-15', '2024-01-30'),
(2, 2, 2, '2024-02-05', '2024-02-20'),
(3, 3, 3, '2024-03-01', '2024-03-15');

-- Insert Sample Data into LateFees Table
INSERT INTO LateFees (transaction_id, late_fee, date_paid) VALUES
(1, 5.00, '2024-02-01'),
(2, 2.50, '2024-02-25');
