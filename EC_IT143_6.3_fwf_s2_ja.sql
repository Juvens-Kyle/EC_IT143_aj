--- Q1. How to keep track of when  a record was last modified?
-- A1. This works for the initial inserts...

--Alter table dbo.t_hello_world
-- add last_modified_date Datetime default Getdate();

--- Q2. How to keep track of when a record was last modified?
-- A2. Maybe use an after update trigger? 


