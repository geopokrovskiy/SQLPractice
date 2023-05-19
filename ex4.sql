CREATE TABLE IF NOT EXISTS emails(Id int, Email varchar(255));
TRUNCATE TABLE emails;
INSERT INTO emails (Id, Email) values (1, 'a@b.com');
INSERT INTO emails (Id, Email) values (2, 'c@d.com');
INSERT INTO emails (Id, Email) values (3, 'a@b.com');


/**
  Write a SQL query to find all duplicate emails in a table named Person.
+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+

For example, your query should return the following for the above table:
+---------+
| Email   |
+---------+
| a@b.com |
+---------+

Note: All emails are in lowercase.

 */
SELECT email FROM(
    SELECT email, COUNT(email) AS email_count FROM emails
    GROUP BY email) AS e_ec
WHERE email_count> 1;

