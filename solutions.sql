-- ### Order
-- 1. Find all subjects sorted by subject

            Select subject
            from subjects
            order by subject;
-- 2. Find all subjects sorted by location

            from subjects
            order by location ;

-- ### WhereSelect subject
-- 3. Find the book "Little Women"
            SELECT *
            from books
            where title='Little Women';

-- 4. Find all books containing the word "Python"

            SELECT *
            from books
            where title  LIKE '%Python%';

-- 5. Find all subjects with the location "Main St" sort them by subject
            SELECT *
            from subjects
            where location='Main St'
            order by subject



-- ### Joins

-- 6. Find all books about Computers and list ONLY the book titles
            Select *
            from books b
            inner join subjects s
            on b.subject_id=s.id
            where s.subject like'%Computers%'


-- 7. Find all books and display a result table with ONLY the following columns
-- 	* Book title
-- 	* Author's first name
-- 	* Author's last name
-- 	* Book subject


            SELECT b.title ,a.first_name, a.last_name ,s.subject
            from books b
            join authors a on b.author_id=a.id
            join subjects s on b.subject_id =s.id




-- 8. Find all books that are listed in the stock table
-- 	* Sort them by retail price (most expensive first)
-- 	* Display ONLY: title and price
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
