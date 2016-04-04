

create procedure csp_insert_tbl_user_role @username varchar(20)
 as
insert into tbl_user_role([username]) values(@username)
go
execute csp_insert_tbl_user_role
@username='student'
go