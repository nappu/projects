create proc csp_dept_head @name varchar(20),@active varchar(20),@uname varchar(20),@upass varchar(20),
@fk_role_id int,@tname varchar(20),@tdate date,@tplace varchar(20),@thid int,@tactive varchar(20) 
as
begin
declare @scope int
insert into tbl_department(department_name,department_active)values(@name,@active)
select @scope=scope_identity()
insert into tbl_user(username,password,fk_role_id)values(@uname,@upass,@fk_role_id)
insert into tbl_teachers(fk_user_id,teacher_name,fk_dept_id,teacher_doj,teacher_place,
teacher_head_id,teacher_active)values(SCOPE_IDENTITY(),@tname,@scope,@tdate,@tplace,@thid,@tactive)
end
go
exec csp_dept_head
@name='mechanical',
@active='true',
@uname='hafshin',
@upass='halo123',
@fk_role_id=1,
@tname='sheela',
@tdate='2013-08-11',
@tplace='kannur',
@thid=2,
@tactive='active'
go

select * from tbl_user
select * from tbl_department
select * from tbl_teachers
