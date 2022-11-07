insert into NguoiChiuTrachNhiem(TenNguoiChiuTrachNhiem,MaNguoiChiuTrachNhiem)
values(N'Nguyễn Văn An','987688');
select * from NguoiChiuTrachNhiem;

insert into Loai(TenLoaiSanPham,MaLoaiSanPham,MaNguoiChiuTrachNhiem)
values(N'Máy tính sách tay Z37','Z37E','987688');
select * from Loai;

insert into SanPham(MaSoSanPham,NgaySanXuat,MaNguoiChiuTrachNhiem,MaLoaiSanPham)
values('Z37111111','2009-12-12','987688','Z37E');
select * from SanPham;

delete from NguoiChiuTrachNhiem;
delete from Loai;
delete from SanPham;

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
(select MaLoaiSanPham from NguoiChiuTrachNhiem where TenNguoiChiuTrachNhiem like N'Nguyễn Văn An') order by MaLoaiSanPham desc;

--Bài 6-a
select count(*) from Loai;
--Bài 6-b

--Bài 6-c
select * from Loai a
left join SanPham b on a.MaLoaiSanPham = b.MaLoaiSanPham
--Bài 6-d
select * from NguoiChiuTrachNhiem a
left join Loai b on a.MaNguoiChiuTrachNhiem = b.MaNguoiChiuTrachNhiem
left join SanPham c on b.MaLoaiSanPham = c.MaLoaiSanPham