create database module3;

create table nha_cung_cap(
	ma_ncc int primary key auto_increment,
    ten_ncc varchar(50),
    dia_chi varchar(50)
);

create table so_dien_thoai(
	sdt varchar(50) primary key,
    ma_ncc int,
    foreign key(ma_ncc) references nha_cung_cap(ma_ncc)
);

create table phieu_xuat(
	so_px int primary key auto_increment,
	ngay_xuat date
);

create table vat_tu(
	ma_vt int primary key auto_increment,
    ten_vt varchar(50)
    
);

create table chi_tiet_phieu_xuat(
	so_px int,
    ma_vt int,
	don_gia float,
    so_luong int,
    primary key (so_px, ma_vt) ,
    foreign key (so_px) references phieu_xuat (so_px),
    foreign key (ma_vt) references vat_tu (ma_vt)
);

create table don_dat_hang(
	so_dh int primary key auto_increment,
    ngay_dh date,
    ma_ncc int,
    foreign key (ma_ncc) references nha_cung_cap (ma_ncc)
);

create table chi_tiet_ddh(
	ma_vt int,
    so_dh int,
    primary key (ma_vt, so_dh),
    foreign key(ma_vt) references vat_tu(ma_vt),
    foreign key(so_dh) references don_dat_hang(so_dh)
);

create table phieu_nhap(
	so_pn int primary key auto_increment,
    ngay_nhap date
);

create table chi_tiet_phieu_nhap(
	ma_vt int,
    so_pn int,
    primary key (ma_vt, so_pn),
    foreign key (ma_vt) references vat_tu (ma_vt),
    foreign key (so_pn) references phieu_nhap (so_pn)
);