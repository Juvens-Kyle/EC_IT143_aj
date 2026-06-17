-- Q2. How to keep track of when a record was last modified?
-- A2. Maybe us ena alter update trigger

-- Q3. did it work?
-- A3. Let's check out..

-- Remove some things if there were already there

DELETE FROM dbo.t_hello_world
where my_message IN('Hello world2', 'Hello world3');

--Checking test rows
Insert into dbo.t_hello_world(my_message)
values ('Hello world2'), ('Hello world3');

--Checking if the trigger works
select t.*
from dbo.t_hello_world as t;

-- try again 

update dbo.t_hello_world set my_message = 'Hello World4'
where my_message = 'Hello world3';

-- see if the trigger worked

select t.*
  from dbo.t_hello_world as t;

  -- Q4. How to keep track of eho last modified a record?
  -- A4. This works for server user and the initial Insert...

  Alter table dbo.t_hello_World
  Add last_modified_by varchar (50) default SUSER_NAME();