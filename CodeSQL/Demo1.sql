select * from SanPham;
create index gia_index on SanPham(gia);

create procedure view_all as
select * from KhachHang;
select * from DonHang;
select * from SanPham;

exec view_all;

create procedure proc_kh @t nvarchar(100),
@dc nvarchar(255),@dt varchar(20) as
insert into KhachHang(ten,diachi,dienthoai)
values(@t,@dc,@dt);
select * from KhachHang;
exec proc_kh @t=N'Nguyễn Việt Cường',@dc=N'20 Quang Trung',@dt='02922992';

create procedure proc_sp @t nvarchar(255),@dv nvarchar(50), @mt ntext, @gia decimal(12,4) as
insert into SanPham(ten,donvi,mota,gia)
values(@t,@dv,@mt,@gia);
select * from SanPham;

exec proc_sp @t=N'Máy tính', @dv=N'Chiếc', @mt=N'Sắp hỏng', @gia=1000;
--drop procedure proc_sp;