## PostgreSQL Assignment - 7

## Question Ans

1 - What is PostgreSQL? </br>
Ans: PostgreSQL is an open-source, highly stable database system that provides support to different functions of SQL, like foreign keys, subqueries, triggers, and different user-defined types and functions </br></br>

2 - What is the purpose of a database schema in PostgreSQL? </br>
Ans: In PostgreSQL schema enables a multi-user environment that allows numerous users to access the same database without interference. Schemas are vital when several users use the application and access the database in their way or when various apps utilize the same database. </br></br>

3 - Explain the primary key and foreign key concepts in PostgreSQL. </br>
Ans:
Priamary-key: Primary key is a chosen candidate key that uniquely identifies a record/row in a table. The unique data of row can be easily maintained by Primary-key such as data insertion , deletion and give surety of data authenticity.</br>
Priamary-key: Foreign key links two tables together. A foreign key in one table refers to the primary key of another table. It has a great role in RDBMS for working with many table in SQL</br></br>

4 - What is the difference between the VARCHAR and CHAR data types? </br>
Ans: CHAR: CHAR datatype is used to store character strings of fixed length</br>
VARCHAR: VARCHAR datatype is used to store character strings of variable length</br></br>

5 - Explain the purpose of the WHERE clause in a SELECT statement. </br>
Ans: In PostgreSQL WHERE clause is used to specify a condition while fetching the data from single table or joining with multiple tables. If the given condition is satisfied, only then it returns specific value from the table. You can filter out rows that you do not want included in the result-set by using the WHERE clause. The WHERE clause not only is used in SELECT statement, but it is also used in UPDATE, DELETE statement, etc., which we would examine in subsequent chapters.</br></br>

6 - What are the LIMIT and OFFSET clauses used for? </br>
Ans: LIMIT and OFFSET are used when we want to retrieve only a few records from result of query. LIMIT will retrieve only the number of records specified after the LIMIT keyword, unless the query itself returns fewer records than the number specified by LIMIT. OFFSET is used to skip the number of records from the results.</br></br>

7 - How can you perform data modification using UPDATE statements? </br>
Ans: The PostgreSQL UPDATE Query is used to modify the existing records in a table. Here, WHERE clause is used after UPDATE query to update the selected rows. Otherwise, all the rows would be updated. Generally We use 3 types of keyword in Update, such as</br>
UPDATE -- for update values
SET -- for updating in specific table cell </br>
WHERE -- set of condition by which a table will update</br>
</br></br>

8 - What is the significance of the JOIN operation, and how does it work in PostgreSQL? </br>
Ans: In PostgreSQL, queries have only accessed one table at a time. Queries can access multiple tables at once, or access the same table in such a way that multiple rows of the table are being processed at the same time. Queries that access multiple tables at one time are called JOIN queries. They combine rows from one table with rows from a second table, with an expression specifying which rows are to be paired. For example, to return all the weather records together with the location of the associated city, the database needs to compare the city column of each row of the weather table with the name column of all rows in the cities table, and select the pairs of rows where these values match</br></br>

9 - Explain the GROUP BY clause and its role in aggregation operations </br>
Ans: In PostgreSQL, the GROUP BY clause is used to form the group of rows in a table that have the same values in the columns specified with the GROUP BY clause. The groups can be formed on one or more columns. For example, the GROUP BY query will be used to count the number of Female or Male employees or to get the Gender wise total salaries. We can use aggregate functions such as COUNT(), MAX(), MIN(), SUM(), AVG(), etc. to calculate the group-wise summary in the SELECT query. The result of the GROUP BY clause returns a single row for each value of the GROUP BY column.</br></br>

10 - How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL? </br>
Ans: In PostgreSQL, aggregate functions like COUNT, SUM, and AVG is very important for finding specific information from table row. We ca calculate theses information by using their syntax. </br>
The PostgreSQL COUNT() function returns the count of an expression. </br>
Syntax of COUNT() </br>
SELECT COUNT(column_name) </br>
FROM table_name </br>
WHERE condition(s) </br>
The PostgreSQL SUM() function returns the summed value of an expression.</br>
Syntax of SUM() </br>
SELECT SUM(column_name) </br>
FROM table_name </br>
WHERE condition(s) </br>
The PostgreSQL AVG() function returns the average value of an expression. </br>
Syntax of AVG() </br>
SELECT AVG(column_name) 
FROM table_name
WHERE condition(s)</br></br>

11 - What is the purpose of an index in PostgreSQL, and how does it optimize query performance? </br>
Ans: Indexes are special lookup tables that the database search engine can use to speed up data retrieval. Simply put, an index is a pointer to data in a table. An index in a database is very similar to an index in the back of a book which helps to speed up SELECT queries and WHERE clauses. Indexes can be created using one or multiple columns or by using the partial data depending on your query requirement conditions. </br></br>

12 - Explain the concept of a PostgreSQL view and how it differs from a table. </br>
Ans: View and Table both are integral parts of a relational database, and both terms are used interchangeably. The view is a result of an SQL query and it is a virtual table, whereas a Table is formed up of rows and columns that store the information of any object and be used to retrieve that data whenever required.</br></br>
