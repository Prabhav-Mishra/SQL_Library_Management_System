-- Create Authors Table
CREATE TABLE Authors (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_date DATE,
    nationality VARCHAR(50)
);

-- Create Books Table
CREATE TABLE Books (
    id INT PRIMARY KEY,
    title VARCHAR(200),
    author_id INT,
    published_year INT,
    category VARCHAR(50),
    available_copies INT,
    FOREIGN KEY (author_id) REFERENCES Authors(id)
);

-- Create Members Table
CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(15),
    membership_date DATE
);

-- Create Transactions Table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(id),
    FOREIGN KEY (book_id) REFERENCES Books(id)
);

-- Create LateFees Table
CREATE TABLE LateFees (
    transaction_id INT,
    late_fee DECIMAL(10, 2),
    date_paid DATE,
    PRIMARY KEY (transaction_id),
    FOREIGN KEY (transaction_id) REFERENCES Transactions(transaction_id)
);
