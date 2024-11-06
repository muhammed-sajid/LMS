# Library Management System
Library Management System

## Project Overview
The **Library Management System** (LMS) is designed to manage and track library operations such as book cataloging, lending, user management, and inventory tracking. This system keeps information about books, their availability, associated branches, employee details, and customer data, helping streamline library activities and data retrieval through SQL queries.

## Features
1. **Branch Management**: Track library branches, including branch number, manager, and contact information.
2. **Employee Management**: Manage employee data such as name, position, salary, and branch association.
3. **Book Cataloging**: Maintain a database of books with information on ISBN, title, category, rental price, author, and publisher.
4. **Customer Records**: Keep track of customer information, including name, address, registration date, and book issuing status.
5. **Issue and Return Tracking**: Monitor book issues and returns to ensure smooth operations and track customer borrowing history.

## Database Schema
The system includes the following tables:
- **Branch**: Information about each library branch.
- **Employee**: Employee details and branch association.
- **Books**: Information about each book, its status, and availability.
- **Customer**: Customer details and registration information.
- **IssueStatus**: Tracks issued books and the customers who have borrowed them.
- **ReturnStatus**: Tracks returned books.

### Database Schema Structure
1. **Branch**
   - Branch_no (PRIMARY KEY)
   - Manager_Id
   - Branch_address
   - Contact_no

2. **Employee**
   - Emp_Id (PRIMARY KEY)
   - Emp_name
   - Position
   - Salary
   - Branch_no (FOREIGN KEY referencing Branch_no in Branch table)

3. **Books**
   - ISBN (PRIMARY KEY)
   - Book_title
   - Category
   - Rental_Price
   - Status
   - Author
   - Publisher

4. **Customer**
   - Customer_Id (PRIMARY KEY)
   - Customer_name
   - Customer_address
   - Reg_date

5. **IssueStatus**
   - Issue_Id (PRIMARY KEY)
   - Issued_cust (FOREIGN KEY referencing Customer_Id in Customer table)
   - Issued_book_name
   - Issue_date
   - Isbn_book (FOREIGN KEY referencing ISBN in Books table)

6. **ReturnStatus**
   - Return_Id (PRIMARY KEY)
   - Return_cust
   - Return_book_name
   - Return_date
   - Isbn_book2 (FOREIGN KEY referencing ISBN in Books table)

