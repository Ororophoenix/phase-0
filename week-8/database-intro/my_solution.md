1.select * FROM states;

2.select * from regions;

3.select state_name, population from states;

4.select state_name from states
   where region_id= 7;

5.select state_name from states
  where region_id= 7;

6.select state_name, population_density from states
  where population_density>50
   order by population_density;

7.select state_name from states
   ...> where population between 1000000 and 1500000;

8.select state_name, region_id from states
   ...> order by region_id ASC;

9.

![clueless](../../clueless.png)

Reflection
What are databases for?
  Databases are for storing large quantities of information that can be accessed easily and quickly.
What is a one-to-many relationship?
  Its where something can be in one category but that category has multiple options.
What is a primary key? What is a foreign key? How can you determine which is which?
  A primary key is the word that esentially identifies each record in a database. A foreign key is the name of a field that is connected to aother table.
How can you select information out of a SQL database? What are some general guidelines for that?
  you use select. It can be lowercase or uppercase but you have to select the column that you want and the table you want to select it from.