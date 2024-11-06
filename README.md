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
## 1. **Branch**
   - Branch_no (PRIMARY KEY)
   - Manager_Id
   - Branch_address
   - Contact_no
     
     **DESC Branch**
     ![image](https://github.com/user-attachments/assets/d9cc52de-e7bd-45da-9a97-b8fc2cb38445)
     **Insert values into Branch**
     ![image](https://github.com/user-attachments/assets/6a295047-1bac-45bb-bd90-6020655e0d65)
     **Table**
     
     ![image](https://github.com/user-attachments/assets/9a06bf25-3b8c-46f1-bd4a-198096144254)



## 2. **Employee**
   - Emp_Id (PRIMARY KEY)
   - Emp_name
   - Position
   - Salary
   - Branch_no (FOREIGN KEY referencing Branch_no in Branch table)

     **DESC Employee**
     ![image](https://github.com/user-attachments/assets/0e1c75fd-c66f-4fda-b984-11fdcb1e5093)

      **Insert values into Employee**
     ![image](https://github.com/user-attachments/assets/73c3cf9c-918c-457e-819f-d47c04d632f1)

     **Table**
       ![image](https://github.com/user-attachments/assets/9d9774cc-548e-44e7-87b0-9c103d1a4677)

## 3. **Books**
   - ISBN (PRIMARY KEY)
   - Book_title
   - Category
   - Rental_Price
   - Status
   - Author
   - Publisher
     
   **DESC Books**
     ![image](https://github.com/user-attachments/assets/47bf9c41-8552-4edf-a218-a6fa57169f2d)

   **Insert values into Books**
    ![image](https://github.com/user-attachments/assets/ca108258-22aa-4e10-b4c0-5f57be4f576a)

   **Table**
   ![image](https://github.com/user-attachments/assets/95e08ade-94aa-452a-9cd0-d8cd6c648be0)


## 4. **Customer**
   - Customer_Id (PRIMARY KEY)
   - Customer_name
   - Customer_address
   - Reg_date
     
   **DESC Customer**
     ![image](https://github.com/user-attachments/assets/ea74d297-a7fa-4399-92c6-6d90c6290871)

   **Insert values into Customer**
   ![image](https://github.com/user-attachments/assets/5276bcdd-21cc-4fef-bf29-605ec627f85b)

   **Table**
   ![image](https://github.com/user-attachments/assets/37ba8cd7-41d5-4bf2-b2e2-3ce4158e7f59)


## 5. **IssueStatus**
   - Issue_Id (PRIMARY KEY)
   - Issued_cust (FOREIGN KEY referencing Customer_Id in Customer table)
   - Issued_book_name
   - Issue_date
   - Isbn_book (FOREIGN KEY referencing ISBN in Books table)

     **DESC IssueStatus**
     ![image](https://github.com/user-attachments/assets/dc129330-e323-418a-9367-f02f9702c997)

     **Insert values into IssueStatus**
     ![image](https://github.com/user-attachments/assets/833b3c5c-69f8-4d3f-9fd3-dc687fcf1caa)

     **Table**
     ![image](https://github.com/user-attachments/assets/8e7bd62f-b0fe-4cf4-bad7-e56ea4737157)
  

## 6. **ReturnStatus**
   - Return_Id (PRIMARY KEY)
   - Return_cust
   - Return_book_name
   - Return_date
   - Isbn_book2 (FOREIGN KEY referencing ISBN in Books table)

     **DESC ReturnStatus**
     ![image](https://github.com/user-attachments/assets/1b5d02cb-e86c-4f56-910c-7e041b33ef86)

     **Insert values into ReturnStatus**
     ![image](https://github.com/user-attachments/assets/914ef126-b080-4d50-b3f8-14444c733008)

     **Table**
     ![image](https://github.com/user-attachments/assets/be284d59-8560-4339-9243-4dcbb237dc29)

## Queries
The following SQL queries are used in this project:

**1. Retrieve the book title, category, and rental price of all available books.**
    ![image](https://github.com/user-attachments/assets/52e87342-16ec-440c-9f8c-12681200f90c)
     
2. List the employee names and their respective salaries in descending order of salary.
   ![image](https://github.com/user-attachments/assets/90fc14ac-74c9-4617-8f61-8f16ce6b1683)

   
3. Retrieve the book titles and the corresponding customers who have issued those books.
   ![image](https://github.com/user-attachments/assets/e300ce8a-1868-4e0c-aa83-32e643874650)


4. Display the total count of books in each category.
   ![image](https://github.com/user-attachments/assets/2925e54e-aebd-4e19-8317-431b99537ba4)

5. Retrieve the employee names and their positions for employees whose salaries are above Rs.50,000.
   ![image](https://github.com/user-attachments/assets/2d7b9cc7-4395-4182-bebf-bbb5042cb999)

6. List customer names who registered before 2022-01-01 and have not issued any books yet.
   ![image](https://github.com/user-attachments/assets/ac4ef2f5-f2cb-4a80-adb0-fdd05fbde1e9)

7. Display branch numbers and the total count of employees in each branch.
   ![image](https://github.com/user-attachments/assets/f05bf85a-9884-4a5b-b38b-000ec8f5ef65)

8. Display the names of customers who issued books in June 2023.
   ![image](https://github.com/user-attachments/assets/bb8c96a8-49fc-4605-a309-af4e46ccd6e5)

9. Retrieve book titles from the Books table containing "history".
    ![image](https://github.com/user-attachments/assets/c4e13e8c-ea02-4fbf-9619-004b2b22a048)

10. Retrieve branch numbers and the count of employees for branches with more than 5 employees.
     ![image](https://github.com/user-attachments/assets/834dca35-ed81-47f6-8720-cddb53611a7c)

11. Retrieve names of employees who manage branches and their respective branch addresses.
    ![image](https://github.com/user-attachments/assets/76da6557-b052-4a08-a423-60913a73d945)

12. Display names of customers who issued books with a rental price higher than Rs. 25.
    ![image](https://github.com/user-attachments/assets/94d85d91-02d0-45d1-b6f3-53cef89fc6df)

    ![image](https://github.com/user-attachments/assets/ebc51c14-1377-4092-9a9a-7cfd0161ca16)





