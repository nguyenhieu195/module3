create database ql_sinhvien;

create table class(
	id int primary key,
    name nvarchar(50)
);

create table teacher(
	id int primary key,
    name nvarchar(50),
    age int,
    country nvarchar(50)
);

select * from class;
select * from teacher;


