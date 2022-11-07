create table NguoiChiuTrachNhiem(
	TenNguoiChiuTrachNhiem nvarchar(255) not null,
	MaNguoiChiuTrachNhiem varchar(20) not null primary key,
);
create table Loai(
	TenLoaiSanPham nvarchar(255) not null,
	MaLoaiSanPham varchar(20) not null primary key,
	MaNguoiChiuTrachNhiem varchar(20) not null foreign key references NguoiChiuTrachNhiem(MaNguoiChiuTrachNhiem)
);
create table SanPham(
	MaSoSanPham varchar(20) not null primary key,
	NgaySanXuat date not null check(NgaySanXuat < getdate()),
	MaNguoiChiuTrachNhiem varchar(20) not null foreign key references NguoiChiuTrachNhiem(MaNguoiChiuTrachNhiem),
	MaLoaiSanPham varchar(20) not null foreign key references Loai(MaLoaiSanPham)
);
drop table NguoiChiuTrachNhiem;
drop table Loai;
drop table SanPham;