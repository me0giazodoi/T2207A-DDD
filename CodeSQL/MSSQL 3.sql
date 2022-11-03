create table KhachHang(
	TenKhachHang nvarchar(255) not null,
	SoChungMinhThu varchar(20) not null primary key,
	DiaChi ntext not null
);
create table ThueBao(
	SoThueBao varchar(20) not null primary key,
	LoaiThueBao nvarchar(255) not null,
	NgayDangKi date  not null,
	SoChungMinhThu varchar(20) not null foreign key references KhachHang(SoChungMinhThu)
);
drop table KhachHang;
drop table ThueBao;