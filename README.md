# Pewlett-Hackard-Analysis

## Overview

Pewlett Hackard is seeking to faces a situation were Baby Boomers are retiring soon so they need to make decisions based on data. The fitst thing required in this analysis is a retirement package of the employees that fill in the criteria. On the other hand, they also need to identify the position that will need to be filled in the near future. Using SQL we can manage information in readable and costumized tables for consulting. Moreover, using this queries Pewllett will be able to update the information anytime!

### Resources

- SQL
- pgAdmin


## Results

pgAdmin was used to create the tables in SQL, in the folder Scheme it can be consulted. 

In the folder Queries, the steps to deliver the following tables can be consulted. 

### The Number of Retiring Employees by Title

![Captura de Pantalla 2023-03-01 a la(s) 20 15 16](https://user-images.githubusercontent.com/114015620/222313445-c9c8e451-c3b4-43cd-9fb5-6f9655927610.png)

With this table, Pewllett can identify the position that will need to be filled soon. For example, 2 managers will be needed 9.2 k engineers. This is vital information since the company will need to design a strategy for recruiting or developing talent. This may be the case for upper level positions sucha as manager. For this reason, creating a table with posible candidates for a mentorship program is a great tool. A total of 72,458 employees will be retiring.  


### Mentorship elegibility 

<img width="795" alt="Screen Shot 2023-03-05 at 15 00 34" src="https://user-images.githubusercontent.com/114015620/222985695-0bea4575-84d4-4da2-9f2f-6e6ccb2af04a.png">

Through this table a database was created so that it can be consulted for the mentorship program. The criteria to be met is people who were born between January 1, 1965 and December 31, 1965. Totally 1546 candidates. 

## Summary

The "silver tsunami" will leave aroun 72k empty seats. With the current mentorship proposal form Pewlett it will not be enough. A recruitment strategy will be required to fill so many roles. The mentorship programm generates a good framework for talent development, however, there are not enough mentors that will need special development such as manager roles or seniority ones. For that reason, the scope of mentorship may be broaden. 

I propose the following horizon in the query, going to year 1963.

![image](https://user-images.githubusercontent.com/114015620/222986100-effa25f2-e7f1-4686-8129-f9c54494d9fe.png)

This gives us a result of 18,496 candidates for mentorship program.

![image](https://user-images.githubusercontent.com/114015620/222986128-bfe97b28-3ca3-4137-a3a5-cf158bbb813d.png)

Listed below is a table that summarizes by role the candidates

![image](https://user-images.githubusercontent.com/114015620/222986171-be9efab8-b555-4b88-bf64-d7de6a647937.png)

Certainly pewlett decided correctly on generating a database that is able to monitor their retiring employees. This way with few premises, it can be ensured that the Silver Tsumani doesn't appear again without a contention even preventive one base on data.



