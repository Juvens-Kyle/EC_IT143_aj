/*****************************************************************************************************************
NAME:    My Script Name
PURPOSE: My script purpose...

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     06/17/2026   Juvens       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

CREATE TRIGGER trg_hello_world_last_mod
ON dbo.t_hello_world
AFTER UPDATE
AS
BEGIN
    UPDATE t
    SET last_modified_date = GETDATE()
    FROM dbo.t_hello_world t
    INNER JOIN Inserted i
        ON t.my_message = i.my_message;
END;
