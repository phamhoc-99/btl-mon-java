 create database QuanLyThuoc

 use QuanLyThuoc

 create table taikhoan(
 username nchar(10) primary key,
 password int
 )

 create table khachhang(
 IDKH nchar(10) primary key not null,
 tenKH nvarchar(50),
 sdtKH nchar(11),
 diaChiKH nvarchar(50)
 )

 create table nhacungcap(
 IDNCC nchar(10) not  null primary key,
 tenNCC nvarchar(50) not null,
 sdtNCC nchar(10),
 ngayBDCC Date,
 emailNCC nchar(30),
 diachiNCC nvarchar(50)
 )

 create table nhanvien(
 IDNV nchar(10) not null primary key,
 TenNV nvarChar(50),
 ngaySinh Date,
 queQuan nchar(50),
 sdtNV nchar(10)
 )

 create table thuoc(
 IDThuoc nchar(10) not null primary key,
 IDNCC nchar(10) not null,
 tenThuoc nchar(50) not null,
 ngayNhap Date, 
 ngayHetHan Date,
 donViTinh nchar(10),
 loaiThuoc nchar(40),
 soluong int,
 constraint PK_NCC foreign key(IDNCC) references nhacungcap(IDNCC)
 )

 create table hoadon(
 IDHD nchar(10) primary key not null,
 IDNV nchar(10) not null,
 IDThuoc nchar(10) not null,
 soLuong int ,
 nguoiLap nvarchar(50),
 IDKH nchar(10) not null,
 ngayLap Date,
 donGia float,
 constraint FK_nhanvien foreign key(IDNV) references nhanvien(IDNV),
 constraint FK_thuoc foreign key(IDThuoc) references thuoc(IDThuoc),
 constraint FK_khachhang foreign key(IDKH) references khachhang(IDKH)
 )

 insert into taikhoan values('admin','123456')
 insert into taikhoan values('user','123456')
 
 insert into khachhang values('KH01','Pham Hoc','0311112222','Ha Noi')
 insert into khachhang values('KH02','Do Thom','0322228888','Bac Ninh')
 insert into khachhang values('KH03','Le Thuy','0387654321','Thanh Hoa')
 
 insert into nhacungcap values('NCC01','Cong ty duoc Vinh Kim','0955554444','2/20/2018','vinhkim@gmail.com','Ha Noi')
 insert into nhacungcap values('NCC02','Cong ty Sam Ngoc Linh','0911113333','9/6/2019','ngoclinh@gmail.com','Ha Noi')
 insert into nhacungcap values('NCC03','Cong ty co Yen Bai','0922334455','5/12/2018','yenbai@gmail.com','Yen Bai')
 insert into nhacungcap values('NCC04','Cong ty co Hoa Bao','0966668888','1/10/2020','hoabao@gmail.com','Binh Duong')
 
 insert into nhanvien values('NV01','Hoc Pham','06/06/1999','Ha Noi','0345678900')
 insert into nhanvien values('NV02','Do Do','10/09/1999','Bac Ninh','0398765432')
 insert into nhanvien values('NV03','ThuyThuy','2/9/1999','Ha Noi','0322887799')
 
 insert into thuoc values('T01','NCC01','Panadol','10/3/2019','6/12/2022','vi','dau dau',100)
 insert into thuoc values('T02','NCC03','hoat huyet duong nao','10/3/2020','7/6/2022','vi','bo',200)
 insert into thuoc values('T03','NCC04','Montegol 5','3/3/2019','5/6/2022','hop','dau dau',300)
 insert into thuoc values('T04','NCC02','Vitamin C','2/15/20','8/20/2023','vi','tang suc de khang',400)
 insert into thuoc values('T05','NCC01','Biocymin','5/3/2020','8/12/2025','goi','tieu hoa',500)

 insert into hoadon values('HD01','NV01','T02',10,'Hoc Pham','KH01','9/6/2020',20000)
 insert into hoadon values('HD02','NV02','T05',20,'Do Do','KH02','3/5/2020',30000)
 insert into hoadon values('HD03','NV03','T04',15,'Thuy Thuy','KH02','4/6/2020',15000)
 insert into hoadon values('HD04','NV02','T03',25,'Do Do','KH03','5/10/2020',25000)
 insert into hoadon values('HD05','NV01','T01',10,'Hoc Pham','KH03','4/20/2020',35000)
 
select * from taikhoan
select * from khachhang
select * from nhacungcap
select * from nhanvien
select * from thuoc
select * from hoadon 