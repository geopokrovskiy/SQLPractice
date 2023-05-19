CREATE TABLE IF NOT EXISTS Employee3 (Id int, Name varchar(255), Salary int, ManagerId int);
TRUNCATE TABLE Employee3;
INSERT INTO Employee3 (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3');
INSERT INTO Employee3 (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4');
INSERT INTO Employee3 (Id, Name, Salary) values ('3', 'Sam', '60000');
INSERT INTO Employee3 (Id, Name, Salary) values ('4', 'Max', '90000');

### The Employee table holds all employees including their managers.
# Every employee has an Id, and there is also a column for the manager Id.

#+----+-------+--------+-----------+
#| Id | Name  | Salary | ManagerId |
#+----+-------+--------+-----------+
#| 1  | Joe   | 70000  | 3         |
#| 2  | Henry | 80000  | 4         |
#| 3  | Sam   | 60000  | NULL      |
#| 4  | Max   | 90000  | NULL      |
#+----+-------+--------+-----------+


#Given the Employee table,
# write a SQL query that finds out employees
# who earn more than their managers. For the above table,
# Joe is the only employee who earns more than his manager.


#+----------+
#| Employee |
#+----------+
#| Joe      |
#+----------+

SELECT Employee3.Name FROM Employee3
JOIN employee3 a ON Employee3.ManagerId = a.Id
WHERE Employee3.Salary > a.Salary;




