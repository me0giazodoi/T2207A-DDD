create table DanhBa(
	HoVaTen nvarchar(255) not null,
	DiaChi ntext not null,
	NgaySinh date not null check(NgaySinh < getdate()),
	id integer primary key
);

create table SDT(
	SoDienThoai integer primary key,
	id integer not null foreign key references DanhBa(id)
);

drop table SDT;
drop table DanhBa;