insert into DanhBa(HoVaTen,DiaChi,NgaySinh,id)
values(N'Nguyễn Văn An',N'111 Nguyễn Trãi, Thanh Xuân, Hà Nội','1987-11-18',1);
select * from DanhBa;

insert into SDT(SoDienThoai,id)
values(987654321,1),(09873452,1),(09832323,1),(09434343,1);
select * from SDT;

delete from DanhBa;
delete from SDT;

--Bài 4-a
select HoVaTen from DanhBa;
--Bài 4-a
select SoDienThoai from SDT;

--Bài 5-a
select HoVaTen from DanhBa order by HoVaTen asc;
--Bài 5-b
select SoDienThoai from SDT where id in(select id from DanhBa where HoVaTen like N'Nguyễn Văn An');
--Bài 5-c
select HoVaTen from DanhBa where NgaySinh like '2009-12-12';

--Bài 6-a
select count(*) as TổngSốLượngSốĐiệnThoạiCủaMỗiNgườiTrongDanhBạ from SDT where id in (select id from DanhBa);
--Bài 6-b (cần hỏi lại)
select count(*) as TổngSốNgườiTrongDanhBạSinhVàoTháng12 from DanhBa where NgaySinh like '####-12-##';
--Bài 6-c
select a.*,b.SoDienThoai from DanhBa a
inner join SDT b on a.id=b.id
--Bài 6-d
select * from DanhBa a
inner join SDT b on a.id=b.id
where SoDienThoai like '123456789'