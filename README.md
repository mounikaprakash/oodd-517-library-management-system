# OODD 517 - Library Management System

Admin email: admin@lib.edu

Admin password: Admin@123
 
This is a simple application to simulate the various operations that can be performed in a library.
It consists of following user types - 

1. Admin
2. Librarian
3. Student

The following features have been implemented so far:

### Login Page
-   Students, librarians and the admin can login through the same page by either using their login credentials or with their google account.
-   This pages also provides two seperate links for signing up as either a student or librarian (the librarian will have to be approved by the admin before he/she can log in after signing up).

# Admin

### Admin Homepage
Below are the details of the various links available on the home page when the admin logs in:

1.	Edit Profile – Allows the admin to update his email, username and password

2. Create New librarians/Approve Librarians - Provides the list of librarians along with following features – 
-	View Librarian details
-	Option to approve a Librarian
-	Modify Librarian details
-	Remove a Librarian from the system
-	Add new Librarians

3. View/Add Students - Provides the list of students along with following features – 
-	View Student details
-	Modify Student details
-	Remove a Student from the system
-	Add new Students

4. View/Add Libraries - Provides the list of libraries along with following features – 
-	View Library details
-	Modify Library details
-	Remove a Library from the system
-	Add new Libraries

5. View/Add Books - Provides the list of books along with following functionalities – 
-	Search Books using title / author / subject / published interval (can specify all or no search fields)
-	View Book details
-	Modify Book details
-	Remove a Book from the system
-	Add new Books

6. View Book requests - Provides the list of book requests along with following functionalities (WIP) – 
-	View Book request details
-	Modify book requests
-	Remove book requests
-	Add new book request

7. View Book Histories – Allows the admin to view the history of all books issued and returned (WIP)

8. Add Books to libraries – Allows the admin to add copies of the books in the library - 
- Book count details
-	Modify book counts
-	Remove the book count from the system (i.e., remove a book from a library)
-	Add new book count (i.e., add a book to a library)

7. View overdue fines – Allows the admin to view the list fo students who have books overdue along with the overdue fines

# Librarian

### Librarian Homepage

1. Edit profile - Allows the librarian to update his email, username and password

2. View Book requests - 
- Provides the librarian an option to approve or reject special book requests
- Librarian can modify or delete book requests

3. Change Library Policies (WIP) - 
- Allows Librarians to update the overdue day limit and overdue fines for Library he/she is assigned to 

4. View books
- Allows Librarian to view all books available in the library he/she is assigned to
-	Search books by using title / author / subject / published interval
-	View Book details
-	Modify Book details
-	Remove the book from the system
-	Add new Books

# Student

### Student Homepage

1. Edit profile - Allows the student to update his/her email, username and password

2. Libraries - This shows the list of libraries belonging to the university which the student is a part of. It also allows students to browse books in a particular library and issue/bookmarks those books - 
- View list of accessible libraries with option to browse books in the library
-	Search Books by using title / author / subject / published interval
-	View Book details
-	Issue a Book
-	Bookmark a book

3. View checked out books 
- Allows students to view checked out books
- Provides an option to return books

4. View bookmarked books
- Displays list of books bookmarked by a student

5. View book hold request
- Displays list of book hold requests in case book was not available

6. View pending special book requests 
- Shows the status of special book requests with an option to modify and delete the request

7. View overdue fines
- Shows books which are overdue and the associated fines
