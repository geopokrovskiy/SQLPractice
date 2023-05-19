CREATE TABLE Person (PersonId int, FirstName varchar(255), LastName varchar(255));
CREATE TABLE Address (AddressId int, PersonId int, City varchar(255), State_ varchar(255));
TRUNCATE TABLE Person;
INSERT INTO Person(PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen');
INSERT INTO Person(PersonId, LastName, FirstName) values ('2', 'Pokrovskiy', 'Georgy');
INSERT INTO Person(PersonId, LastName, FirstName) values ('3', 'Ignatov', 'Mikhail');

TRUNCATE TABLE Address;
INSERT INTO Address(AddressId, PersonId, City, State_) values ('1', '1' , 'New York City', 'New York');
INSERT INTO Address(AddressId, PersonId, City, State_) values ('2', '2' , 'Moscow', 'Moscow');
INSERT INTO Address(AddressId, PersonId, City, State_) values ('1', '3' , 'New York City', 'New York');


### Write a SQL query for a report that provides
### the following information for each person in the Person table,
### regardless if there is an address for each of those people:
### FirstName, LastName, City, State

SELECT FirstName, LastName, City, State_ FROM Person
JOIN Address A on A.PersonId = Person.PersonId
