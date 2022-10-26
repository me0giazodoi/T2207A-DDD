insert into KhachHang(ten,diachi,dienthoai)
values(N'Nguyễn Văn An',N' 111 Nguyễn Trãi, Thanh Xuân, Hà Nội','0987654321');
select * from KhachHang;

insert into SanPham(ten,donvi,mota,gia)
values (N'Máy Tính T450',N'Chiếc',N'Máy nhập mới',1000),
(N'Điện Thoại Nokia 5670',N'Chiếc',N'Điện thoại đang hot',200),
(N'Máy In Samsung 450',N'Chiếc',N'Máy in đang ế',100);
select * from SanPham;

insert into DonHang(ma,ngaydat,tongtien,dienthoai)
values('123','2022-10-26',1500,'0987654321');
select * from DonHang;

insert into DonHang_SanPham(maDH,spid,soluong,thanhtien)
values('123',1,1,1000),
('123',2,2,400),
('123',3,1,100);
select * from DonHang_SanPham;