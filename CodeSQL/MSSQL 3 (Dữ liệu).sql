insert into KhachHang(TenKhachHang,SoChungMinhThu,DiaChi)
values(N'Nguyễn Nguyệt Nga',123456789,N'Hà Nội');
select * from KhachHang;

insert into ThueBao(SoThueBao,LoaiThueBao,NgayDangKi,SoChungMinhThu)
values(123456789,N'Trả trước','2002-12-12',123456789);
select * from ThueBao;

--Bài 4-a
select * from KhachHang;
select TenKhachHang, SoChungMinhThu, DiaChi from KhachHang;
--Bài 4-b
select * from ThueBao;
select SoThueBao, LoaiThueBao, NgayDangKi from ThueBao;

--Bài 5-a
select * from ThueBao where SoThueBao in (select SoThueBao from ThueBao where SoThueBao like '123456789');
--Bài 5-b
select * from KhachHang where SoChungMinhThu in (select SoChungMinhThu from KhachHang where SoChungMinhThu like '123456789');
--Bài 5-c
select SoThueBao from ThueBao where SoThueBao in (select SoThueBao from ThueBao where SoChungMinhThu like '123456789');
--Bài 5-d
select SoThueBao from ThueBao where SoThueBao in (select SoThueBao from ThueBao where NgayDangKi like '2002-12-12');
--Bài 5-e
select SoThueBao from ThueBao where SoChungMinhThu in (select SoChungMinhThu from KhachHang where DiaChi like N'Hà Nội');

--Bài 6-a
select count(*) as TổngSốKháchHàng from KhachHang;
--Bài 6-b
select count(*) as TổngSốThuêBao from ThueBao;
--Bài 6-c
select count(*) as TổngSốThuêBaoĐăngKi from ThueBao;
select SoThueBao from ThueBao where SoThueBao in (select SoThueBao from ThueBao where NgayDangKi like '2002-12-12');
--Bài 6-d
select * from ThueBao a
left join KhachHang b on a.SoChungMinhThu = b.SoChungMinhThu