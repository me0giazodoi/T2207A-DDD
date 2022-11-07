insert into SanPham(MaSoSanPham,NgaySanXuat)
values('Z37111111','2009-12-12');
select * from SanPham;

insert into Loai(TenLoaiSanPham,MaLoaiSanPham,MaSoSanPham)
values(N'Máy tính sách tay Z37','Z37E','Z37111111');
select * from Loai;

insert into NguoiChiuTrachNhiem(TenNguoiChiuTrachNhiem,MaNguoiChiuTrachNhiem,MaLoaiSanPham)
values(N'Nguyễn Văn An','987688','Z37E');
select * from NguoiChiuTrachNhiem;

--Bài 4-a
select * from Loai;
--Bài 4-b
select * from SanPham;
--Bài 4-c
select * from NguoiChiuTrachNhiem;

--Bài 5-a
select * from Loai order by TenLoaiSanPham asc;
--Bài 5-b
select * from NguoiChiuTrachNhiem order by TenNguoiChiuTrachNhiem asc;
--Bài 5-c
select TenLoaiSanPham from Loai where MaLoaiSanPham like N'Z37E';
--Bài 5-d
select TenLoaiSanPham from Loai where MaLoaiSanPham in
(select MaLoaiSanPham from NguoiChiuTrachNhiem where TenNguoiChiuTrachNhiem like N'Nguyễn Văn An') order by MaSoSanPham desc;

--Bài 6-a
select count(*) from Loai;
--Bài 6-b

--Bài 6-c
select * from SanPham a
left join Loai b on a.MaSoSanPham = b.MaSoSanPham
--Bài 6-d
select * from SanPham a
left join Loai b on a.MaSoSanPham = b.MaSoSanPham
left join NguoiChiuTrachNhiem c on b.MaLoaiSanPham = c.MaLoaiSanPham