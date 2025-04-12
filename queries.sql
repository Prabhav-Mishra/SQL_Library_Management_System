-- Query 1: View all books available
SELECT * FROM Books;

-- Query 2: View all authors
SELECT * FROM Authors;

-- Query 3: View all members
SELECT * FROM Members;

-- Query 4: View all transactions (books borrowed)
SELECT t.transaction_id, m.name AS member_name, b.title AS book_title, t.borrow_date, t.return_date
FROM Transactions t
JOIN Members m ON t.member_id = m.id
JOIN Books b ON t.book_id = b.id;

-- Query 5: Calculate late fees for overdue books (example: 1.00 per day late)
SELECT t.transaction_id, 
       DATEDIFF(CURDATE(), t.return_date) AS overdue_days, 
       DATEDIFF(CURDATE(), t.return_date) * 1.00 AS late_fee
FROM Transactions t
WHERE t.return_date < CURDATE();

-- Query 6: Update a transaction (book returned later than expected)
UPDATE Transactions
SET return_date = '2024-03-05'
WHERE transaction_id = 1;

-- Query 7: Insert late fee for a new overdue transaction
INSERT INTO LateFees (transaction_id, late_fee, date_paid) VALUES
(3, 3.00, '2024-03-20');
