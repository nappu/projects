create proc csp_q6(@name varchar(20))
as
begin
select teacher_name,
CASE (DATENAME(DW,teacher_doj))
WHEN 'monday' THEN 'monday'
ELSE 'WEEKDAY'
End as DayOfJoin from tbl_teachers where teacher_name=@name
end
go
exec csp_q6
@name='lal'
go