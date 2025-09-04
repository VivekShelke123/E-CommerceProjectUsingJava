create database EComDB

use EComDB

create table UserInfoTable(
	UserId int Primary key identity(2210,1),
	UserName varchar(20),
	UserEmail varchar(20),
	UserPass varchar(20),
	UserAdd varchar(40)
)

alter table UserInfoTable add UserPhone varchar(10);

alter table UserInfoTable add constraint UNK_Email unique(UserEmail);

select * from UserInfoTable