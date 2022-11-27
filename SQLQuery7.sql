/* 1.Joins
The join clause allows us to retrieve data from two or more related tables 
into a meaningful result set. 
We can join the table using a SELECT statement and a join condition. 
It indicates how SQL Server can use data from one table to select rows 
from another table. 

In a JOIN query, a condition indicates how two tables are related:

Choose columns from each table that should be used in the join.
A join condition indicates a foreign key from one table and 
its corresponding key in the other table.
Specify the logical operator to compare values from the columns like =, <, or >.
*/

/* 2.INNER JOIN
This JOIN returns all records from multiple tables that 
satisfy the specified join condition. 
It is the simple and most popular form of join and 
assumes as a default join. 

The following syntax illustrates the use of 
INNER JOIN in SQL Server:

SELECT columns    
FROM table1    
INNER JOIN table2 ON condition1 

In this example, we have used the admission_no column 
as a join condition to get the data from both tables. 
Depending on this table, we can see the information 
of the students who have paid their fee.
*/


/* 3.CROSS JOIN
CROSS JOIN in SQL Server combines all of the possibilities of
two or more tables and returns a result that includes every 
row from all contributing tables. It's also known as 
CARTESIAN JOIN because it produces the Cartesian
product of all linked tables. The Cartesian product 
represents all rows present in the first table 
multiplied by all rows present in the second table.

following syntax illustrates the use of CROSS JOIN in SQL Server:

SELECT column_lists    
FROM table1    
CROSS JOIN table2;  
*/


/* 4.OUTER JOIN in SQL Server returns all records from 
both tables that satisfy the join condition. In other words, 
this join will not return only the matching record but also
return all unmatched rows from one or both tables.

We can categories the OUTER JOIN further into three types:

LEFT OUTER JOIN
RIGHT OUTER JOIN
FULL OUTER JOIN
*/

/* 1.LEFT OUTER JOIN
The LEFT OUTER JOIN retrieves all the records from the left table and 
matching rows from the right table. It will return NULL when no 
matching record is found in the right side table. 

The following syntax illustrates the use of LEFT OUTER JOIN in SQL Server:

SELECT column_lists  
FROM table1    
LEFT [OUTER] JOIN table2    
ON table1.column = table2.column;   
*/

/* 2.Right outer join
The RIGHT OUTER JOIN retrieves all the records 
from the right-hand table and matched rows 
from the left-hand table. It will return NULL 
when no matching record is found in the left-hand table. 
*/


/* 3.Full Outer Join
The FULL OUTER JOIN in SQL Server returns a result that includes
all rows from both tables. The columns of the right-hand table
return NULL when no matching 
records are found in the left-hand table. 
And if no matching records are found in the right-hand table,
the left-hand table column returns NULL.

The following syntax illustrates the use of FULL OUTER JOIN in SQL Server:

SELECT column_lists    
FROM table1    
FULL [OUTER] JOIN table2    
ON table1.column = table2.column; 
*/



/* 5.Self join
A table is joined to itself using the SELF JOIN.
It means that each table row is combined with itself and 
with every other table row. The SELF JOIN can be thought 
of as a JOIN of two copies of the same tables. We can do
this with the help of table name aliases to assign a specific 
name to each table's instance. The table aliases enable us
to use the table's temporary name that we are going to use
in the query. 
It's a useful way to extract hierarchical data 
and comparing rows inside a single table.

 Here, we use aliases names for tables because both the 
 table name are the same.

SELECT T1.col_name, T2.col_name...    
FROM table1 T1, table1 T2    
WHERE join_condition;    

In this example, we have used the id and 
city column as a join condition to get the data from both tables.
*/