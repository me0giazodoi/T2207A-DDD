insert into KhachHang(ten,diachi,dienthoai)
values(N'Nguyễn Văn An',N' 111 Nguyễn Trãi, Thanh Xuân, Hà Nội','0987654321');
select * from KhachHang;

insert into SanPham(ten,donvi,mota,gia)
values (N'Máy Tính T450',N'Chiếc',N'Máy nhập mới',1000),
(N'Điện Thoại Nokia 5670',N'Chiếc',N'Điện thoại đang hot',200),
(N'Máy In Samsung 450',N'Chiếc',N'Máy in đang ế',100);
select * from SanPham;

insert into DonHang(ma,ngaydat,tongtien,dienthoai)
values('123','2022-10-26',1500,'0987654321'),
('124','2022-10-26',1500,'0987654321');
select * from DonHang;

insert into DonHang_SanPham(maDH,spid,soluong,thanhtien)
values('123',1,1,1000),
('123',2,2,400),
('123',3,1,100);
select * from DonHang_SanPham;

delete from KhachHang;
delete from SanPham;
delete from DonHang;
delete from DonHang_SanPham;

update SanPham set gia = 150 where id = 4;
update SanPham set gia = gia + 50 where id = 3;
update SanPham set gia = gia + 50, mota=N'Máy xịn mới nhập'
where id = 3;
update SanPham set gia = gia + 50 where gia < 1000;

delete from SanPham where id = 3;
--liệt kê
select * from SanPham;
select ten as productName,donvi as unit,gia as price from SanPham;
--lọc
select * from SanPham where gia >200 and gia < 1000;
select * from SanPham where gia >200 or donvi like N'Chiếc';
select * from SanPham where id = 1 or id = 3 or id = 5 or id = 6;
select * from SanPham where id in (1,3,5,6,7,8,9);
--tìm kiếm
select * from SanPham where ten like N'Máy%';-- start of 
select * from SanPham where ten like N'mới%';-- end of 
select * from SanPham where ten like N'%nh%';-- contain 
--sắp xếp
select * from SanPham order by gia asc;--giá  thấp đến cao;
select * from SanPham order by gia desc;--giá  cao đến thấp;
--lấy theo số lượng
select top 1 * from SanPham order by gia desc;
select top 40 percent * from SanPham order by gia desc;

select top 1 * from DonHang order by tongtien desc;

--thống kê
select count(*) from DonHang;
select count(*) from SanPham;

select sum(tongtien) as doanhthu from DonHang;

select avg(tongtien) as trungbinh from DonHang;

select * from DonHang;
--thống kê dạng nhóm
select count(*),dienthoai from DonHang group by dienthoai;
select sum(tongtien), dienthoai from DonHang group by dienthoai;
select avg(tongtien), dienthoai from DonHang group by dienthoai;