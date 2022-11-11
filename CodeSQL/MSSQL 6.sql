create table TacGia(
	TenTacGia nvarchar(255) not null,
	idTG int primary key identity(1,1)
);
create table NhaXuatBan(
	TenNhaXuatBan nvarchar(255) not null,
	DiaChiNhaXuatBan nvarchar(255) not null,
	idNXB int primary key identity(1,1)
);
create table Loai(
	LoaiSach nvarchar(255) not null,
	idLS int primary key identity(1,1)
);
create table Sach(
	MaSach varchar(20) primary key,
	TenSach nvarchar(255) not null,
	NoiDungTomTat nvarchar(255) not null,
	SoLanXuatBan int not null,
	GiaBanSach decimal(12,4) not null check(GiaBanSach>=0),
	SoLuong int not null,
	NamXuatBan int not null,
	idTG int not null foreign key references TacGia(idTG),
	idNXB int not null foreign key references NhaXuatBan(idNXB),
	idLS int not null foreign key references Loai(idLS)
);

drop table TacGia;
drop table NhaXuatBan;
drop table Loai;
drop table Sach;

create procedure proc_tg @t nvarchar(255) as
insert into TacGia(TenTacGia)
values(@t);
select * from TacGia;

exec proc_tg @t=N'Eran katz';

create procedure proc_nxb @tnxb nvarchar(255), @dcnxb nvarchar(255) as
insert into NhaXuatBan(TenNhaXuatBan,DiaChiNhaXuatBan)
values(@tnxb,@dcnxb);
select * from NhaXuatBan;

exec proc_nxb @tnxb=N'Tri Thức', @dcnxb=N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội';

create procedure proc_loai @ls nvarchar(255) as
insert into Loai(LoaiSach)
values(@ls);
select * from Loai;

exec proc_loai @ls=N'Khoa học xã hội';

create procedure proc_sach @ms varchar(20), @ts nvarchar(255), @ndtt nvarchar(255), @slxb int,
@gbs decimal(12,4), @sl int, @namxb int, @idTG int, @idNXB int, @idLS int as
insert into Sach(MaSach,TenSach,NoiDungTomTat,SoLanXuatBan,GiaBanSach,SoLuong,NamXuatBan,idTG,idNXB,idLS)
values(@ms,@ts,@ndtt,@slxb,@gbs,@sl,@namxb,@idTG,@idNXB,@idLS);
select * from Sach;

exec proc_sach @ms='B001',@ts=N'Trí tuệ Do Thái',
@ndtt=N'Bạn có muốn biết: Người Do thái sáng tạo ra cái gì và nguồn gốc trí tuệ
của họ xuât phát từ đâu không? Cuốn sách này sẽ dần hé lộ những bí ẩn về sự thông
thái của người Do Thái, của một dân tộc thông tuệ với những phương pháp và kĩ 
thuật phát triển tầng lớp trí thức đã được giữ kín hàng nghìn năm như một bí ẩn
mật mang tính văn hóa', @slxb=1,@gbs=79000,@sl=100,@namxb=2010,@idTG=1,@idNXB=1,@idLS=1;

drop procedure proc_tg;
drop procedure proc_nxb;
drop procedure proc_loai;
drop procedure proc_sach;

--Bài 3
select * from Sach where NamXuatBan>2008 and NamXuatBan<2022;
--Bài 4
select top 10 * from sach order by GiaBanSach desc;
--Bài 5
select * from Sach where TenSach like N'%tin học%';
--Bài 6
select * from Sach where TenSach like N'T%' order by GiaBanSach desc;
--Bài 7
select * from Sach where idNXB in (select idNXB from NhaXuatBan where TenNhaXuatBan like N'Tri Thức');
--Bài 8
select * from NhaXuatBan where idNXB in(select idNXB from Sach where TenSach like N'Trí tuệ Do Thái');
--Bài 9
select a.MaSach,a.TenSach,a.NamXuatBan,b.LoaiSach,c.TenNhaXuatBan from Sach a 
inner join Loai b on a.idLS=b.idLS
inner join NhaXuatBan c on a.idNXB=c.idNXB;
--Bài 10
select top 1 * from Sach order by GiaBanSach desc;
--Bài 11
select top 1 * from Sach order by SoLuong desc;
--Bài 12
select * from Sach where idTG in (select idTG from TacGia where TenTacGia like N'Eran Katz');
--Bài 13
update Sach set GiaBanSach=GiaBanSach-(GiaBanSach*10/100) where NamXuatBan<2008;
--Bài 14
select count(*) from Sach where idNXB in (select idNXB from NhaXuatBan);
--Bài 15
select count(*) from Sach where idLS in (select idLS from Loai);
--Bài 16
select * from Sach;
create index MaSach_index on Sach(MaSach);
create index TenSach_index on Sach(TenSach);
create index NoiDungTomTat_index on Sach(NoiDungTomTat);
create index SoLanXuatBan_index on Sach(SoLanXuatBan);
create index GiabanSach_index on Sach(GiaBanSach);
create index SoLuong_index on Sach(SoLuong);
create index NamXuatBan_index on Sach(NamXuatBan);
create index idTG_index on Sach(idTG);
create index idNXB_index on Sach(idNXB);
create index idLS_index on Sach(idLS);
--Bài 17
create procedure view_all as
select MaSach from Sach;
select TenTacGia from TacGia;
select TenNhaXuatBan from NhaXuatBan;
select GiaBanSach from Sach;

exec view_all;
drop procedure view_all;