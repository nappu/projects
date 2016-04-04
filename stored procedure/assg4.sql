create proc csp_fee(@id datetime)
as
begin
select SUM(fph_amount) as total_amt_inyear from tbl_fee_payment_history where @id=year(fph_date);
end
go 
select * from tbl_fee_payment_history 

exec csp_fee
@id=2013
go

