# MySQL provides a way to return only unique results from our queries
# with the keyword DISTINCT. For example, to find all the unique titles within 
# the company, we could run the following query:
SELECT DISTINCT title FROM titles;
# List the first 10 distinct last name sorted in descending order.
select distinct last_name from employees order by last_name DESC limit 10;

/*Find all previous or current employees hired in the 90s and born on Christmas.
Find the first 5 employees hired in the 90's by sorting by hire date and 
limiting your results to the first 5 records. Write a comment in your code 
that lists the five names of the employees returned. */
select first_name, last_name, hire_date, birth_date from employees
where hire_date between '1990-1-1' and '1999-12-31' and birth_date like '%-12-25'
order by hire_date
limit 5;
# Alselm Cappello, Utz Mandell, Bouch Schreiter, Baocai Kushner, Petter Stroust

/* Try to think of your results as batches, sets, or pages. 
The first five results are your first page. The five after that would be 
your second page, etc. Update the query to find the tenth page of results. */
select first_name, last_name, hire_date, birth_date from employees
where hire_date between '1990-1-1' and '1999-12-31' and birth_date like '%-12-25'
order by hire_date
limit 5 offset 45;



