CREATE DATABASE LMS;

USE LMS;

## Branch Branch_no - Set as PRIMARY KEY Manager_Id Branch_address Contact_no 
CREATE TABLE Branch (
Branch_no INT PRIMARY KEY,
Manager_Id INT,
Branch_address VARCHAR(100),
Contact VARCHAR(20));
INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact) 
VALUES (1, 101, '123 Main St, City A', '555-1001'),
(2, 102, '456 Oak Ave, City B', '555-1002'),
(3, 103, '789 Maple Blvd, City C', '555-1003'),
(4, 104, '321 Pine St, City D', '555-1004'),
(5, 105, '654 Cedar Rd, City E', '555-1005'),
(6, 106, '111 Birch Rd, City F', '555-1006'),
(7, 107, '222 Elm St, City G', '555-1007'),
(8, 108, '333 Walnut Ave, City H', '555-1008'),
(9, 109, '444 Spruce Blvd, City I', '555-1009'),
(10, 110, '555 Fir Rd, City J', '555-1010'),
(11, 111, '666 Poplar St, City K', '555-1011'),
(12, 112, '777 Cedar St, City L', '555-1012'),
(13, 113, '888 Ash Ave, City M', '555-1013'),
(14, 114, '999 Hickory Blvd, City N', '555-1014'),
(15, 115, '101 Maplewood Rd, City O', '555-1015'),
(16, 116, '202 Pinewood St, City P', '555-1016'),
(17, 117, '303 Oakwood Ave, City Q', '555-1017'),
(18, 118, '404 Birchwood Blvd, City R', '555-1018'),
(19, 119, '505 Redwood Rd, City S', '555-1019'),
(20, 120, '606 Firwood St, City T', '555-1020');
SELECT * FROM BRANCH;

## Employee Emp_Id – Set as PRIMARY KEY Emp_name Position Salary Branch_no - Set as FOREIGN KEY and it refer Branch_no in Branch table
CREATE TABLE Employee (
Emp_Id INT PRIMARY KEY,
Emp_name VARCHAR(50),
Position VARCHAR(50),
Salary DECIMAL(10, 2),
Branch_no INT,
FOREIGN KEY(Branch_no) REFERENCES Branch(Branch_no) );
INSERT INTO Employee(Emp_Id, Emp_name, Position, Salary, Branch_no) 
VALUES(1, 'Alice Johnson', 'Librarian', 45000, 1),
(2, 'Bob Smith', 'Assistant Librarian', 35000, 2),
(3, 'Charlie Davis', 'Librarian', 47000, 3),
(4, 'Diana Miller', 'Library Assistant', 32000, 4),
(5, 'Ethan Clark', 'Senior Librarian', 55000, 5),
(6, 'Fiona Lewis', 'Librarian', 43000, 6),
(7, 'George Walker', 'Assistant Librarian', 36000, 7),
(8, 'Hannah Young', 'Senior Librarian', 60000, 8),
(9, 'Ian King', 'Library Assistant', 31000, 9),
(10, 'Julia Baker', 'Librarian', 46000, 10),
(11, 'Kevin Adams', 'Librarian', 48000, 11),
(12, 'Laura Phillips', 'Senior Librarian', 57000, 12),
(13, 'Mark Turner', 'Library Assistant', 33000, 13),
(14, 'Nancy Carter', 'Assistant Librarian', 34000, 14),
(15, 'Oliver Harris', 'Senior Librarian', 59000, 15),
(16, 'Paula Scott', 'Librarian', 45000, 16),
(17, 'Quincy Rogers', 'Assistant Librarian', 37000, 17),
(18, 'Rachel Stewart', 'Senior Librarian', 61000, 18),
(19, 'Steve Evans', 'Librarian', 44000, 19),
(20, 'Tina Gray', 'Library Assistant', 30000, 20);
SELECT  * FROM Employee;

## Books ISBN - Set as PRIMARY KEY Book_title Category Rental_Price Status [Give yes if book available and no if book not available] Author Publisher 
CREATE TABLE Book( 
ISBN VARCHAR(50) PRIMARY KEY,
Book_title VARCHAR(100),
Category VARCHAR(50),
Rental_Price DECIMAL(5, 2),
Status VARCHAR(3) CHECK(Status IN('YES' ,'NO')),
Author VARCHAR(100),
Publisher VARCHAR(100) );
INSERT INTO Book ( ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) 
VALUES(1001, 'To Kill a Mockingbird', 'Fiction', 15.50, 'YES', 'Harper Lee', 'J.B. Lippincott & Co.'),
(1002, '1984', 'Dystopian', 18.00, 'YES', 'George Orwell', 'Secker & Warburg'),
(1003, 'Pride and Prejudice', 'Romance', 12.00, 'NO', 'Jane Austen', 'T. Egerton'),
(1004, 'The Great Gatsby', 'Classic', 10.00, 'YES', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons'),
(1005, 'Moby Dick', 'Adventure', 17.00, 'NO', 'Herman Melville', 'Harper & Brothers'),
(1006, 'War and Peace', 'Historical', 20.00, 'YES', 'Leo Tolstoy', 'The Russian Messenger'),
(1007, 'The Catcher in the Rye', 'Fiction', 14.00, 'YES', 'J.D. Salinger', 'Little, Brown and Company'),
(1008, 'The Hobbit', 'Fantasy', 16.50, 'NO', 'J.R.R. Tolkien', 'George Allen & Unwin'),
(1009, 'Fahrenheit 451', 'Science Fiction', 13.00, 'YES', 'Ray Bradbury', 'Ballantine Books'),
(1010, 'Jane Eyre', 'Romance', 11.50, 'YES', 'Charlotte Brontë', 'Smith, Elder & Co.'),
(1011, 'The Odyssey', 'Epic', 19.00, 'NO', 'Homer', 'Penguin Classics'),
(1012, 'The Brothers Karamazov', 'Philosophical', 15.00, 'YES', 'Fyodor Dostoevsky', 'The Russian Messenger'),
(1013, 'Brave New World', 'Dystopian', 13.50, 'YES', 'Aldous Huxley', 'Chatto & Windus'),
(1014, 'Wuthering Heights', 'Gothic', 14.50, 'NO', 'Emily Brontë', 'Thomas Cautley Newby'),
(1015, 'Crime and Punishment', 'Psychological', 16.00, 'YES', 'Fyodor Dostoevsky', 'The Russian Messenger'),
(1016, 'The Iliad', 'Epic', 18.50, 'YES', 'Homer', 'Penguin Classics'),
(1017, 'Dracula', 'Horror', 12.50, 'NO', 'Bram Stoker', 'Archibald Constable and Company'),
(1018, 'Frankenstein', 'Science Fiction', 13.00, 'YES', 'Mary Shelley', 'Lackington, Hughes, Harding, Mavor & Jones'),
(1019, 'The Divine Comedy', 'Epic', 21.00, 'NO', 'Dante Alighieri', 'John and Henry L. Hunt'),
(1020, 'Les Misérables', 'Historical', 22.50, 'YES', 'Victor Hugo', 'A. Lacroix, Verboeckhoven & Cie'); 
SELECT * FROM Book;

## Customer Customer_Id - Set as PRIMARY KEY Customer_name Customer_address Reg_date 
CREATE TABLE Customer(
Customer_Id INT PRIMARY KEY,
Customer_name VARCHAR(50),
Customer_address VARCHAR(100),
Reg_Date DATE );
INSERT INTO Customer( Customer_Id, Customer_name, Customer_address, Reg_Date)
VALUES (1, 'John Doe', '123 Maple St, Springfield', '2021-05-14'),
(2, 'Jane Smith', '456 Oak Ave, Rivertown', '2020-11-23'),
(3, 'Alice Brown', '789 Pine Rd, Lakeside', '2022-03-10'),
(4, 'Bob Johnson', '101 Cedar St, Hillview', '2023-07-22'),
(5, 'Catherine Adams', '202 Birch St, Forestville', '2019-08-30'),
(6, 'David Clark', '303 Elm Dr, Mountainview', '2021-12-05'),
(7, 'Ella Lewis', '404 Ash Ave, Riverwood', '2020-09-17'),
(8, 'Frank Wilson', '505 Cherry Ln, Greenfield', '2023-01-25'),
(9, 'Grace Hall', '606 Willow St, Sunnydale', '2022-04-18'),
(10, 'Henry Evans', '707 Spruce St, Brookside', '2021-06-09'),
(11, 'Isabella Scott', '808 Fir St, Westfield', '2019-12-29'),
(12, 'Jack Young', '909 Redwood Rd, Eastport', '2023-02-12'),
(13, 'Kathy Harris', '111 Maple St, Riverwood', '2020-03-15'),
(14, 'Liam King', '222 Pine St, Lakeside', '2022-07-19'),
(15, 'Mia Wright', '333 Cedar St, Hillview', '2021-11-10'),
(16, 'Nathan Hill', '444 Oak St, Rivertown', '2019-04-25'),
(17, 'Olivia Baker', '555 Elm St, Forestville', '2023-05-01'),
(18, 'Patrick Turner', '666 Ash St, Sunnydale', '2022-08-28'),
(19, 'Quincy Mitchell', '777 Cherry St, Mountainview', '2021-10-13'),
(20, 'Rachel Perez', '888 Willow St, Brookside', '2020-12-20');
SELECT * FROM Customer;

##  IssueStatus Issue_Id - Set as PRIMARY KEY Issued_cust – Set as FOREIGN KEY and it refer customer_id in 
##  CUSTOMER table Issued_book_name Issue_date Isbn_book – Set as FOREIGN KEY and it should refer isbn in BOOKS table 
CREATE TABLE IssueStatus(
Issue_Id INT PRIMARY KEY,
Issued_cust INT,
Issued_book_name VARCHAR(100),
Issue_date DATE,
Isbn_book VARCHAR(50),
FOREIGN KEY(Issued_cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY(Isbn_book) REFERENCES Book(ISBN) 
);
INSERT INTO IssueStatus(Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) 
VALUES(1, 1, 'To Kill a Mockingbird', '2023-06-15', 1001),
(2, 2, '1984', '2023-06-20', 1002),
(3, 3, 'Pride and Prejudice', '2023-06-25', 1003),
(4, 4, 'The Great Gatsby', '2023-06-30', 1004),
(5, 5, 'Moby Dick', '2023-07-05', 1005),
(6, 1, 'War and Peace', '2023-07-10', 1006),
(7, 6, 'The Catcher in the Rye', '2023-07-12', 1007),
(8, 7, 'The Hobbit', '2023-07-14', 1008),
(9, 8, 'Fahrenheit 451', '2023-07-15', 1009),
(10, 9, 'Jane Eyre', '2023-07-20', 1010),
(11, 10, 'The Odyssey', '2023-07-25', 1011),
(12, 11, 'The Brothers Karamazov', '2023-08-01', 1012),
(13, 12, 'Brave New World', '2023-08-03', 1013),
(14, 13, 'Wuthering Heights', '2023-08-07', 1014),
(15, 14, 'Crime and Punishment', '2023-08-10', 1015),
(16, 15, 'The Iliad', '2023-08-12', 1016),
(17, 16, 'Dracula', '2023-08-15', 1017),
(18, 17, 'Frankenstein', '2023-08-20', 1018),
(19, 18, 'The Divine Comedy', '2023-09-01', 1019),
(20, 19, 'Les Misérables', '2023-09-05', 1020);
SELECT * FROM IssueStatus;

## ReturnStatus Return_Id - Set as PRIMARY KEY Return_cust Return_book_name Return_date Isbn_book2 - Set as FOREIGN KEY and it should refer isbn in BOOKS table Display all the tables
CREATE TABLE ReturnStatus(
Return_Id INT PRIMARY KEY,
Return_cust INT, 
Return_book_name VARCHAR(100),
Return_date DATE,
Isbn_book2 VARCHAR(30),
FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY (Isbn_book2) REFERENCES Book(ISBN)
);
INSERT INTO ReturnStatus( Return_Id,Return_cust,Return_book_name, Return_date,Isbn_book2) 
VALUES(1, 1, 'To Kill a Mockingbird', '2023-07-01', 1001),
(2, 2, '1984', '2023-07-15', 1002),
(3, 3, 'Pride and Prejudice', '2023-07-20', 1003),
(4, 4, 'The Great Gatsby', '2023-08-01', 1004),
(5, 5, 'Moby Dick', '2023-08-05', 1005),
(6, 1, 'War and Peace', '2023-08-10', 1006),
(7, 6, 'The Catcher in the Rye', '2023-08-12', 1007),
(8, 7, 'The Hobbit', '2023-08-14', 1008),
(9, 8, 'Fahrenheit 451', '2023-08-15', 1009),
(10, 9, 'Jane Eyre', '2023-08-20', 1010),
(11, 10, 'The Odyssey', '2023-08-25', 1011),
(12, 11, 'The Brothers Karamazov', '2023-09-01', 1012),
(13, 12, 'Brave New World', '2023-09-05', 1013),
(14, 13, 'Wuthering Heights', '2023-09-10', 1014),
(15, 14, 'Crime and Punishment', '2023-09-15', 1015),
(16, 15, 'The Iliad', '2023-09-20', 1016),
(17, 16, 'Dracula', '2023-09-25', 1017),
(18, 17, 'Frankenstein', '2023-10-01', 1018),
(19, 18, 'The Divine Comedy', '2023-10-05', 1019),
(20, 19, 'Les Misérables', '2023-10-10', 1020); 
SELECT * FROM Returnstatus;

   ## Retrieve the book title, category, and rental price of all available books.
         SELECT Book_title, Category, Rental_Price FROM Book WHERE Status ='YES';
   ## List the employee names and their respective salaries in descending order of salary
         SELECT Emp_name, Salary FROM Employee  ORDER BY Salary DESC;
   ## Retrieve the book titles and the corresponding customers who have issued those books.
        SELECT  IssueStatus.Issued_book_name,Customer.Customer_Id FROM IssueStatus 
        INNER JOIN Customer ON IssueStatus.Issued_cust = Customer.Customer_Id;
   ## Display the total count of books in each category.
       SELECT  Category, COUNT(Book_title) FROM Book GROUP BY Category;
   ## Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
      SELECT Emp_name, Position FROM Employee WHERE Salary > 50000;
   ## List the customer names who registered before 2022-01-01 and have not issued any books yet      
      SELECT Customer.Customer_name FROM Customer INNER JOIN IssueStatus ON Customer.Customer_Id = IssueStatus.Issued_cust 
      WHERE Customer.Reg_Date  < '2022-01-01' AND IssueStatus.Issued_cust IS NULL;
## Display the branch numbers and the total count of employees in each branch. 
      SELECT Branch_no, COUNT(*) AS Totalemployee FROM Employee GROUP BY Branch_no;
## Display the names of customers who have issued books in the month of June 2023.
      SELECT Customer.Customer_name FROM IssueStatus JOIN  Customer ON IssueStatus.Issued_cust = Customer.Customer_Id
      WHERE MONTH(IssueStatus.Issue_date)=6 AND YEAR(IssueStatus.Issue_date)=2023;
## Retrieve book_title from book table containing history. 
      SELECT Book_title FROM Book WHERE Category='Historical';
## Retrieve the branch numbers along with the count of employees for branches having more than 5 employees  
      SELECT Branch_no, COUNT(Emp_Id) AS Count_Emp FROM Employee GROUP BY Branch_no HAVING COUNT(Emp_Id) > 5;
## Retrieve the names of employees who manage branches and their respective branch addresses. 
      SELECT Employee.Emp_name, Branch.Branch_address FROM Branch
      JOIN Employee ON Branch.Manager_Id = Employee.Emp_Id;
##  Display the names of customers who have issued books with a rental price higher than Rs. 25
    SELECT Customer.Customer_name FROM IssueStatus 
    JOIN Customer ON IssueStatus.Issued_cust = Customer.Customer_Id
    JOIN Book ON IssueStatus.Isbn_book = Book.ISBN
    WHERE Rental_Price > 25; 
    
    SELECT Customer.Customer_name FROM IssueStatus 
    JOIN Customer ON IssueStatus.Issued_cust = Customer.Customer_Id
    JOIN Book ON IssueStatus.Isbn_book = Book.ISBN
    WHERE Rental_Price > 21; 

