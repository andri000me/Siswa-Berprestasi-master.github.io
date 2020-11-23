/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.1.32-MariaDB : Database - db_saw
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_saw` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_saw`;

/*Table structure for table `tbl_ajaran` */

DROP TABLE IF EXISTS `tbl_ajaran`;

CREATE TABLE `tbl_ajaran` (
  `id_ajaran` int(11) NOT NULL AUTO_INCREMENT,
  `tahun_ajaran` varchar(100) NOT NULL,
  PRIMARY KEY (`id_ajaran`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_ajaran` */

insert  into `tbl_ajaran`(`id_ajaran`,`tahun_ajaran`) values 
(1,'2019/2020 Ganjil'),
(5,'2020/2021 Genap'),
(6,'2021/2022 Ganjil'),
(7,'2021/2022 Genap');

/*Table structure for table `tbl_alternatif` */

DROP TABLE IF EXISTS `tbl_alternatif`;

CREATE TABLE `tbl_alternatif` (
  `id_alternatif` varchar(3) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nama_siswa` varchar(150) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `tahun_pelajaran` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  `hasil_alternatif` float NOT NULL,
  `date_submit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_alternatif`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_alternatif` */

insert  into `tbl_alternatif`(`id_alternatif`,`nisn`,`nama_siswa`,`jenis_kelamin`,`tempat_lahir`,`tanggal_lahir`,`kelas`,`tahun_pelajaran`,`status`,`hasil_alternatif`,`date_submit`) values 
('A1','000000000','siswa satu','L','Palembang','2020/05/01','XI IPA 1','2019/2020 Semester 1',0,0.82,'2020-05-11 07:28:44'),
('A2','1111111111','siswa dua','L','Palembang','2020/05/04','XI IPA 1','2019/2020 Semester 1',1,0.9,'2020-05-11 07:34:10'),
('A3','2222222222','siswa tiga','L','Palembang','2020/05/12','XI IPA 1','2019/2020 Semester 1',1,0.97,'2020-05-11 07:36:03'),
('A4','3333333333','siswa empat','L','Palembang','2020/05/11','XI IPA 1','2019/2020 Semester 1',0,0.74,'2020-05-11 07:36:42'),
('A5','4444444444','siswa lima','L','Palembang','2020/05/13','XI IPA 1','2019/2020 Semester 1',1,0.92,'2020-05-11 07:37:31'),
('A6','5555555555','siswa enam','L','Palembang','2020/05/05','XI IPA 1','2019/2020 Semester 1',1,0.94,'2020-05-11 07:38:44'),
('A7','6666666666','siswa tujuh','L','Palembang','2020/05/11','XI IPA 1','2019/2020 Semester 1',0,0.716667,'2020-05-11 07:39:26');

/*Table structure for table `tbl_anggota_kelas` */

DROP TABLE IF EXISTS `tbl_anggota_kelas`;

CREATE TABLE `tbl_anggota_kelas` (
  `id_anggota` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_ajaran` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_anggota`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_anggota_kelas` */

insert  into `tbl_anggota_kelas`(`id_anggota`,`id_kelas`,`id_siswa`,`id_ajaran`) values 
(145,11,142,7),
(146,11,143,7),
(147,11,141,7),
(149,12,145,7),
(151,10,146,7),
(152,10,147,7),
(153,10,148,7);

/*Table structure for table `tbl_eskul` */

DROP TABLE IF EXISTS `tbl_eskul`;

CREATE TABLE `tbl_eskul` (
  `id_eskul` int(11) NOT NULL AUTO_INCREMENT,
  `eskul` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_ajaran` int(11) DEFAULT NULL,
  `kehadiran` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_eskul`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_eskul` */

insert  into `tbl_eskul`(`id_eskul`,`eskul`,`id_siswa`,`id_ajaran`,`kehadiran`) values 
(1,34,144,7,NULL),
(2,32,146,7,NULL),
(3,33,147,7,NULL),
(4,32,148,7,NULL);

/*Table structure for table `tbl_hasil` */

DROP TABLE IF EXISTS `tbl_hasil`;

CREATE TABLE `tbl_hasil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_ajaran` int(11) NOT NULL,
  `rata_rata` float NOT NULL,
  `kepribadian` varchar(100) NOT NULL,
  `kehadiran` varchar(100) NOT NULL,
  `nilai` float NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `eskul` int(11) DEFAULT NULL,
  `nonakademik` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3608 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_hasil` */

insert  into `tbl_hasil`(`id`,`id_siswa`,`id_ajaran`,`rata_rata`,`kepribadian`,`kehadiran`,`nilai`,`jurusan`,`created_at`,`eskul`,`nonakademik`) values 
(3605,146,7,37,'B','80-89 %',43.75,'TP','2020-11-19 19:09:19',4,0),
(3606,147,7,44,'A','90-100 %',63.75,'TP','2020-11-19 19:09:19',3,2),
(3607,148,7,20,'D','90-100 %',51.25,'TP','2020-11-19 19:09:19',4,0);

/*Table structure for table `tbl_kehadiran` */

DROP TABLE IF EXISTS `tbl_kehadiran`;

CREATE TABLE `tbl_kehadiran` (
  `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_ajaran` int(11) NOT NULL,
  `jml_sakit` int(11) NOT NULL,
  `jml_izin` int(11) NOT NULL,
  `jml_alpha` int(11) NOT NULL,
  `jml_hadir` int(11) NOT NULL,
  `jml_pertemuan` int(11) DEFAULT NULL,
  `persentase` int(11) DEFAULT NULL,
  `jml_tidak_hadir` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kehadiran`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_kehadiran` */

insert  into `tbl_kehadiran`(`id_kehadiran`,`id_siswa`,`id_ajaran`,`jml_sakit`,`jml_izin`,`jml_alpha`,`jml_hadir`,`jml_pertemuan`,`persentase`,`jml_tidak_hadir`) values 
(142,0,0,0,0,0,0,105,0,0),
(143,142,7,13,0,0,92,105,87,13),
(144,143,7,0,13,0,92,105,87,13),
(145,141,7,0,0,15,90,105,85,15),
(146,145,7,2,50,70,-17,105,-17,122),
(147,144,7,5,7,5,88,105,83,17),
(148,146,7,5,3,7,90,105,85,15),
(149,147,7,2,1,1,101,105,96,4),
(150,148,7,8,0,0,97,105,92,8);

/*Table structure for table `tbl_kelas` */

DROP TABLE IF EXISTS `tbl_kelas`;

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `tingkat` int(11) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `wali_kelas` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_kelas` */

insert  into `tbl_kelas`(`id_kelas`,`tingkat`,`jurusan`,`nama_kelas`,`wali_kelas`,`status`) values 
(10,11,'TP','10 TP1',12,1),
(11,11,'TP','10 TP2',13,1),
(12,11,'BKP','11 TP1',9,1);

/*Table structure for table `tbl_kepribadian` */

DROP TABLE IF EXISTS `tbl_kepribadian`;

CREATE TABLE `tbl_kepribadian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kehadiran` int(11) NOT NULL,
  `kepribadian` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_ajaran` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1354 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_kepribadian` */

insert  into `tbl_kepribadian`(`id`,`kehadiran`,`kepribadian`,`id_siswa`,`id_ajaran`) values 
(1345,0,6,142,7),
(1346,0,6,143,7),
(1347,0,8,141,7),
(1348,0,24,145,7),
(1349,0,26,144,7),
(1350,0,0,0,7),
(1351,0,25,146,7),
(1352,0,24,147,7),
(1353,0,27,148,7);

/*Table structure for table `tbl_kriteria` */

DROP TABLE IF EXISTS `tbl_kriteria`;

CREATE TABLE `tbl_kriteria` (
  `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kriteria` varchar(150) NOT NULL,
  `atribut_kriteria` set('Benefit','Cost') NOT NULL,
  `bobot_kriteria` float NOT NULL,
  PRIMARY KEY (`id_kriteria`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_kriteria` */

insert  into `tbl_kriteria`(`id_kriteria`,`nama_kriteria`,`atribut_kriteria`,`bobot_kriteria`) values 
(1,'Nilai Akademik','Benefit',50),
(2,'Nilai Kehadiran','Benefit',20),
(3,'Nilai Kepribadian','Benefit',15),
(4,'Non Akademik','Cost',10),
(5,'Ekstrakulikuler','Cost',5);

/*Table structure for table `tbl_matpel` */

DROP TABLE IF EXISTS `tbl_matpel`;

CREATE TABLE `tbl_matpel` (
  `id_matpel` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pelajaran` varchar(100) NOT NULL,
  `kelompok` varchar(20) NOT NULL,
  `id_guru` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_matpel`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_matpel` */

insert  into `tbl_matpel`(`id_matpel`,`nama_pelajaran`,`kelompok`,`id_guru`) values 
(1,'Pendidikan Agama','WAJIB',5),
(2,'Pkn','Wajib',NULL),
(3,'Bahasa Indonesia','Wajib',NULL),
(4,'Matematika','Wajib',NULL),
(5,'Sejarah Indonesia','Wajib',NULL),
(6,'Bahasa Inggris','Wajib',NULL),
(7,'Seni Budaya','Wajib',NULL),
(8,'Penjas','Wajib',NULL),
(9,'Prakarya & Kewirausahaan','Wajib',NULL),
(13,'Fisika','WAJIB',10),
(14,'Kimia','WAJIB',10),
(18,'Sosiologi','WAJIB',10),
(21,'ll','WAJIB',12);

/*Table structure for table `tbl_nilai` */

DROP TABLE IF EXISTS `tbl_nilai`;

CREATE TABLE `tbl_nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ajaran` int(11) NOT NULL,
  `id_matpel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `nilai_c` float NOT NULL,
  `nilai_p` float NOT NULL,
  `nilai_akhir` float NOT NULL,
  PRIMARY KEY (`id_nilai`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2197 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_nilai` */

insert  into `tbl_nilai`(`id_nilai`,`id_ajaran`,`id_matpel`,`id_siswa`,`nilai_c`,`nilai_p`,`nilai_akhir`) values 
(2190,7,1,144,90,0,45),
(2191,7,1,146,82,0,41),
(2192,7,1,147,85,0,42.5),
(2193,7,2,146,66,0,33),
(2194,7,2,147,90,0,45),
(2195,7,1,148,70,0,35),
(2196,7,2,148,10,0,5);

/*Table structure for table `tbl_nonakademik` */

DROP TABLE IF EXISTS `tbl_nonakademik`;

CREATE TABLE `tbl_nonakademik` (
  `id_nonakademik` int(11) NOT NULL AUTO_INCREMENT,
  `nonakademik` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_ajaran` int(11) DEFAULT NULL,
  `kehadiran` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_nonakademik`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_nonakademik` */

insert  into `tbl_nonakademik`(`id_nonakademik`,`nonakademik`,`id_siswa`,`id_ajaran`,`kehadiran`) values 
(2,28,146,7,NULL),
(3,30,147,7,NULL),
(4,31,148,7,NULL);

/*Table structure for table `tbl_pengguna` */

DROP TABLE IF EXISTS `tbl_pengguna`;

CREATE TABLE `tbl_pengguna` (
  `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `wali_kelas` varchar(10) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pengguna`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_pengguna` */

insert  into `tbl_pengguna`(`id_pengguna`,`nip`,`nama`,`username`,`password`,`wali_kelas`,`role`) values 
(1,'198503302003121001','Administrator','admin','e10adc3949ba59abbe56e057f20f883e','','Admin'),
(3,'198503302003121003','Angga Lasanova, S.Pd','kelasxiipa1','e10adc3949ba59abbe56e057f20f883e','XI IPA 1','Wali'),
(4,'198503302003121004','Yonathan T.M.Tju, S.Th','kelasxiipa2','e10adc3949ba59abbe56e057f20f883e','XI IPA 2','Wali'),
(5,'198503302003121005','Nurdiana Sijabat, S.S','kelasxiips1','e10adc3949ba59abbe56e057f20f883e','XI IPS 1','Wali'),
(6,'198503302003121006','Enggar Marginingsih, S.Pd','kelasxiips2','e10adc3949ba59abbe56e057f20f883e','XI IPA 2','Wali'),
(8,'198503302003121009','Administrator','admin2','e10adc3949ba59abbe56e057f20f883e','','TU'),
(9,'785875875875785','Ekki Reynaldi','ekki','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(10,'3252352523','ikhawan','ikhwan','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(11,'235235235235','Heri Irawan','heri','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(12,'346346346346','Irul','irul','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(13,'23463464236432634','nopal','nopal','c4ca4238a0b923820dcc509a6f75849b','','Wali');

/*Table structure for table `tbl_penilaian_alt` */

DROP TABLE IF EXISTS `tbl_penilaian_alt`;

CREATE TABLE `tbl_penilaian_alt` (
  `id_penilaian_alternatif` int(11) NOT NULL AUTO_INCREMENT,
  `id_alternatif` varchar(3) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_subkriteria` int(11) NOT NULL,
  `nilai_subkriteria` float NOT NULL,
  `id_ajaran` int(11) NOT NULL,
  PRIMARY KEY (`id_penilaian_alternatif`) USING BTREE,
  KEY `id_alternatif` (`id_alternatif`) USING BTREE,
  KEY `id_kriteria` (`id_kriteria`) USING BTREE,
  KEY `id_subkriteria` (`id_subkriteria`) USING BTREE,
  CONSTRAINT `tbl_penilaian_alt_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `tbl_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_penilaian_alt_ibfk_3` FOREIGN KEY (`id_subkriteria`) REFERENCES `tbl_subkriteria` (`id_subkriteria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12967 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_penilaian_alt` */

insert  into `tbl_penilaian_alt`(`id_penilaian_alternatif`,`id_alternatif`,`id_kriteria`,`id_subkriteria`,`nilai_subkriteria`,`id_ajaran`) values 
(12857,'144',1,18,2,7),
(12858,'144',2,21,3,7),
(12859,'144',3,26,2,7),
(12860,'144',4,28,4,7),
(12861,'144',5,34,2,7),
(12952,'146',1,19,1,7),
(12953,'146',2,21,3,7),
(12954,'146',3,25,3,7),
(12955,'146',4,28,4,7),
(12956,'146',5,32,4,7),
(12957,'147',1,18,2,7),
(12958,'147',2,20,4,7),
(12959,'147',3,24,4,7),
(12960,'147',4,30,2,7),
(12961,'147',5,33,3,7),
(12962,'148',1,19,1,7),
(12963,'148',2,20,4,7),
(12964,'148',3,27,1,7),
(12965,'148',4,31,1,7),
(12966,'148',5,32,4,7);

/*Table structure for table `tbl_penilaian_temp` */

DROP TABLE IF EXISTS `tbl_penilaian_temp`;

CREATE TABLE `tbl_penilaian_temp` (
  `id_penilaian_temp` int(11) NOT NULL AUTO_INCREMENT,
  `id_alternatif` varchar(3) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_subkriteria` int(11) NOT NULL,
  `nilai_subkriteria` float NOT NULL,
  PRIMARY KEY (`id_penilaian_temp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_penilaian_temp` */

/*Table structure for table `tbl_riwayat` */

DROP TABLE IF EXISTS `tbl_riwayat`;

CREATE TABLE `tbl_riwayat` (
  `id_submit` int(11) NOT NULL,
  `id_riwayat` int(11) NOT NULL AUTO_INCREMENT,
  `nisn` varchar(10) NOT NULL,
  `nama_siswa` varchar(150) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `tahun_pelajaran` varchar(20) NOT NULL,
  `hasil_alternatif` float NOT NULL,
  `date_submit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_riwayat`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_riwayat` */

insert  into `tbl_riwayat`(`id_submit`,`id_riwayat`,`nisn`,`nama_siswa`,`jenis_kelamin`,`tempat_lahir`,`tanggal_lahir`,`kelas`,`tahun_pelajaran`,`hasil_alternatif`,`date_submit`) values 
(1,3,'2222222222','siswa tiga','L','Palembang','2020/05/12','XI IPA 1','2019/2020 Semester 1',0.97,'2020-07-04 04:12:02'),
(4,4,'2222222222','siswa tiga','L','Palembang','2020/05/12','XI IPA 1','2019/2020 Semester 1',0.97,'2020-07-04 04:12:23'),
(5,5,'2222222222','siswa tiga','L','Palembang','2020/05/12','XI IPA 1','2019/2020 Semester 1',0.97,'2020-07-04 04:12:23'),
(6,6,'2222222222','siswa tiga','L','Palembang','2020/05/12','XI IPA 1','2019/2020 Semester 1',0.97,'2020-07-04 10:20:13');

/*Table structure for table `tbl_siswa` */

DROP TABLE IF EXISTS `tbl_siswa`;

CREATE TABLE `tbl_siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nisn` varchar(16) NOT NULL,
  `nis` varchar(16) DEFAULT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P','','') NOT NULL,
  `agama` char(1) DEFAULT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `ayah` varchar(255) DEFAULT NULL,
  `ibu` varchar(255) DEFAULT NULL,
  `alamat_siswa` text,
  `status` int(1) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id_siswa`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_siswa` */

insert  into `tbl_siswa`(`id_siswa`,`nisn`,`nis`,`nama_lengkap`,`jenis_kelamin`,`agama`,`tempat_lahir`,`tanggal_lahir`,`ayah`,`ibu`,`alamat_siswa`,`status`) values 
(146,'9416',NULL,'Irul','L',NULL,'Natar','2020-11-02',NULL,NULL,NULL,NULL),
(147,'9417',NULL,'Ikhwan','L',NULL,'Natar','2020-11-01',NULL,NULL,NULL,NULL),
(148,'9418',NULL,'Eteng','L',NULL,'Natar','2018-05-19',NULL,NULL,NULL,NULL);

/*Table structure for table `tbl_subkriteria` */

DROP TABLE IF EXISTS `tbl_subkriteria`;

CREATE TABLE `tbl_subkriteria` (
  `id_kriteria` int(11) NOT NULL,
  `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT,
  `nama_subkriteria` varchar(150) NOT NULL,
  `nilai_subkriteria` float NOT NULL,
  PRIMARY KEY (`id_subkriteria`) USING BTREE,
  KEY `id_kriteria` (`id_kriteria`) USING BTREE,
  CONSTRAINT `tbl_subkriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `tbl_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_subkriteria` */

insert  into `tbl_subkriteria`(`id_kriteria`,`id_subkriteria`,`nama_subkriteria`,`nilai_subkriteria`) values 
(1,16,'90 - 100',4),
(1,17,'80 - 89',3),
(1,18,'70 - 79',2),
(1,19,'<69',1),
(2,20,'90-100 %',4),
(2,21,'80-89 %',3),
(2,22,'70-79 %',2),
(2,23,'< 69 %',1),
(3,24,'A',4),
(3,25,'B',3),
(3,26,'C',2),
(3,27,'D',1),
(4,28,'>= 4',4),
(4,29,'<= 3',3),
(4,30,'2',2),
(4,31,'<= 1',1),
(5,32,'4',4),
(5,33,'3',3),
(5,34,'2',2),
(5,35,'1',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
