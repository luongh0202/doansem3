USE master
DROP DATABASE LTT

CREATE DATABASE LTT
GO
USE LTT
CREATE TABLE category(
	id int primary key,
	categoryName varchar(255) not null,
	notes text,
	categoryStatus bit
)
GO
CREATE TABLE oder(
	id int primary key,
	codeOder varchar(50) not null,
	codeProduct varchar(50) not null,
	userName nvarchar(250) not null,
	odertStatus bit
)
go
CREATE TABLE products(
	id int primary key,
	productName nvarchar(250)not null,
	codeProduct varchar(50) not null,
	productDescription nvarchar(250) not null,
	productImage nvarchar(250) not null,
	video nvarchar(250),
	price float not null,
	quantity int not null,
	detail ntext,
	categoryId int foreign key references category(id)
)
go
CREATE TABLE oderDetail(
	id int primary key,
	codeOder varchar(50) not null,
	detail ntext,
	quantity int not null,
	oderId int foreign key references oder(id),
	productId int foreign key references products(id)
)
go
CREATE TABLE brand(
	id int primary key,
	brandName nvarchar(250) not null,
	productId int foreign key references products(id)
)
go
CREATE TABLE news(
	id int primary key,
	productName nvarchar(250) not null,
	codeProduct varchar(50) not null,
	[description] nvarchar(250) not null,
	[image] nvarchar(250) not null,
	video nvarchar(250),
	detail ntext
)
go
CREATE TABLE shop(
	id int primary key,
	[description] nvarchar(250),
	[image] nvarchar(250),
	video nvarchar(250),
	detail ntext
)
CREATE TABLE users (
	id int primary key,
	email varchar(255) not null,
	password varchar(255) not null,
	name varchar(255) not null,
	userPhone varchar(20) not null,
	userAddress text,
	userStatus bit
)
GO

CREATE TABLE [role] (
	id int primary key,
	rolename nvarchar(255) not null,
	rolestatus bit not null
)
CREATE TABLE business (
	id int primary key,
	businessname nvarchar(255) not null,
	businessstatus bit not null
)
GO
CREATE TABLE groups (
	id int primary key,
	groupname nvarchar(255),
	groupstatus bit 
)
GO
CREATE TABLE grouprole (
	id int primary key,
	groupid int foreign key references groups(id),
	roleid int foreign key references [role](id),
	businessid int foreign key references business(id),
	grouprolestatus bit
)
GO
CREATE TABLE [admins] (
	id int primary key,
	account varchar(255) not null,
	UserName nvarchar(255) not null,
	[password] varchar(255) not null,
	groupid int foreign key references groups(id),
	userStatus bit
)
GO
select * from category
select * from products