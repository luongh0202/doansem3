USE master
DROP DATABASE LTT

CREATE DATABASE LTT
GO
USE LTT
go
CREATE TABLE Category(
	CategoryId int primary key identity,
	CategoryName varchar(255) not null,
	Notes text
)
GO
CREATE TABLE Oder(
	OderId int primary key identity,
	CodeOder varchar(50) not null,
	CodeProduct varchar(50) not null,
	UserName nvarchar(250) not null,
	Notes text
)
go
CREATE TABLE Products(
	ProductId int primary key identity,
	ProductName nvarchar(250)not null,
	CodeProduct varchar(50) not null,
	ProductDescription nvarchar(250) ,
	ProductImage nvarchar(250) ,
	video nvarchar(250),
	price float not null,
	quantity int not null,
	detail ntext,
	CategoryId int foreign key references Category(CategoryId)
)
go
CREATE TABLE OderDetail(
	OderDetailId int primary key identity,
	CodeOder varchar(50) not null,
	Detail ntext,
	Quantity int not null,
	OderId int foreign key references oder(OderId),
	ProductId int foreign key references Products(ProductId)
)
go
CREATE TABLE Brand(
	BrandId int primary key identity,
	brandName nvarchar(250) not null,
	ProductId int foreign key references Products(ProductId)
)
go
CREATE TABLE News(
	NewsId int primary key identity,
	[Description] nvarchar(250),
	[Image] nvarchar(250) ,
	Video nvarchar(250),
	Detail ntext
)
go
CREATE TABLE Shop(
	ShopId int primary key ,
	[Description] nvarchar(250),
	[Image] nvarchar(250),
	Video nvarchar(250),
	Detail ntext
)
CREATE TABLE Users (
	UserId int primary key,
	Email varchar(255) not null,
	[Password] varchar(255) not null,
	Name varchar(255) not null,
	UserPhone varchar(20) not null,
	UserAddress text,
	UserStatus bit
)
GO

CREATE TABLE [Role] (
	RoleId nchar(10) primary key,
	Rolename nvarchar(255) not null,
	Rolestatus bit not null
)
CREATE TABLE Business (
	BusinessId int primary key,
	Businessname nvarchar(255) not null,
	Businessstatus bit not null
)
GO
CREATE TABLE Groups (
	GroupId int primary key,
	Groupname nvarchar(255),
	Groupstatus bit 
)
GO
CREATE TABLE Grouprole (
	GroupRoleId int primary key,
	Groupid int foreign key references Groups(GroupId),
	Roleid nchar(10) foreign key references [Role](RoleId),
	Businessid int foreign key references Business(BusinessId),
	Grouprolestatus bit
)
GO
CREATE TABLE [Admins] (
	AdminId int primary key,
	Account varchar(255) not null,
	UserName nvarchar(255) not null,
	[Password] varchar(255) not null,
	Groupid int foreign key references Groups(GroupId),
	UserStatus bit
)
GO
Create table Contact(
	ContactId int primary key identity,
	Name nvarchar(250) not null,
	Email nvarchar(250) not null,
	[Subject] nvarchar(250) not null,
	[Message] ntext not null
)
GO
INSERT INTO [dbo].[Role] ([RoleId],[Rolename],[Rolestatus])
VALUES ('ADD','Them',1)
INSERT INTO [dbo].[Role] ([RoleId],[Rolename],[Rolestatus])
VALUES ('VIEW','Xem',1)
INSERT INTO [dbo].[Role] ([RoleId],[Rolename],[Rolestatus])
VALUES ('UPDATE','Sua',1)
INSERT INTO [dbo].[Role] ([RoleId],[Rolename],[Rolestatus])
VALUES ('DELETE','Xoa',1)
GO
select * from Category
select * from Products