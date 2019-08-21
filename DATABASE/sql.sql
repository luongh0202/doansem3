CREATE DATABASE LTT
GO
USE LTT

CREATE TABLE categories(
 id int primary key,
 cateroryName varchar(255) not null,
 notes text,
 categoryStatus bit
)
go
CREATE TABLE categoryProduct(
 id int primary key,
 categoryProductName varchar(255) not null,
 notes text,
 categoryId int foreign key references categories(id),
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
CREATE TABLE oderDetail(
 id int primary key,
 codeOder varchar(50) not null,
 codeProduct varchar(50) not null,
 productName nvarchar(250) not null,
 userName nvarchar(250) not null,
 productDescription nvarchar(250) not null,
 productImage nvarchar(250) not null,
 video nvarchar(250),
 price float not null,
 quantity int not null,
 detail ntext,
 oderId int foreign key references oder(id)
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
 categoryProductId int foreign key references categoryProduct(id),
 oderDetailId int foreign key references oderDetail(id)

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
  userAvatar varchar(255) not null ,
  userBirthday date DEFAULT NULL,
  userGender bit,
  userIdCard varchar(20) not null,
  userPhone varchar(20) not null,
  userProvince text,
  userDistricts text,
  userWard text,
  userAddress text,
  notes text,
  userLevel bit,
  userStatus bit
)
GO
CREATE TABLE typeareas (
  id int primary key,
  typeAreaName varchar(255) not null,
  notes text,
  typeAreaStatus bit
)
GO
CREATE TABLE provinces (
  id int primary key,
  provinceName varchar(255) not null,
  typeArea_id int not null,
  provinceStatus bit
)
GO
CREATE TABLE districts (
  id int primary key,
  districtName varchar(255) not null,
  typeArea_id int not null,
  province_id int not null,
  districtStatus bit
)
GO
CREATE TABLE wards (
  id int primary key,
  wardName varchar(255) not null,
  typeArea_id int not null,
  district_id int not null,
  wardStatus bit
)
GO

