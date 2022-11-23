create table Customer(
	CustomerId int not null primary key,
	Name nvarchar(50),
	City nvarchar(50),
	Country nvarchar(50),
	Phone nvarchar(15),
	Email nvarchar(50)
);
create table CustomerAccount(
	AccountNumber char(9) not null primary key,
	CustomerId int not null foreign key references Customer(CustomerId),
	Balance money not null,
	MinAccount money
);
create table CustomerTransaction(
	TransactionId int not null primary key,
	AccountNumber char(9) foreign key references CustomerAccount(AccountNumber),
	TransactionDate smalldatetime,
	Amount money check(Amount < 1000000 and Amount > 0),
	DepositorWithdraw bit
);

drop table CustomerTransaction;
drop table CustomerAccount;
drop table Customer;

insert into Customer(CustomerId,Name,City,Country,Phone,Email)
values(1,N'Nguyễn Hoàng Hiệp',N'Hà Nội',N'Việt Nam','0396321425','hiepga1243@gmail.com'),
(2,N'Đào Thị Khánh Ly',N'Hải Dương',N'Việt Nam','0522140094','abcxyz12433@gmail.com'),
(3,N'Trần Quốc Hoàn',N'Hà Nội',N'Việt Nam','0384797200','hoanglinhchi@gmail.com');
select * from Customer;

insert into CustomerAccount(AccountNumber,CustomerId,Balance,MinAccount)
values(123,1,888,999),
(124,2,777,666),
(125,3,555,444);
select * from CustomerAccount;

insert into CustomerTransaction(TransactionId,AccountNumber,TransactionDate,Amount,DepositorWithdraw)
values(9,123,2004-4-10,100,1000),
(8,124,2007-12-4,50,10000),
(7,125,2009-2-12,70,100000);
select * from CustomerTransaction;

delete from Customer;
delete from CustomerAccount;
delete from CustomerTransaction;

--Bài 4
select * from Customer where City like N'Hà Nội';
--Bài 5
select a.Name,a.Phone,a.Email,b.AccountNumber,b.Balance from
Customer a inner join CustomerAccount b on a.CustomerId=b.CustomerId;
--Bài 7
create procedure vCustomerTransactions as
select a.Name,b.AccountNumber,c.TransactionDate,c.Amount,c.DepositorWithdraw from Customer a
inner join CustomerAccount b on a.CustomerId=b.CustomerId
inner join CustomerTransaction c on b.AccountNumber=c.AccountNumber ;
exec vCustomerTransactions;
