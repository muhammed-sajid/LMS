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

   ## CREATE DATABASE
![image](https://github.com/user-attachments/assets/4ef943bc-8c0b-4696-b31a-7af6584cb006)

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
   - 
     **DESC Branch**
     ![image](https://github.com/user-attachments/assets/d9cc52de-e7bd-45da-9a97-b8fc2cb38445)
     **Insert values into Branch**
     ![image](https://github.com/user-attachments/assets/6a295047-1bac-45bb-bd90-6020655e0d65)
     **Table**
     
     ![image](https://github.com/user-attachments/assets/9a06bf25-3b8c-46f1-bd4a-198096144254)



2. **Employee**
   - Emp_Id (PRIMARY KEY)
   - Emp_name
   - Position
   - Salary
   - Branch_no (FOREIGN KEY referencing Branch_no in Branch table)

     ** DESC Employee **
     ![image](https://github.com/user-attachments/assets/0e1c75fd-c66f-4fda-b984-11fdcb1e5093)

      ** Insert values into Employee **
     ![image](https://github.com/user-attachments/assets/73c3cf9c-918c-457e-819f-d47c04d632f1)

     **Table**
       ![image](https://github.com/user-attachments/assets/9d9774cc-548e-44e7-87b0-9c103d1a4677)

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
  
## Queries
The following SQL queries are used in this project:
1. Retrieve the book title, category, and rental price of all available books.
2. List the employee names and their respective salaries in descending order of salary.
3. Retrieve the book titles and the corresponding customers who have issued those books.
4. Display the total count of books in each category.
5. Retrieve the employee names and their positions for employees whose salaries are above Rs.50,000.
6. List customer names who registered before 2022-01-01 and have not issued any books yet.
7. Display branch numbers and the total count of employees in each branch.
8. Display the names of customers who issued books in June 2023.
9. Retrieve book titles from the Books table containing "history".
10. Retrieve branch numbers and the count of employees for branches with more than 5 employees.
11. Retrieve names of employees who manage branches and their respective branch addresses.
12. Display names of customers who issued books with a rental price higher than Rs. 25.




