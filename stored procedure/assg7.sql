
create proc csp_q7(@place varchar(20))
as
begin
select teacher_name from tbl_teachers where teacher_name like 's%' and  teacher_place=@place
end
go
exec csp_q7
@place=kannur
go