create table NHANVIEN (
		MNV varchar (5) not null primary key , 
		ten nvarchar (40) not null, 
		diachi nvarchar (50) not null, 
		trangthai tinyint,
		lib varchar (5) ,
		foreign key (lib) references lib(lib)

);
alter table TACPHAM add lib varchar(5);
ALTER TABLE TACPHAM ADD CONSTRAINT FK_lib FOREIGN KEY(lib) REFERENCES lib(lib) ;
create table SINHVIEN(
	MSV varchar(5) not null primary key,
	ten nvarchar (40) not null, 
	diachi nvarchar (50) not null, 
	univ nvarchar(50) not null, 
	nghanh varchar(50) not  null,
	solan_muon int
);
create table TACPHAM(
	MTP varchar(5) not null primary key,
	tieude varchar (40) not null, 
	nhaxuatban varchar(40) not null, 
	nam int , 
	loai nvarchar (40) not null, 
	sosach int, 
	site nvarchar (50)  
);
create table TACGIA(
	MTG varchar (5) not null primary key,
	tenTG varchar(40) not null,
	MTP varchar (5) not null,
	foreign key (MTP) references TACPHAM(MTP)
);
create table MUON(
	MTP varchar (5) not null,
	MSV varchar(5) not null,
	foreign key (MTP) references TACPHAM(MTP),
    foreign key (MSV) references SINHVIEN(MSV),
	ngaymuon date, 
	ngaytra date

);
drop table NHANVIEN ;
create table lib (
	lib varchar (5) not null primary key, 
	lib_ten varchar(40) not null
);