create table SanPham(
	MaSoSanPham varchar(20) not null primary key,
	NgaySanXuat date not null check(NgaySanXuat < getdate())
);
create table Loai(
	TenLoaiSanPham nvarchar(255) not null,
	MaLoaiSanPham varchar(20) not null primary key,
	MaSoSanPham varchar(20) not null foreign key references SanPham(MaSoSanPham)
);
create table NguoiChiuTrachNhiem(
	TenNguoiChiuTrachNhiem nvarchar(255) not null,
	MaNguoiChiuTrachNhiem varchar(20) not null primary key,
	MaLoaiSanPham varchar(20) not null foreign key references Loai(MaLoaiSanPham)
);
drop table SanPham;
drop table Loai;
drop table NguoiChiuTrachNhiem;