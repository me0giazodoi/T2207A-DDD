create table NhaCungCap(
	MaNhaCC varchar(20) primary key,
	TenNhaCC nvarchar (255) not null,
	Diachi ntext not null,
	SoDT varchar(15) not null,
	MaSoThue varchar(20) not null
);
create table LoaiDichVu(
	MaLoaiDV varchar(20) primary key,
	TenLoaiDV nvarchar(255) not null
);
create table MucPhi(
	MaMP varchar(20) primary key,
	DonGia decimal(12,4) not null check(DonGia >=0),
	MoTa ntext
);
create table DongXe(
	DongXe varchar(30) primary key,
	HangXe varchar(30) not null,
	SoChoNgoi integer not null
);
create table DangKyCungCap(
	MaDKCC varchar(20) primary key,
	NgayBatDauCungCap date not null check(NgayBatDauCungCap < getdate()),
	NgayKetThucCungCap date not null check(NgayKetThucCungCap <= getdate()),
	SoLuongXeDangKy integer not null check (SoLuongXeDangKy >0),
	MaNhaCC varchar(20) not null foreign key references NhaCungCap(MaNhaCC),
	MaLoaiDV varchar(20) not null foreign key references LoaiDichVu(MaLoaiDV),
	MaMP varchar(20) not null foreign key references MucPhi(MaMP),
	DongXe varchar(30) not null foreign key references DongXe(DongXe)
);
drop table DangKyCungCap;
drop table NhaCungCap;
drop table LoaiDichVu;
drop table MucPhi;
drop table DongXe
