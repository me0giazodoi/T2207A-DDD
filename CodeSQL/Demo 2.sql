select * from SinhVien;

create trigger ko_xoa_sv
on SinhVien
after delete
as
	begin
		print'Can not delete Student';
		rollback transaction;
	end

delete from SinhVien;


--trigger
create trigger gia_moi_hon_gia_cu
on SanPham
after update
as
 if (select gia from inserted) < (select gia from deleted)
 rollback transaction;

select  * from SanPham;

update SanPham set gia=1200 where id = 4;

drop trigger gia_moi_hon_gia_cu;