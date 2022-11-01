create table Hang(
	DienThoai varchar(15) not null,
	MaSoHang varchar(20) primary key not null,
	TenHang nvarchar(225) not null,
	DiaChi ntext not null
);
create table SanPham(
	SoThuTu int not null primary key check(SoThuTu >0),
	TenSanPham nvarchar(255) not null,
	MoTaSanPham ntext,
	DonVi nvarchar (225) not null,
	Gia decimal(12,4) not null check(Gia >0),
	SoLuongHienCo int not null check(SoLuongHienCo >0),
	MaSoHang varchar(20) not null foreign key references Hang(MaSoHang)
);
drop table Hang;
drop table SanPham;