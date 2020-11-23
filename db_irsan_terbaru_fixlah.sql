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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_ajaran` */

insert  into `tbl_ajaran`(`id_ajaran`,`tahun_ajaran`) values 
(9,'2021/2022');

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
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_anggota_kelas` */

insert  into `tbl_anggota_kelas`(`id_anggota`,`id_kelas`,`id_siswa`,`id_ajaran`) values 
(186,14,143,9),
(187,14,144,9),
(188,14,145,9),
(189,14,146,9),
(190,14,147,9),
(191,14,148,9),
(192,14,149,9),
(193,14,150,9),
(194,14,151,9),
(195,14,152,9);

/*Table structure for table `tbl_eskul` */

DROP TABLE IF EXISTS `tbl_eskul`;

CREATE TABLE `tbl_eskul` (
  `id_eskul` int(11) NOT NULL AUTO_INCREMENT,
  `eskul` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_ajaran` int(11) DEFAULT NULL,
  `kehadiran` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_eskul`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_eskul` */

insert  into `tbl_eskul`(`id_eskul`,`eskul`,`id_siswa`,`id_ajaran`,`kehadiran`) values 
(31,35,143,9,NULL),
(32,34,144,9,NULL),
(33,34,145,9,NULL),
(34,34,146,9,NULL),
(35,35,147,9,NULL),
(36,32,148,9,NULL),
(37,33,149,9,NULL),
(38,34,150,9,NULL),
(39,35,151,9,NULL),
(40,35,152,9,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4258 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_hasil` */

insert  into `tbl_hasil`(`id`,`id_siswa`,`id_ajaran`,`rata_rata`,`kepribadian`,`kehadiran`,`nilai`,`jurusan`,`created_at`,`eskul`,`nonakademik`) values 
(4248,143,9,91,'A','80-89 %',88.3333,'BKP','2020-11-20 06:40:29',1,0),
(4249,144,9,91,'A','70-79 %',82.5,'BKP','2020-11-20 06:40:29',2,2),
(4250,145,9,91,'A','70-79 %',87.5,'BKP','2020-11-20 06:40:29',2,0),
(4251,146,9,91,'A','70-79 %',80,'BKP','2020-11-20 06:40:29',2,0),
(4252,147,9,90,'A','80-89 %',95,'BKP','2020-11-20 06:40:29',1,0),
(4253,148,9,90,'A','90-100 %',91.25,'BKP','2020-11-20 06:40:30',4,2),
(4254,149,9,91,'A','90-100 %',91.6667,'BKP','2020-11-20 06:40:30',3,2),
(4255,150,9,91,'B','80-89 %',82.0833,'BKP','2020-11-20 06:40:30',2,0),
(4256,151,9,91,'A','80-89 %',95,'BKP','2020-11-20 06:40:30',1,0),
(4257,152,9,91,'A','90-100 %',100,'BKP','2020-11-20 06:40:30',1,0);

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
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_kehadiran` */

insert  into `tbl_kehadiran`(`id_kehadiran`,`id_siswa`,`id_ajaran`,`jml_sakit`,`jml_izin`,`jml_alpha`,`jml_hadir`,`jml_pertemuan`,`persentase`,`jml_tidak_hadir`) values 
(175,143,9,7,7,0,36,105,72,14),
(176,144,9,0,8,8,34,105,68,16),
(177,145,9,9,8,0,33,105,66,17),
(178,146,9,8,0,8,34,105,68,16),
(179,147,9,8,0,0,42,105,84,8),
(180,148,9,5,0,0,45,105,90,5),
(181,149,9,4,1,0,45,105,90,5),
(182,150,9,10,3,0,37,105,74,13),
(183,151,9,3,0,5,42,105,84,8),
(184,152,9,0,3,0,47,105,94,3);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_kelas` */

insert  into `tbl_kelas`(`id_kelas`,`tingkat`,`jurusan`,`nama_kelas`,`wali_kelas`,`status`) values 
(13,0,'BKP','11 BKP 1',84,1),
(14,0,'BKP','10 BKP 1',68,1),
(15,0,'BKP','12 BKP',85,1),
(16,0,'TP','10 TP 1',38,1);

/*Table structure for table `tbl_kepribadian` */

DROP TABLE IF EXISTS `tbl_kepribadian`;

CREATE TABLE `tbl_kepribadian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kehadiran` int(11) NOT NULL,
  `kepribadian` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_ajaran` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1388 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_kepribadian` */

insert  into `tbl_kepribadian`(`id`,`kehadiran`,`kepribadian`,`id_siswa`,`id_ajaran`) values 
(1378,0,24,143,9),
(1379,0,24,144,9),
(1380,0,24,145,9),
(1381,0,24,146,9),
(1382,0,24,147,9),
(1383,0,24,148,9),
(1384,0,24,149,9),
(1385,0,25,150,9),
(1386,0,24,151,9),
(1387,0,24,152,9);

/*Table structure for table `tbl_kriteria` */

DROP TABLE IF EXISTS `tbl_kriteria`;

CREATE TABLE `tbl_kriteria` (
  `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kriteria` varchar(150) NOT NULL,
  `atribut_kriteria` set('Benefit','Cost') NOT NULL,
  `bobot_kriteria` float NOT NULL,
  PRIMARY KEY (`id_kriteria`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

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
(1,'Pendidikan Agama','WAJIB',10),
(2,'Pkn','WAJIB',70),
(3,'Bahasa Indonesia','WAJIB',60),
(4,'Matematika','WAJIB',41),
(5,'Sejarah Indonesia','WAJIB',82),
(6,'Bahasa Inggris','WAJIB',63),
(7,'Seni Budaya','WAJIB',76),
(8,'Penjas','WAJIB',72),
(9,'Prakarya & Kewirausahaan','WAJIB',77),
(13,'Fisika','WAJIB',37),
(14,'Kimia','WAJIB',10),
(18,'Kejuruan','BKP',68);

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
) ENGINE=InnoDB AUTO_INCREMENT=2344 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_nilai` */

insert  into `tbl_nilai`(`id_nilai`,`id_ajaran`,`id_matpel`,`id_siswa`,`nilai_c`,`nilai_p`,`nilai_akhir`) values 
(2224,9,1,143,78,100,89),
(2225,9,1,144,78,100,89),
(2226,9,1,145,77,100,88.5),
(2227,9,1,146,72,100,86),
(2228,9,1,147,71,100,85.5),
(2229,9,1,148,71,100,85.5),
(2230,9,1,149,80,100,90),
(2231,9,1,150,78,100,89),
(2232,9,1,151,74,100,87),
(2233,9,1,152,70,100,85),
(2234,9,2,143,80,100,90),
(2235,9,2,144,82,100,91),
(2236,9,2,145,80,100,90),
(2237,9,2,146,80,100,90),
(2238,9,2,147,80,100,90),
(2239,9,2,148,80,100,90),
(2240,9,2,149,81,100,90.5),
(2241,9,2,150,83,100,91.5),
(2242,9,2,151,82,100,91),
(2243,9,2,152,80,100,90),
(2244,9,3,143,80,100,90),
(2245,9,3,144,82,100,91),
(2246,9,3,145,82,100,91),
(2247,9,3,146,82,100,91),
(2248,9,3,147,80,100,90),
(2249,9,3,148,73,100,86.5),
(2250,9,3,149,82,100,91),
(2251,9,3,150,71,100,85.5),
(2252,9,3,151,73,100,86.5),
(2253,9,3,152,80,100,90),
(2254,9,4,143,79,100,89.5),
(2255,9,4,144,89,100,94.5),
(2256,9,4,145,80,100,90),
(2257,9,4,146,77,100,88.5),
(2258,9,4,147,80,100,90),
(2259,9,4,148,80,100,90),
(2260,9,4,149,80,100,90),
(2261,9,4,150,80,100,90),
(2262,9,4,151,80,100,90),
(2263,9,4,152,77,100,88.5),
(2264,9,5,143,78,100,89),
(2265,9,5,144,80,100,90),
(2266,9,5,145,88,100,94),
(2267,9,5,146,80,100,90),
(2268,9,5,147,80,100,90),
(2269,9,5,148,80,100,90),
(2270,9,5,149,80,100,90),
(2271,9,5,150,89,100,94.5),
(2272,9,5,151,78,100,89),
(2273,9,5,152,90,100,95),
(2274,9,6,143,88,100,94),
(2275,9,6,144,89,100,94.5),
(2276,9,6,145,90,100,95),
(2277,9,6,146,90,100,95),
(2278,9,6,147,90,100,95),
(2279,9,6,148,89,100,94.5),
(2280,9,6,149,89,100,94.5),
(2281,9,6,150,89,100,94.5),
(2282,9,6,151,89,100,94.5),
(2283,9,6,152,89,100,94.5),
(2284,9,7,143,80,100,90),
(2285,9,7,144,88,100,94),
(2286,9,7,145,80,100,90),
(2287,9,7,146,85,100,92.5),
(2288,9,7,147,79,100,89.5),
(2289,9,7,148,84,100,92),
(2290,9,7,149,89,100,94.5),
(2291,9,7,150,90,100,95),
(2292,9,7,151,90,100,95),
(2293,9,7,152,80,100,90),
(2294,9,8,143,88,100,94),
(2295,9,8,144,80,100,90),
(2296,9,8,145,80,100,90),
(2297,9,8,146,82,100,91),
(2298,9,8,147,80,100,90),
(2299,9,8,148,79,100,89.5),
(2300,9,8,149,80,100,90),
(2301,9,8,150,80,100,90),
(2302,9,8,151,89,100,94.5),
(2303,9,8,152,80,100,90),
(2304,9,9,143,78,100,89),
(2305,9,9,144,78,100,89),
(2306,9,9,145,89,100,94.5),
(2307,9,9,146,90,100,95),
(2308,9,9,147,86,100,93),
(2309,9,9,148,84,100,92),
(2310,9,9,149,85,100,92.5),
(2311,9,9,150,85,100,92.5),
(2312,9,9,151,78,100,89),
(2313,9,9,152,89,100,94.5),
(2314,9,14,143,90,100,95),
(2315,9,14,144,88,100,94),
(2316,9,14,145,89,100,94.5),
(2317,9,14,146,89,100,94.5),
(2318,9,14,147,89,100,94.5),
(2319,9,14,148,89,100,94.5),
(2320,9,14,149,89,100,94.5),
(2321,9,14,150,89,100,94.5),
(2322,9,14,151,88,100,94),
(2323,9,14,152,89,100,94.5),
(2324,9,13,143,78,100,89),
(2325,9,13,144,87,100,93.5),
(2326,9,13,145,89,100,94.5),
(2327,9,13,146,98,100,99),
(2328,9,13,147,78,100,89),
(2329,9,13,148,86,100,93),
(2330,9,13,149,78,100,89),
(2331,9,13,150,89,100,94.5),
(2332,9,13,151,87,100,93.5),
(2333,9,13,152,90,100,95),
(2334,9,18,143,88,87,87.5),
(2335,9,18,144,78,78,78),
(2336,9,18,145,89,78,83.5),
(2337,9,18,146,80,88,84),
(2338,9,18,147,78,89,83.5),
(2339,9,18,148,89,70,79.5),
(2340,9,18,149,87,77,82),
(2341,9,18,150,78,80,79),
(2342,9,18,151,87,90,88.5),
(2343,9,18,152,90,90,90);

/*Table structure for table `tbl_nonakademik` */

DROP TABLE IF EXISTS `tbl_nonakademik`;

CREATE TABLE `tbl_nonakademik` (
  `id_nonakademik` int(11) NOT NULL AUTO_INCREMENT,
  `nonakademik` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_ajaran` int(11) DEFAULT NULL,
  `kehadiran` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_nonakademik`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_nonakademik` */

insert  into `tbl_nonakademik`(`id_nonakademik`,`nonakademik`,`id_siswa`,`id_ajaran`,`kehadiran`) values 
(32,29,143,9,NULL),
(33,30,144,9,NULL),
(34,31,145,9,NULL),
(35,28,146,9,NULL),
(36,31,147,9,NULL),
(37,30,148,9,NULL),
(38,30,149,9,NULL),
(39,29,150,9,NULL),
(40,31,151,9,NULL),
(41,31,152,9,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_pengguna` */

insert  into `tbl_pengguna`(`id_pengguna`,`nip`,`nama`,`username`,`password`,`wali_kelas`,`role`) values 
(1,'198503302003121001','Administrator','admin','e10adc3949ba59abbe56e057f20f883e','','Admin'),
(8,'198503302003121009','Administrator','admin2','e10adc3949ba59abbe56e057f20f883e','','TU'),
(14,'19610424 198803 1 ','Suwito, ST','suwito','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(15,'19600814 198703 1 ','Agus santoso, M.T','Agus','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(16,'278172871825113','Agus Suparjo, MT','Agus S','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(17,'19650309 199003 1 ','Purwadi, ST','Purwadi','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(18,'19641230 198903 1 ','Budi setiono, S.T','Budi','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(19,'19641119 199102 1 ','Kusnadi, ST','Kusnadi','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(21,'19630416 199103 1 ','Drs. Supiyono','supiyono','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(23,'19581206 198103 1 ','Kuwoto, ST','kuwoto','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(24,'19600209 198103 1 ','Sunardi, ST','Sunardi','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(25,'19580929 198203 1 ','Rochmadi, ST','Rochmadi','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(26,'19540719 198203 1 ','Yuliatmoko, ST','Yuliatmoko','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(28,'19591105 198503 1 ','Drs. Zulharmito','Zulharmito','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(29,'19590717 198503 1 ','Sudarmono, ST','sudarmono','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(31,'19590927 198503 1 ','Ktut Sucipto hadi, ST','ktut','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(32,'19600820 198503 1 ','Oman, A.Md','Oman','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(33,'19610820 198503 1 ','Kisworo, S.Pd','kisworo','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(35,'19581006 198603 1 ','Drs. Azwardi','azwardi','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(36,'19600517 198609 1 ','Ponio, A.Md','Ponio','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(37,'19601212 198703 1 ','Drs. Iswanto','Iswanto','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(38,'19610627 198703 1 ','Drs. Ibnu Hisyam','Ibnu','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(39,'19621103 198802 1 ','Drs. Harry Anggono, Msc.','Harry','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(40,'19611011 198803 1 ','Drs. Mus Umrah','mus','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(41,'19550515 198803 1 ','AK. Soeparno, S.Pd','AK','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(42,'19620214 198803 1 ','Taryono,ST','Taryono','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(43,'19660606 198902 2 ','Sri Haryan Syarif, S.Pd','sri','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(44,'19640325 198910 1 ','Susilo Cendrawanto, S.Pd','susilo','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(45,'19621212 198903 1 ','Sumartono, ST.','Sumartono','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(46,'19650121 199003 2 ','Dra. Rita Elizabet','rita','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(47,'19650505 199003 1 ','Antoni Tarigan, ST.','Antoni','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(48,'19600806 198511 2 ','Dra. Siti Aminah','Aminah','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(50,'19651207 199102 1 ','Mujito, ST','mujito','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(51,'19630412 199103 2 ','Dra. Endang Suwarni','Endang','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(52,'19630307 198902 1 ','Hendri Martius, A.Md','Hendri ','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(53,'19660506 199503 1 ','Drs. Eka Wandana','eka','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(54,'19680929 199303 1 ','Suryanto,ST','Suryanto','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(56,'19640101 199412 1 ','Safrudin, S.Pd','Safrudin','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(57,'19651231 199412 1 ','Drs. Saharudin','Saharudin','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(58,'19670813 199412 1 ','Drs. Wajiran,MT.','Wajiran','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(59,'19730524 199801 2 ','Sribina Ratnaningsih, S.Pd.','Sribina','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(60,'19630626 199802 1 ','Drs. Liswandi','Liswandi','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(61,'19620525 199102 1 ','Sugiyanto, ST','Sugiyanto','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(62,'19511021 198803 1 ','Drs. Asror Supriyanto','Asror','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(63,'19720801 200604 1 ','Henry Agus, S.Pd','Henry','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(64,'19770310 200212 1 ','Edi Susanto, S.Pd., M.Pd.','Edi','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(65,'19801007 201001 1 ','Teguh Sugiarto, S. Kom','Teguh','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(66,'19811217 200604 1 ','Didik Permana, S.Pd','Didik','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(67,'19781020 200604 1 ','Ridwanto, ST.','Ridwanto','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(68,'19680413 199103 1 ','Moch. Supriyono, ST','Supriyono','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(69,'19781009 200604 1 ','Muhammad Iwan, S.Pd','iwan','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(70,'19840327 201001 2 ','Emaret Silastuti, S.Pd','emaret','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(71,'19700702 200112 1 ','Losiyus Suyono, S.Ag.','Losiyus','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(72,'19621213 199003 1 ','Drs.Torang Suryadharma','torang','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(73,'19700326 200604 2 ','Yusrina, S.Pd','yusrina','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(74,'19720504 200604 2 ','Windi Widianti, S.Pd','windi','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(75,'19690905 200604 2 ','Darnawati, S.Pd','Darnawati','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(76,'19770320 200325 1 ','Thantasia Nangniva, S.Pd','Thantasia','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(77,'19640727 199103 2 ','Sri Mulyani, ST','sri m','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(78,'19751022 200501 2 ','Ririn Handayani, S.Pd.','Ririn','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(79,'19620506 198703 1 ','Legiyono, ST','Legiyono','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(80,'19791203 211001 1 ','Nur Afif Eddy Nugroho, S.T','nur','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(81,'19570225 198103 2 ','Sugiarti, ST.STH','Sugiarti','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(82,'19800423 200804 2 ','Diyana Eksasari, S.Pd','Diyana','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(83,'19810316 200804 2 ','Rizki Amalia, S.Pd','Rizki','c4ca4238a0b923820dcc509a6f75849b','','Guru'),
(84,'19650312 199102 1 ','Supriyanto, ST','Supriyanto','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(85,'19561208 198103 1 ','Legimin, S.Pd','Legimin','c4ca4238a0b923820dcc509a6f75849b','','Wali'),
(86,'19500920 198103 1 ','Susiswo, ST','Susiswo','c4ca4238a0b923820dcc509a6f75849b','','Guru');

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
) ENGINE=InnoDB AUTO_INCREMENT=16217 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_penilaian_alt` */

insert  into `tbl_penilaian_alt`(`id_penilaian_alternatif`,`id_alternatif`,`id_kriteria`,`id_subkriteria`,`nilai_subkriteria`,`id_ajaran`) values 
(16167,'143',1,16,4,9),
(16168,'143',2,21,3,9),
(16169,'143',3,24,4,9),
(16170,'143',4,29,3,9),
(16171,'143',5,35,1,9),
(16172,'144',1,16,4,9),
(16173,'144',2,22,2,9),
(16174,'144',3,24,4,9),
(16175,'144',4,30,2,9),
(16176,'144',5,34,2,9),
(16177,'145',1,16,4,9),
(16178,'145',2,22,2,9),
(16179,'145',3,24,4,9),
(16180,'145',4,31,1,9),
(16181,'145',5,34,2,9),
(16182,'146',1,16,4,9),
(16183,'146',2,22,2,9),
(16184,'146',3,24,4,9),
(16185,'146',4,28,4,9),
(16186,'146',5,34,2,9),
(16187,'147',1,16,4,9),
(16188,'147',2,21,3,9),
(16189,'147',3,24,4,9),
(16190,'147',4,31,1,9),
(16191,'147',5,35,1,9),
(16192,'148',1,16,4,9),
(16193,'148',2,20,4,9),
(16194,'148',3,24,4,9),
(16195,'148',4,30,2,9),
(16196,'148',5,32,4,9),
(16197,'149',1,16,4,9),
(16198,'149',2,20,4,9),
(16199,'149',3,24,4,9),
(16200,'149',4,30,2,9),
(16201,'149',5,33,3,9),
(16202,'150',1,16,4,9),
(16203,'150',2,21,3,9),
(16204,'150',3,25,3,9),
(16205,'150',4,29,3,9),
(16206,'150',5,34,2,9),
(16207,'151',1,16,4,9),
(16208,'151',2,21,3,9),
(16209,'151',3,24,4,9),
(16210,'151',4,31,1,9),
(16211,'151',5,35,1,9),
(16212,'152',1,16,4,9),
(16213,'152',2,20,4,9),
(16214,'152',3,24,4,9),
(16215,'152',4,31,1,9),
(16216,'152',5,35,1,9);

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
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_siswa` */

insert  into `tbl_siswa`(`id_siswa`,`nisn`,`nis`,`nama_lengkap`,`jenis_kelamin`,`agama`,`tempat_lahir`,`tanggal_lahir`,`ayah`,`ibu`,`alamat_siswa`,`status`) values 
(143,'20003001',NULL,'ANDI PRASTYO','L',NULL,'Bandar Lampung','2005-02-11',NULL,NULL,NULL,NULL),
(144,'20003002',NULL,'ENDANG LESTARI','P',NULL,'Bandar Lampung','2005-01-14',NULL,NULL,NULL,NULL),
(145,'20003003',NULL,'FEBRI PRAYOGA','L',NULL,'Sukabumi','2005-07-01',NULL,NULL,NULL,NULL),
(146,'20003004',NULL,'TRI HANDOKO','L',NULL,'Natar','2005-08-12',NULL,NULL,NULL,NULL),
(147,'20003005',NULL,'YUDA DINATA','L',NULL,'Tanggamus','2005-02-12',NULL,NULL,NULL,NULL),
(148,'20003006',NULL,'ENDI SAKIUN','L',NULL,'Kalianda','2005-04-20',NULL,NULL,NULL,NULL),
(149,'20003007',NULL,'ARDIANTO','L',NULL,'Bandar Lampung','2005-10-10',NULL,NULL,NULL,NULL),
(150,'20003008',NULL,'AMRI JAYA','L',NULL,'Bandar Lampung','2005-09-05',NULL,NULL,NULL,NULL),
(151,'20003009',NULL,'ANDRIAN SAPUTRA','L',NULL,'Bandar Lampung','2005-01-01',NULL,NULL,NULL,NULL),
(152,'20003010',NULL,'EDI KURNIAWAN','L',NULL,'Liwa','2004-12-20',NULL,NULL,NULL,NULL);

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
