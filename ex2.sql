CREATE TABLE IF NOT EXISTS Employee(Id int, Salary int);
TRUNCATE TABLE Employee;
INSERT INTO Employee (Id, Salary) values ('1', '100');
INSERT INTO Employee (Id, Salary) values ('2', '200');
INSERT INTO Employee (Id, Salary) values ('3', '300');

###
###
# Write a SQL query to get the second highest salary from the Employee table.
#    +----+--------+
#    | Id | Salary |
#   +----+--------+
#    | 1  | 100    |
#    | 2  | 200    |
#    | 3  | 300    |
#    +----+--------+



# For example, given the above Employee table,
# the query should return 200 as the second highest salary.
# If there is no second highest salary,
# then the query should return null.

SELECT MAX(Salary) AS SecondHighestSalary FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee)
