# Silver-Tsunami-Prep-Analysis

## Overview

After creating and updating a number of tables for Pewlett Hackard, I had to now help in a separate analysis. I was responsible for identifying employees who were soon to retire and create a table that would be accessible to our supervisor in order for them to take action. I aslo had to create a separate table that highlighted employees that were elligeble for a new cohort in a mentorship program that the company will offer. In order to achieve this I had to use all of the skills that I know in PostgreSQL. In addition, I had to constantly refference the Entity Relationship Diagram (ERD) I had created earlier.

![EmployeeDB](https://user-images.githubusercontent.com/107452167/183328371-9e13ffd5-b089-429f-8666-f0a094921c18.png)

## Results

* I used the ```employees``` and ```titles``` tables to create a new ```retirement_titles``` table that shows titles of employees soon to retire.

* With the ```retirement_titles``` table now created I used the ```distinct on``` function to get the latest job title of each retiring employee and named that table ```unique_titles```.

* This new table now allowed us to create ```retiring_titles``` to show the count of employees per title in the company.

* The last deliverable was to create a ```mentorship_eligibilty``` table that showed current employees elligible for the mentorship program. This was done joining the three following tables, ```employees```,```titles```,```dept_emp``` using the employee number as our reference column.

## Summary

I was able to achieve all that I was for asked succesfully. The first three tables allowed me to get the number of retiring employees by title. Initially getting the distinct titles was challenging as I forgot the on part of the syntax but that was later corrected after some research.

```Select distinct on (emp_no) emp_no, first_name, last_name, title```

Lastly in order to make the data more readable I assigned an alias to our count of titles as I felt a simple count could be confusing.

```SELECT COUNT(title) as total_count```

I am confident that this information I provided will be enough for management to begin an action plan to ensure PH plans accordingly.
