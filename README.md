# Pewlett-Hackard-Analysis
## Exploring databases with SQL using PostreSQL

### Overview of the Analysis
In Pewlett-Hackard-Analysis, we learned about data modeling, engineering, and analysis. Applying our knowledge of DataFrames and tabular data, we created entity relationship diagrams (ERDs), import data into a database, troubleshot common errors, and created queries that use data to answer questions using SQL techniques.

### Resources

* Data Source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
* Software: Postgres, pgAdmin

### Results

##### Overall Summary

Pewlett Hackard currently has 240,124 employees of which 72,458 are eligible for retirement as defined by having a birth date between 1952 and 1955 inclusive. This represents a whopping 30% of the current PH workforce. Clearly this is a potentially huge problem for PH.

##### Hiring

Over the past four years, the number of new hires has been decreasing.

1. 1999 - 1,514 new hires
2. 1998 - 4,155 new hires
3. 1997 - 6,669 new hires
4. 1996 - 9,574 new hires

So if the all the 72K eligible employees retire in the next four years at an average rate of 13,000 per year, this clearly means HP needs to ramp up resources in their Recruiting and HR departments and find prepare to onboard at least 50% more folks per year than they have for their largest recent hiring year of 1996.

##### Department-wise Retiring

Looking by the departments, we can see that most retiring people are either Senior Engineeers or Senior Staff.

![3](https://user-images.githubusercontent.com/73450637/101270918-dfb22100-374b-11eb-8ecf-1c635b6c7a73.png)

##### Mentors

Availability of mentors can be seen as one way of employee shortfall as they can keep up with monitoring young talents as needed.

![5](https://user-images.githubusercontent.com/73450637/101271014-12a8e480-374d-11eb-909b-687b67a84534.png)

### Summary

Clearly PH has to develop a thorough plan to handle this potentially 'silver tsunami' of senior engineers and senior staff being retiring soon. Internal mentoring will definitely help, but overall a massive recruiting effort will need to take place.

Additional analysis should be done by department. For each department we should identify the number of retiring staff and the number of available mentors, as the percentage difference is likely to vary by department. In short, more analysis by department may lead to discover that different staffing strategies will be needed by different departments.


