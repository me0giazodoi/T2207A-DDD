insert into Hang(MaSoHang,TenHang,DiaChi,DienThoai)
values ('123',N'Asus',N'USA','983232');
select * from Hang;

insert into SanPham(SoThuTu,TenSanPham,MoTaSanPham,DonVi,Gia,SoLuongHienCo,MaSoHang)
values (1,N'Máy Tính T450',N'Máy nhập cũ',N'Chiếc',1000,10,123),
(2,N'Điện Thoại Nokia 5670',N'Điện thoại đang hot',N'Chiếc',200,200,123),
(3,N'Máy In SamSung 450',N'Máy in đang loại bình',N'Chiếc',100,10,123);
select * from SanPham;

--Bài 4-a
select * from Hang;
select TenHang as TênNhàSảnXuất from Hang;
--Bài 4-b
select *from SanPham;
select TenSanPham as TấtCảSảnPhẩm from SanPham;

--Bài 5-a
select * from Hang order by TenHang desc;
--Bài 5-b
select * from SanPham order by Gia desc;
--Bài 5-c
select * from Hang;
select MaSoHang, TenHang, DiaChi, DienThoai from Hang;
--Bài 5-d
select * from SanPham where SoLuongHienCo <11;
--Bài 5-e
select *from SanPham;
select TenSanPham as TấtCảSảnPhẩmCủaHãngAsus from SanPham;

--Bài 6-a
select * from SanPham;
select TenSanPham, SoLuongHienCo from SanPham;
--Bài 6-b
select * from SanPham;
select SoThuTu, TenSanPham from SanPham;