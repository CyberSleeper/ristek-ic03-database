CREATE SCHEMA  schema_1;

CREATE TABLE schema_1.ms_customer
(
    kode_customer varchar(200) NULL,
    nama_customer varchar(200) NULL,
    kota_customer varchar(200) NULL,
    ongkos_kirim  int          NULL
);

INSERT INTO schema_1.ms_customer (kode_customer, nama_customer, kota_customer, ongkos_kirim) VALUES ('C001', 'Warung bu Indah', 'Jakarta', 25000);
INSERT INTO schema_1.ms_customer (kode_customer, nama_customer, kota_customer, ongkos_kirim) VALUES ('C002', 'Toko Budi', 'Medan', 65000);
INSERT INTO schema_1.ms_customer (kode_customer, nama_customer, kota_customer, ongkos_kirim) VALUES ('C003', 'Toko Pak Imin', 'Bandung', 35000);
INSERT INTO schema_1.ms_customer (kode_customer, nama_customer, kota_customer, ongkos_kirim) VALUES ('C004', 'Toko Bu Endah', 'Jakarta', 25000);


CREATE TABLE schema_1.ms_pegawai
(
    kode_pegawai  varchar(200) NULL,
    nama_pegawai  varchar(200) NULL,
    jabatan       varchar(200) NULL,
    target        int          NULL,
    tanggal_masuk date         NULL
);

INSERT INTO schema_1.ms_pegawai (kode_pegawai, nama_pegawai, jabatan, target, tanggal_masuk) VALUES ('S001', 'Budi', 'sales', 2, null);
INSERT INTO schema_1.ms_pegawai (kode_pegawai, nama_pegawai, jabatan, target, tanggal_masuk) VALUES ('S002', 'Ayu', 'sales', 2, null);
INSERT INTO schema_1.ms_pegawai (kode_pegawai, nama_pegawai, jabatan, target, tanggal_masuk) VALUES ('S003', 'Andi', 'supervisor', 5, null);
INSERT INTO schema_1.ms_pegawai (kode_pegawai, nama_pegawai, jabatan, target, tanggal_masuk) VALUES ('S004', 'Susi', 'sales', 2, null);
INSERT INTO schema_1.ms_pegawai (kode_pegawai, nama_pegawai, jabatan, target, tanggal_masuk) VALUES ('S005', 'Joko', 'sales', 2, null);


CREATE TABLE schema_1.ms_product
(
    kode_produk  varchar(200) NULL,
    nama_product varchar(200) NULL,
    jenis        varchar(200) NULL,
    harga_satuan int          NULL,
    kode_vendor  varchar(200) NULL
);

INSERT INTO schema_1.ms_product (kode_produk, nama_product, jenis, harga_satuan, kode_vendor) VALUES ('A001', 'Susu soda gembira', 'Soda', 5000, 'V001');
INSERT INTO schema_1.ms_product (kode_produk, nama_product, jenis, harga_satuan, kode_vendor) VALUES ('A002', 'Soda Segar', 'Soda', 5500, 'V001');
INSERT INTO schema_1.ms_product (kode_produk, nama_product, jenis, harga_satuan, kode_vendor) VALUES ('A003', 'Teh Celup', 'Teh', 4200, 'V002');
INSERT INTO schema_1.ms_product (kode_produk, nama_product, jenis, harga_satuan, kode_vendor) VALUES ('A004', 'Teh 500', 'Teh', 3500, 'V003');
INSERT INTO schema_1.ms_product (kode_produk, nama_product, jenis, harga_satuan, kode_vendor) VALUES ('A005', 'Ice Soda', 'Soda', 6000, 'V003');
INSERT INTO schema_1.ms_product (kode_produk, nama_product, jenis, harga_satuan, kode_vendor) VALUES ('A006', 'Air kemasan', 'Air Minum', 7500, 'V004');
INSERT INTO schema_1.ms_product (kode_produk, nama_product, jenis, harga_satuan, kode_vendor) VALUES ('A007', 'Air Cap Jernih', 'Air Minum', 6000, 'V005');
INSERT INTO schema_1.ms_product (kode_produk, nama_product, jenis, harga_satuan, kode_vendor) VALUES ('A008', 'Teh daun pucuk', 'Teh', 4500, 'V006');
INSERT INTO schema_1.ms_product (kode_produk, nama_product, jenis, harga_satuan, kode_vendor) VALUES ('A009', 'Jus Segar Murni', 'Jus', 7000, 'V004');
INSERT INTO schema_1.ms_product (kode_produk, nama_product, jenis, harga_satuan, kode_vendor) VALUES ('A010', 'Soda gembira ria', 'Soda', 12000, 'V001');


CREATE TABLE schema_1.ms_vendor
(
    vendor      varchar(100) NULL,
    kode_vendor varchar(100) NULL,
    kota_vendor varchar(100) NULL
);

INSERT INTO schema_1.ms_vendor (vendor, kode_vendor, kota_vendor) VALUES ('PT Alam Maju', 'V001', 'Jakarta');
INSERT INTO schema_1.ms_vendor (vendor, kode_vendor, kota_vendor) VALUES ('PT Suka Sari', 'V002', 'Bandung');
INSERT INTO schema_1.ms_vendor (vendor, kode_vendor, kota_vendor) VALUES ('PT Maju Berkarya', 'V003', 'Jakarta');
INSERT INTO schema_1.ms_vendor (vendor, kode_vendor, kota_vendor) VALUES ('PT Berjaya', 'V004', 'Bogor');
INSERT INTO schema_1.ms_vendor (vendor, kode_vendor, kota_vendor) VALUES ('PT Alam Maju', 'V005', 'Malang');
INSERT INTO schema_1.ms_vendor (vendor, kode_vendor, kota_vendor) VALUES ('PT Cita Bangsa', 'V006', 'Tangerang');



CREATE TABLE schema_1.tr_do
(
    no_entry_do int          NULL,
    no_entry_so int          NULL,
    no_do       varchar(200) NULL,
    tgl_do      date         NULL
);

INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (1, 3, 'DO001', '2018-01-03');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (2, 4, 'DO002', '2018-01-08');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (3, 6, 'DO003', '2018-01-09');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (4, 8, 'DO004', '2018-01-10');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (5, 7, 'DO005', '2018-01-15');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (6, 9, 'DO006', '2018-01-15');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (7, 2, 'DO007', '2018-01-08');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (8, 1, 'DO008', '2018-01-08');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (9, 5, 'DO009', '2018-01-12');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (10, 12, 'DO010', '2018-01-20');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (11, 16, 'DO011', '2018-01-27');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (12, 19, 'DO012', '2018-01-30');
INSERT INTO schema_1.tr_do (no_entry_do, no_entry_so, no_do, tgl_do) VALUES (13, 10, 'DO013', '2018-01-20');


CREATE TABLE schema_1.tr_inv
(
    no_entry_inv int          NULL,
    no_entry_do  int          NULL,
    no_inv       varchar(200) NULL,
    tgl_inv      date         NULL
);

INSERT INTO schema_1.tr_inv (no_entry_inv, no_entry_do, no_inv, tgl_inv) VALUES (1, 4, 'INV001', '2018-01-12');
INSERT INTO schema_1.tr_inv (no_entry_inv, no_entry_do, no_inv, tgl_inv) VALUES (2, 3, 'INV002', '2018-01-10');
INSERT INTO schema_1.tr_inv (no_entry_inv, no_entry_do, no_inv, tgl_inv) VALUES (3, 7, 'INV003', '2018-01-20');
INSERT INTO schema_1.tr_inv (no_entry_inv, no_entry_do, no_inv, tgl_inv) VALUES (4, 6, 'INV004', '2018-01-19');
INSERT INTO schema_1.tr_inv (no_entry_inv, no_entry_do, no_inv, tgl_inv) VALUES (5, 5, 'INV005', '2018-01-17');
INSERT INTO schema_1.tr_inv (no_entry_inv, no_entry_do, no_inv, tgl_inv) VALUES (6, 2, 'INV006', '2018-01-10');
INSERT INTO schema_1.tr_inv (no_entry_inv, no_entry_do, no_inv, tgl_inv) VALUES (7, 12, 'INV007', '2018-01-31');


CREATE TABLE schema_1.tr_so
(
    no_entry_so   int          NULL,
    no_so         varchar(200) NULL,
    kode_barang   varchar(200) NULL,
    kode_sales    varchar(200) NULL,
    qty           int          NULL,
    satuan        varchar(200) NULL,
    tgl_so        date         NULL,
    kode_customer varchar(200) NULL
);

INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (1, 'SO001', 'A001', 'S001', 10, 'krat', '2018-01-01', 'C001');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (2, 'SO001', 'A002', 'S001', 21, 'botol', '2018-01-01', 'C001');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (3, 'SO001', 'A010', 'S001', 36, 'botol', '2018-01-01', 'C001');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (4, 'SO002', 'A003', 'S001', 25, 'dus', '2018-01-04', 'C002');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (5, 'SO002', 'A001', 'S001', 2, 'krat', '2018-01-04', 'C002');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (6, 'SO003', 'A003', 'S004', 18, 'botol', '2018-01-05', 'C001');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (7, 'SO004', 'A010', 'S004', 52, 'dus', '2018-01-10', 'C003');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (8, 'SO004', 'A004', 'S004', 31, 'dus', '2018-01-10', 'C003');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (9, 'SO005', 'A009', 'S002', 21, 'dus', '2018-01-11', 'C002');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (10, 'SO005', 'A007', 'S002', 8, 'krat', '2018-01-11', 'C002');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (11, 'SO005', 'A003', 'S002', 39, 'botol', '2018-01-11', 'C002');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (12, 'SO006', 'A008', 'S001', 51, 'krat', '2018-01-11', 'C004');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (13, 'SO006', 'A010', 'S001', 75, 'dus', '2018-01-11', 'C004');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (14, 'SO007', 'A002', 'S002', 92, 'dus', '2018-01-22', 'C001');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (15, 'SO008', 'A002', 'S003', 75, 'krat', '2018-01-23', 'C003');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (16, 'SO008', 'A001', 'S003', 76, 'botol', '2018-01-23', 'C003');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (17, 'SO009', 'A005', 'S004', 8, 'krat', '2018-01-27', 'C002');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (18, 'SO010', 'A001', 'S005', 19, 'dus', '2018-01-30', 'C004');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (19, 'SO010', 'A002', 'S005', 82, 'botol', '2018-01-30', 'C004');
INSERT INTO schema_1.tr_so (no_entry_so, no_so, kode_barang, kode_sales, qty, satuan, tgl_so, kode_customer) VALUES (20, 'SO011', 'A005', 'S003', 11, 'krat', '2018-01-31', 'C003');