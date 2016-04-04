create proc csp_q5(@year int,@month int)
as
begin
select tbl_student.student_name,tbl_fee_payment_history.fph_amount from tbl_fee_payment_history inner join tbl_student on tbl_fee_payment_history.fk_student_id=tbl_student.pk_student_id where YEAR(fph_date)=@year and MONTH(fph_date)=@month 
end
go
exec csp_q5 2013,11
go