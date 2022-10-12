-- ### Order
-- 1. Find all subjects sorted by subject

    -- SELECT subject 
    -- FROM subjects
    -- ORDER BY subject;
    --result: (all subjects starting from Art ending with Science Fiction)

-- 2. Find all subjects sorted by location
    -- SELECT subject 
    -- FROM subjects
    -- ORDER BY location;
    --result: all subjects starting from History ending with Religon

-- ### Where
-- 3. Find the book "Little Women"
    -- SELECT *
    -- FROM books
    -- WHERE title LIKE 'Little Women';
    --result: 190	"Little Women"	16	6

-- 4. Find all books containing the word "Python"
    -- SELECT *
    -- FROM books
    -- WHERE title LIKE '%Python%';
    --result: 41473	"Programming Python"	7805	4, 41477	"Learning Python"	7805	4

-- 5. Find all subjects with the location "Main St" sort them by subject
    -- SELECT *
    -- FROM subjects
    -- WHERE location LIKE '%Main St%';
    --result: 6	"Drama"	"Main St", 7 "Entertainment"	"Main St", 13	"Romance"	"Main St", 15	"Science Fiction"	"Main St"

-- ### Joins

-- 6. Find all books about Computers and list ONLY the book titles

    -- SELECT title
    -- FROM books
    -- INNER JOIN subjects
    -- ON books.subject_id = subjects.id

    -- WHERE subjects.subject LIKE '%Computer%';

    --result: "Programming Python", "Learning Python", "Perl Cookbook", "Practical PostgreSQL"

-- 7. Find all books and display a result table with ONLY the following columns
-- 	* Book title
-- 	* Author's first name
-- 	* Author's last name
-- 	* Book subject
    -- SELECT books.title, subjects.subject, authors.first_name, authors.last_name
    -- FROM books
    -- INNER JOIN subjects
    -- ON subjects.id = books.subject_id
    -- INNER JOIN authors
    -- ON authors.id = books.author_id;

    --result: starting with "Practical PostgreSQL"	"Computers"	"John"	"Worsley", ending with: 15 "Bartholomew and the Oobleck"	"Children's Books"	"Theodor Seuss"	"Geisel"

-- 8. Find all books that are listed in the stock table
-- 	* Sort them by retail price (most expensive first)
-- 	* Display ONLY: title and price
    -- SELECT books.title, stock.cost
    -- FROM editions
    -- INNER JOIN stock ON editions.isbn=stock.isbn
    -- INNER JOIN books ON editions.book_id = books.id;

    --result: starting 1 "The Cat in the Hat"	30.00, ending "Dynamic Anatomy"	26.00

-- 9. Find the book "Dune" and display ONLY the following columns
-- 	* Book title
-- 	* ISBN number
-- 	* Publisher name
-- 	* Retail price

-- 10. Find all shipments sorted by ship date display a result table with ONLY the following columns:
-- 	* Customer first name
-- 	* Customer last name
-- 	* ship date
-- 	* book title

-- ### Grouping and Counting

-- 11. Get the COUNT of all books
-- 12. Get the COUNT of all Locations
-- 13. Get the COUNT of each unique location in the subjects table. Display the count and the location name. (hint: requires GROUP BY).
-- 14. List all books. Display the book_id, title, and a count of how many editions each book has. (hint: requires GROUP BY and JOIN)
