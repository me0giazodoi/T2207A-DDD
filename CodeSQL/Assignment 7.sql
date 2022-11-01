create table BoPhan(
	MaBoPhan nvarchar(20) primary key,
	TenBoPhan nvarchar(255) not null
);
create table ThietBi(
	TenThietBi nvarchar(255) not null,
	MaThietBi nvarchar(255) primary key,
	SoLuong integer not null check(SoLuong >0)
);
create table NhanVien(
	TenNhanVien nvarchar(255) not null,
	NgaySinh date not null check(NgaySinh < getdate()),
	BangCap nvarchar(255) not null,
	MucLuong decimal(12,4) not null,
	DiaChi ntext not null,
	SoDienThoai varchar(15) not null primary key,
	ChucVu varchar(255) not null,
	MaBoPhan nvarchar(20) not null foreign key references BoPhan(MaBoPhan)
);
create table NhanVien_ThietBi(
	SoDienThoai varchar(15) not null foreign key references NhanVien(SoDienThoai),
	MaThietBi nvarchar(255) not null foreign key references ThietBi(MaThietBi)
);