-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 02:11 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quan_li_nhan_khau`
--

-- --------------------------------------------------------

--
-- Table structure for table `chung_minh_thu`
--

CREATE TABLE `chung_minh_thu` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `soCMT` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `ngayCap` date DEFAULT NULL,
  `noiCap` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chung_minh_thu`
--

INSERT INTO `chung_minh_thu` (`ID`, `idNhanKhau`, `soCMT`, `ngayCap`, `noiCap`) VALUES
(13, 26, '000000000001', NULL, NULL),
(14, 27, '000000000002', NULL, NULL),
(15, 28, '000000000003', NULL, NULL),
(16, 29, '000000000004', NULL, NULL),
(17, 30, '000000000005', NULL, NULL),
(18, 31, '000000000006', NULL, NULL),
(19, 32, '000000000007', NULL, NULL),
(20, 33, '000000000008', NULL, NULL),
(21, 34, '000000000009', NULL, NULL),
(22, 35, '100000000001', NULL, NULL),
(23, 36, '100000000002', NULL, NULL),
(24, 37, '000000000010', NULL, NULL),
(25, 38, '000000000011', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danh_sach_nhan_qua_cac_nam`
--

CREATE TABLE `danh_sach_nhan_qua_cac_nam` (
  `idNhanKhau` int(11) NOT NULL,
  `namHoc` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danh_sach_nhan_qua_cac_nam`
--

INSERT INTO `danh_sach_nhan_qua_cac_nam` (`idNhanKhau`, `namHoc`) VALUES
(35, '2018-2019'),
(35, '2019-2020'),
(35, '2020-2021'),
(35, '2021-2022'),
(36, '2018-2019'),
(36, '2019-2020'),
(36, '2020-2021'),
(36, '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `dinh_chinh`
--

CREATE TABLE `dinh_chinh` (
  `ID` int(11) NOT NULL,
  `idHoKhau` int(11) DEFAULT NULL,
  `thongTinThayDoi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thayDoiTu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thayDoiThanh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayThayDoi` date DEFAULT NULL,
  `nguoiThayDoi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `ds_hoc_sinh`
-- (See below for the actual view)
--
CREATE TABLE `ds_hoc_sinh` (
`ID` int(11)
,`hoTen` varchar(100)
,`noiLamViec` varchar(100)
,`idHoKhau` int(11)
,`quanHeVoiChuHo` varchar(100)
,`thanhTich` varchar(100)
,`minhChung` longblob
,`trangThai` varchar(20)
,`namHoc` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `gia_dinh`
--

CREATE TABLE `gia_dinh` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `hoTen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quanHeVoiNhanKhau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiHienTai` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gia_dinh`
--

INSERT INTO `gia_dinh` (`ID`, `idNhanKhau`, `hoTen`, `namSinh`, `gioiTinh`, `quanHeVoiNhanKhau`, `ngheNghiep`, `diaChiHienTai`) VALUES
(2, 27, 'Nguy???n Minh Qu??n', '1995-05-31', 'Nam', 'Ch???ng', 'K??? s??', 'S??? 2 T??? Quang B???u, Hai B?? Tr??ng, H?? N???i'),
(3, 28, 'Tr???n Thanh Duy??n', '1997-12-23', 'N???', 'V???', 'Nh??n vi??n v??n ph??ng', 'S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(4, 29, 'V?? M??? Linh', '1965-12-06', 'N???', 'V???', 'N???i tr???', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(5, 29, 'Nguy???n Ti???n ?????t', '1990-09-09', 'Nam', 'Con trai', 'K??? s?? ??i???n', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(6, 29, 'Nguy???n Tr?? My', '1997-12-12', 'N???', 'Con g??i', 'Lu???t s??', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(7, 30, 'Nguy???n Ti???n D??ng', '1964-06-03', 'Nam', 'Ch???ng', 'Ph?? gi??m ?????c', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(8, 30, 'Nguy???n Ti???n ?????t', '1990-09-09', 'Nam', 'Con trai', 'K??? s?? ??i???n', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(9, 30, 'Nguy???n Tr?? My', '1997-12-12', 'N???', 'Con G??i', 'Lu???t s??', ''),
(10, 31, 'Nguy???n Ti???n D??ng', '1964-06-03', 'Nam', 'B???', 'Ph?? gi??m ?????c', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(11, 31, 'V?? M??? Linh', '1965-12-06', 'N???', 'M???', 'N???i tr???', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(12, 31, 'Nguy???n Tr?? My', '1997-12-12', 'N???', 'Em g??i', 'Lu???t s??', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(13, 32, 'Nguy???n Ti???n D??ng', '1964-06-03', 'Nam', 'B???', 'Ph?? gi??m ?????c', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(14, 32, 'V?? M??? Linh', '1965-12-06', 'N???', 'M???', 'N???i tr???', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(15, 32, 'Nguy???n Ti???n ?????t', '1990-09-09', 'Nam', 'Anh trai', 'K??? s?? ??i???n', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(16, 33, 'Nguy???n Minh Tuy???t', '1985-09-02', 'N???', 'V???', 'B??c s??', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(17, 33, 'Tr???n Trung Ki??n', '2008-12-25', 'Nam', 'Con trai', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(18, 33, 'Tr???n Th??y Ng???c', '2013-01-15', 'N???', 'Con g??i', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(19, 34, 'Tr???n Trung Ki??n', '2008-12-25', 'Nam', 'Con trai', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(20, 34, 'Tr???n Th??y Ng???c', '2013-01-15', 'N???', 'Con g??i', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(21, 34, 'Tr???n V??n Nam', '1980-07-09', 'Nam', 'Ch???ng', 'Gi???ng vi??n ?????i h???c', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(22, 35, 'Tr???n V??n Nam', '1980-07-09', 'Nam', 'B???', 'Gi???ng vi??n ?????i h???c', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(23, 35, 'Nguy???n Minh Tuy???t', '1985-09-02', 'N???', 'M???', 'B??c s??', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(24, 35, 'Tr???n Th??y Ng???c', '2013-01-15', 'N???', 'Em g??i', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(25, 36, 'Tr???n V??n Nam', '1980-07-09', 'Nam', 'B???', 'Gi???ng vi??n ?????i h???c', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(26, 36, 'Nguy???n Minh Tuy???t', '1985-09-02', 'N??? ', 'M???', 'B??c s??', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(27, 36, 'Tr???n Trung Ki??n', '2008-12-25', 'Nam', 'Anh trai', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(28, 37, 'B??i Th??? H??', '1948-02-03', 'N???', 'V???', 'N???i tr???', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(29, 37, 'L?? Th??nh Nam', '1968-06-12', 'Nam', 'Con Trai', 'C??ng nh??n', 'S??? 89, ng?? 98 Tr?????ng Chinh, H?? N???i'),
(30, 37, 'L?? Thu Th???y', '1971-03-05', 'N???', 'Con G??i', 'Nh??n vi??n v??n ph??ng', 'S??? 3, ng?? 568 ???????ng L??ng, H?? N???i'),
(31, 38, 'L?? V??n C??ng', '1945-06-04', 'Nam', 'Ch???ng', 'B??? ?????i v??? h??u', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(32, 38, 'L?? Th??nh Nam', '1968-06-12', 'Nam', 'Con trai', 'C??ng nh??n', 'S??? 89, ng?? 98 Tr?????ng Chinh, H?? N???i'),
(33, 38, 'L?? Thu Th???y', '1971-03-05', 'N???', 'Con g??i', 'Nh??n vi??n v??n ph??ng', 'S??? 3, ng?? 568 ???????ng L??ng, H?? N???i');

-- --------------------------------------------------------

--
-- Table structure for table `ho_khau`
--

CREATE TABLE `ho_khau` (
  `ID` int(11) NOT NULL,
  `maHoKhau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idChuHo` int(11) DEFAULT NULL,
  `maKhuVuc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayLap` date DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguoiThucHien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ho_khau`
--

INSERT INTO `ho_khau` (`ID`, `maHoKhau`, `idChuHo`, `maKhuVuc`, `diaChi`, `ngayLap`, `ngayChuyenDi`, `lyDoChuyen`, `nguoiThucHien`) VALUES
(13, 'TQB002', 28, 'HN03', 'S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '2019-12-08', NULL, NULL, NULL),
(14, 'TQB001', 26, 'HN03', 'S??? 1 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '2019-12-08', NULL, NULL, NULL),
(15, 'TQB003', 29, 'HN03', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '2019-12-08', NULL, NULL, NULL),
(16, 'TQB004', 33, 'HN03', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '2019-12-08', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `khai_tu`
--

CREATE TABLE `khai_tu` (
  `ID` int(11) NOT NULL,
  `soGiayKhaiTu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idNguoiKhai` int(11) DEFAULT NULL,
  `idNguoiChet` int(11) DEFAULT NULL,
  `ngayKhai` date DEFAULT NULL,
  `ngayChet` date DEFAULT NULL,
  `lyDoChet` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khai_tu`
--

INSERT INTO `khai_tu` (`ID`, `soGiayKhaiTu`, `idNguoiKhai`, `idNguoiChet`, `ngayKhai`, `ngayChet`, `lyDoChet`) VALUES
(1, '12', 26, 27, '2021-12-25', '2021-12-25', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `le_tet`
--

CREATE TABLE `le_tet` (
  `idSuKien` int(11) NOT NULL,
  `thoiGian` date NOT NULL,
  `tenSuKien` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `motSuatQua` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tongGiaTriMotSuat` decimal(15,2) NOT NULL,
  `ngayTao` date NOT NULL,
  `idNguoiTao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `le_tet`
--

INSERT INTO `le_tet` (`idSuKien`, `thoiGian`, `tenSuKien`, `motSuatQua`, `tongGiaTriMotSuat`, `ngayTao`, `idNguoiTao`) VALUES
(1, '2019-06-01', 'T???t thi???u nhi', '1 toy v?? 2 g??i bim bim', '40000.00', '2019-05-29', 1),
(2, '2019-09-15', 'T???t trung thu', '1 ????n l???ng v?? 1 b??nh trung thu', '50000.00', '2019-09-10', 1),
(3, '2019-09-15', 'Khai gi???ng', '2 quy???n v???', '10000.00', '2019-09-05', 1),
(6, '2022-02-06', 'T???t 2022', 'L?? x?? x 20', '23000.00', '2022-01-06', 3);

-- --------------------------------------------------------

--
-- Table structure for table `lich_su_thay_doink`
--

CREATE TABLE `lich_su_thay_doink` (
  `ID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `idHoKhauMoi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idNhanKhau` int(11) NOT NULL,
  `suKien` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nam_hoc`
--

CREATE TABLE `nam_hoc` (
  `namHoc` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `motSuatQua` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tongGiaTriMotSuat` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nam_hoc`
--

INSERT INTO `nam_hoc` (`namHoc`, `motSuatQua`, `tongGiaTriMotSuat`) VALUES
('2018-2019', '5 quy???n v???', '25000.0000'),
('2019-2020', '4 quy???n v???', '20000.0000'),
('2020-2021', '2 con dao Th??i', '90000.0000'),
('2021-2022', '5 b??t', '10000.0000');

-- --------------------------------------------------------

--
-- Table structure for table `nhan_khau`
--

CREATE TABLE `nhan_khau` (
  `ID` int(11) NOT NULL,
  `maNhanKhau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hoTen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bietDanh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiSinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguyenQuan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danToc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tonGiao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quocTich` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soHoChieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiThuongTru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiHienNay` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trinhDoHocVan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TrinhDoChuyenMon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bietTiengDanToc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trinhDoNgoaiNgu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiLamViec` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tienAn` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayChuyenDen` date DEFAULT NULL,
  `lyDoChuyenDen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyenDi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiMoi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayTao` date DEFAULT NULL,
  `idNguoiTao` int(11) DEFAULT NULL,
  `ngayXoa` date DEFAULT NULL,
  `idNguoiXoa` int(11) DEFAULT NULL,
  `lyDoXoa` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghiChu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhan_khau`
--

INSERT INTO `nhan_khau` (`ID`, `maNhanKhau`, `hoTen`, `bietDanh`, `namSinh`, `gioiTinh`, `noiSinh`, `nguyenQuan`, `danToc`, `tonGiao`, `quocTich`, `soHoChieu`, `noiThuongTru`, `diaChiHienNay`, `trinhDoHocVan`, `TrinhDoChuyenMon`, `bietTiengDanToc`, `trinhDoNgoaiNgu`, `ngheNghiep`, `noiLamViec`, `tienAn`, `ngayChuyenDen`, `lyDoChuyenDen`, `ngayChuyenDi`, `lyDoChuyenDi`, `diaChiMoi`, `ngayTao`, `idNguoiTao`, `ngayXoa`, `idNguoiXoa`, `lyDoXoa`, `ghiChu`) VALUES
(26, NULL, 'Trinh V??n An', '', '1990-12-07', 'Nam', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 1 T??? Quang B??u, Hai B?? Tr??ng, H?? N???i', 'S??? 1 T??? Quang B??u, Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Th???c s??', 'Kh??ng', 'Anh tr??nh ????? B', 'Gi??o Vi??n', 'Tr?????ng THCS Chu V??n An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(27, NULL, 'Tr???n Thanh Duy??n', '', '1997-12-23', 'N???', NULL, 'H???i Ph??ng', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 3, ???????ng ????nh ????ng, ph?????ng ????nh ????ng, qu???n Ng?? Quy???n, H???i Ph??ng', 'S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Th???c s??', 'Kh??ng', 'Anh tr??nh ????? D', 'Nh??n vi??n v??n ph??ng', 'C??ng ty ABC', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(28, NULL, 'Nguy???n Minh Qu??n', '', '1995-05-31', 'Nam', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Th???c s??', 'Kh??ng', 'Anh tr??nh ????? D', 'K??? s??', 'Viettel', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(29, NULL, 'Nguy???n Ti???n D??ng', '', '1964-06-03', 'Nam', NULL, 'H???i D????ng', 'Kinh', 'Thi??n ch??a gi??o', 'Vi???t Nam', '', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'K??? s??', 'Kh??ng', 'Kh??ng', 'Ph?? gi??m ?????c', 'C??ng ty EXE', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(30, NULL, 'V?? M??? Linh', '', '1965-12-06', 'N???', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12', 'C??? Nh??n', 'Kh??ng', 'Kh??ng', 'N???i tr???', 'T???i nh??', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(31, NULL, 'Nguy???n Ti???n ?????t', '', '1990-09-09', 'Nam', NULL, 'H???i D????ng', 'Kinh', 'Thi??n ch??a gi??o', 'Vi???t Nam', '', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'K??? s??', 'kh??ng', 'Anh tr??nh ????? C', 'K??? s?? ??i???n', 'C??ng ty ??i???n EVN', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(32, NULL, 'Nguy???n Tr?? My', '', '1997-12-12', 'N???', NULL, 'H???i D????ng', 'Kinh', 'Thi??n ch??a gi??o', 'Vi???t Nam', '', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Th???c s??', 'kh??ng', 'Anh tr??nh ????? D', 'Lu???t s??', 'V??n ph??ng lu???t s?? 123', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(33, NULL, 'Tr???n V??n Nam', '', '1980-07-09', 'Nam', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Ti???n s??', 'Kh??ng', 'Anh tr??nh ????? D', 'Gi???ng vi??n ?????i h???c', '?????i h???c B??ch khoa H?? N???i', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(34, NULL, 'Nguy???n Minh Tuy???t', '', '1985-09-02', 'N???', NULL, 'Nam ?????nh', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Th???c s??', 'Kh??ng', 'Anh tr??nh ????? D', 'B??c s??', 'B???nh vi???n qu???c t??? HJK', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(35, NULL, 'Tr???n Trung Ki??n', '', '2008-12-25', 'Nam', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '6/12 ch??nh quy', 'Kh??ng', 'Kh??ng', 'Kh??ng', 'H???c sinh', 'Tr?????ng THCS Chu V??n An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(36, NULL, 'Tr???n Th??y Ng???c', '', '2013-01-15', 'N???', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '1/12 ch??nh quy', 'Kh??ng', 'Kh??ng', 'Kh??ng', 'H???c sinh', 'Tr?????ng ti???u h???c Chu V??n An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(37, NULL, 'L?? V??n C??ng', '', '1945-06-04', 'Nam', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '10/12 ch??nh quy', 'Kh??ng', 'Kh??ng', 'Kh??ng', 'V??? h??u', 'Kh??ng', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(38, NULL, 'B??i Th??? H??', '', '1948-02-03', 'N???', NULL, 'H???i Ph??ng', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '10/12', 'Kh??ng', 'Kh??ng', 'Kh??ng', 'N???i tr???', 'T???i nh??', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qua_hsg`
--

CREATE TABLE `qua_hsg` (
  `thanhTich` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `namHoc` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soLuongSuatQua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `qua_hsg`
--

INSERT INTO `qua_hsg` (`thanhTich`, `namHoc`, `soLuongSuatQua`) VALUES
('H???c sinh gi???i', '2018-2019', 4),
('H???c sinh gi???i', '2019-2020', 5),
('H???c sinh gi???i', '2020-2021', 3),
('H???c sinh gi???i', '2021-2022', 3),
('H???c sinh kh??', '2018-2019', 2),
('H???c sinh kh??', '2019-2020', 3),
('H???c sinh kh??', '2020-2021', 2),
('H???c sinh kh??', '2021-2022', 2),
('H???c sinh trung b??nh', '2018-2019', 1),
('H???c sinh trung b??nh', '2019-2020', 1),
('H???c sinh trung b??nh', '2020-2021', 1),
('H???c sinh trung b??nh', '2021-2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tam_tru`
--

CREATE TABLE `tam_tru` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `maGiayTamtru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soDienThoaiNguoiDangKy` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuNgay` date NOT NULL,
  `denNgay` date NOT NULL,
  `lyDo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tam_vang`
--

CREATE TABLE `tam_vang` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `maGiayTamVang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiTamtru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `lyDo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thanh_vien_cua_ho`
--

CREATE TABLE `thanh_vien_cua_ho` (
  `idNhanKhau` int(11) NOT NULL,
  `idHoKhau` int(11) NOT NULL,
  `quanHeVoiChuHo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanh_vien_cua_ho`
--

INSERT INTO `thanh_vien_cua_ho` (`idNhanKhau`, `idHoKhau`, `quanHeVoiChuHo`) VALUES
(27, 13, 'V???'),
(30, 15, 'V???'),
(31, 15, 'Con trai'),
(32, 15, 'Con g??i'),
(34, 16, 'V???'),
(35, 16, 'Con trai'),
(36, 16, 'Con g??i');

-- --------------------------------------------------------

--
-- Table structure for table `tieu_su`
--

CREATE TABLE `tieu_su` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `diaChi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiLamViec` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tieu_su`
--

INSERT INTO `tieu_su` (`ID`, `idNhanKhau`, `tuNgay`, `denNgay`, `diaChi`, `ngheNghiep`, `noiLamViec`) VALUES
(2, 27, '2015-09-05', '2015-09-05', 'S??? 45, ng?? 56, Nguy???n Khang, C???u Gi???y, H?? N???i', 'Sinh vi??n', '?????i h???c Th????ng m???i'),
(3, 28, '2012-09-05', '2017-09-05', '556 La Th??nh, H?? N???i', 'Sinh vi??n', '?????i h???c B??ch khoa H?? N???i'),
(4, 29, '1989-05-10', '2000-08-25', 'S??? 5 Nguy???n Khuy???n, H?? N???i', 'Qu???n l?? nh???n s???', 'C??ng ty BCC'),
(5, 30, '1987-05-23', '1997-03-01', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'Nh??n vi??n v??n ph??ng', 'C??ng ty Zezs'),
(6, 31, '2008-09-05', '2013-09-05', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'Sinh vi??n', '?????i h???c B??ch khoa H?? N???i'),
(7, 32, '2015-09-05', '2019-09-05', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'Sinh vi??n', '?????i h???c Lu???t H?? N???i'),
(8, 33, '1998-09-05', '2003-09-05', 'S??? 66, ng?? 445 Nguy???n Khang, C???u Gi???y, H?? N???i', 'Sinh vi??n', '?????i h???c B??ch khoa H?? N???i'),
(9, 33, '2003-10-03', '2018-08-06', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'Gi???ng vi??n', '?????i h???c C??ng ngi???p H?? N???i'),
(10, 34, '2003-09-05', '2011-09-05', 'S??? 8 T??n Th???t T??ng, H?? N???i', 'Sinh vi??n', '?????i h???c Y H?? N???i'),
(11, 34, '2011-10-03', '2015-08-09', 'S??? 8 T??n Th???t T??ng, H?? N???i', 'B??c s?? n???i tr??', 'B???nh vi???n B???ch Mai'),
(12, 37, '1961-01-01', '1963-01-01', 'Kh??ng r??', 'B??? ?????i', 'H?? N???i');

-- --------------------------------------------------------

--
-- Table structure for table `trao_qua_hsg`
--

CREATE TABLE `trao_qua_hsg` (
  `idNhanKhau` int(11) NOT NULL,
  `thanhTich` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `namHoc` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `minhChung` longblob DEFAULT NULL,
  `trangThai` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trao_qua_hsg`
--

INSERT INTO `trao_qua_hsg` (`idNhanKhau`, `thanhTich`, `namHoc`, `minhChung`, `trangThai`, `ngayNhan`) VALUES
(35, 'H???c sinh gi???i', '2018-2019', NULL, '???? nh???n', '2019-10-20'),
(35, 'H???c sinh gi???i', '2019-2020', NULL, '???? nh???n', '2020-10-20'),
(35, 'H???c sinh gi???i', '2020-2021', NULL, '???? nh???n', '2022-01-07'),
(35, 'H???c sinh kh??', '2021-2022', NULL, '???? nh???n', '2022-01-07'),
(36, 'H???c sinh gi???i', '2018-2019', NULL, '???? nh???n', '2019-10-20'),
(36, 'H???c sinh trung b??nh', '2019-2020', NULL, '???? nh???n', '2020-10-20'),
(36, 'H???c sinh gi???i', '2020-2021', NULL, '???? nh???n', '2022-01-07'),
(36, 'H???c sinh gi???i', '2021-2022', NULL, '???? nh???n', '2022-01-07');

-- --------------------------------------------------------

--
-- Table structure for table `trao_qua_le_tet`
--

CREATE TABLE `trao_qua_le_tet` (
  `idHoKhau` int(11) NOT NULL,
  `idSuKien` int(11) NOT NULL,
  `soLuongQua` int(11) NOT NULL,
  `trangThai` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngayNhanQua` date DEFAULT NULL,
  `idNguoiGhiNhan` int(11) DEFAULT NULL,
  `thoiGianGhiNhan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `trao_qua_le_tet`
--

INSERT INTO `trao_qua_le_tet` (`idHoKhau`, `idSuKien`, `soLuongQua`, `trangThai`, `ngayNhanQua`, `idNguoiGhiNhan`, `thoiGianGhiNhan`) VALUES
(13, 6, 1, '???? nh???n', '2022-01-06', 1, '2022-01-06'),
(14, 6, 1, '???? nh???n', '2022-01-06', 1, '2022-01-06'),
(15, 6, 4, '???? nh???n', '2022-03-06', 1, '2022-01-06'),
(16, 1, 2, '???? nh???n', '2019-06-01', 1, '2019-06-02'),
(16, 2, 2, '???? nh???n', '2019-09-14', 1, '2019-09-15'),
(16, 3, 2, '???? nh???n', '2019-09-15', 1, '2019-09-15'),
(16, 6, 4, '???? nh???n', '2022-01-06', 1, '2022-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `userName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `userName`, `passwd`) VALUES
(0, 'system', NULL),
(1, 'totruong', '1'),
(2, 'topho', '1'),
(3, 'thuki', '1');

-- --------------------------------------------------------

--
-- Structure for view `ds_hoc_sinh`
--
DROP TABLE IF EXISTS `ds_hoc_sinh`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ds_hoc_sinh`  AS SELECT `nhan_khau`.`ID` AS `ID`, `nhan_khau`.`hoTen` AS `hoTen`, `nhan_khau`.`noiLamViec` AS `noiLamViec`, `thanh_vien_cua_ho`.`idHoKhau` AS `idHoKhau`, `thanh_vien_cua_ho`.`quanHeVoiChuHo` AS `quanHeVoiChuHo`, `trao_qua_hsg`.`thanhTich` AS `thanhTich`, `trao_qua_hsg`.`minhChung` AS `minhChung`, `trao_qua_hsg`.`trangThai` AS `trangThai`, `trao_qua_hsg`.`namHoc` AS `namHoc` FROM ((`nhan_khau` left join `thanh_vien_cua_ho` on(`nhan_khau`.`ID` = `thanh_vien_cua_ho`.`idNhanKhau`)) left join `trao_qua_hsg` on(`nhan_khau`.`ID` = `trao_qua_hsg`.`idNhanKhau`)) WHERE `nhan_khau`.`ngheNghiep` = 'H???c sinh' AND `trao_qua_hsg`.`namHoc` = (select max(`nam_hoc`.`namHoc`) from `nam_hoc`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chung_minh_thu`
--
ALTER TABLE `chung_minh_thu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);
ALTER TABLE `chung_minh_thu` ADD FULLTEXT KEY `soCMT` (`soCMT`);

--
-- Indexes for table `danh_sach_nhan_qua_cac_nam`
--
ALTER TABLE `danh_sach_nhan_qua_cac_nam`
  ADD PRIMARY KEY (`idNhanKhau`,`namHoc`),
  ADD KEY `danh_sach_hoc_sinh_nam_hoc_fk2_idx` (`namHoc`);

--
-- Indexes for table `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idHoKhau` (`idHoKhau`),
  ADD KEY `nguoiThayDoi` (`nguoiThayDoi`);

--
-- Indexes for table `gia_dinh`
--
ALTER TABLE `gia_dinh`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Indexes for table `ho_khau`
--
ALTER TABLE `ho_khau`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idChuHo` (`idChuHo`);
ALTER TABLE `ho_khau` ADD FULLTEXT KEY `maHoKhau` (`maHoKhau`);

--
-- Indexes for table `khai_tu`
--
ALTER TABLE `khai_tu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNguoiKhai` (`idNguoiKhai`),
  ADD KEY `idNguoiChet` (`idNguoiChet`);

--
-- Indexes for table `le_tet`
--
ALTER TABLE `le_tet`
  ADD PRIMARY KEY (`idSuKien`),
  ADD UNIQUE KEY `idSuKien_UNIQUE` (`idSuKien`),
  ADD KEY `le_tet_fk1` (`idNguoiTao`);

--
-- Indexes for table `lich_su_thay_doink`
--
-- ALTER TABLE `lich_su_thay_doink`
  -- ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nam_hoc`
--
ALTER TABLE `nam_hoc`
  ADD PRIMARY KEY (`namHoc`);

--
-- Indexes for table `nhan_khau`
--
ALTER TABLE `nhan_khau`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNguoiTao` (`idNguoiTao`),
  ADD KEY `idNguoiXoa` (`idNguoiXoa`);
ALTER TABLE `nhan_khau` ADD FULLTEXT KEY `hoTen` (`hoTen`,`bietDanh`);

--
-- Indexes for table `qua_hsg`
--
ALTER TABLE `qua_hsg`
  ADD PRIMARY KEY (`thanhTich`,`namHoc`),
  ADD KEY `qua_hsg_fk1_idx` (`namHoc`);

--
-- Indexes for table `tam_tru`
--
ALTER TABLE `tam_tru`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Indexes for table `tam_vang`
--
ALTER TABLE `tam_vang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Indexes for table `thanh_vien_cua_ho`
--
ALTER TABLE `thanh_vien_cua_ho`
  ADD PRIMARY KEY (`idNhanKhau`,`idHoKhau`),
  ADD KEY `idHoKhau` (`idHoKhau`);

--
-- Indexes for table `tieu_su`
--
ALTER TABLE `tieu_su`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Indexes for table `trao_qua_hsg`
--
ALTER TABLE `trao_qua_hsg`
  ADD PRIMARY KEY (`idNhanKhau`,`namHoc`),
  ADD KEY `s_idx` (`thanhTich`,`namHoc`);

--
-- Indexes for table `trao_qua_le_tet`
--
ALTER TABLE `trao_qua_le_tet`
  ADD PRIMARY KEY (`idHoKhau`,`idSuKien`),
  ADD KEY `qua_le_tet_fk2_idx` (`idSuKien`),
  ADD KEY `trao_qua_le_tet_fk3` (`idNguoiGhiNhan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chung_minh_thu`
--
ALTER TABLE `chung_minh_thu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gia_dinh`
--
ALTER TABLE `gia_dinh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ho_khau`
--
ALTER TABLE `ho_khau`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `khai_tu`
--
ALTER TABLE `khai_tu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `le_tet`
--
ALTER TABLE `le_tet`
  MODIFY `idSuKien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lich_su_thay_doink`
--
ALTER TABLE `lich_su_thay_doink`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nhan_khau`
--
ALTER TABLE `nhan_khau`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tam_tru`
--
ALTER TABLE `tam_tru`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tam_vang`
--
ALTER TABLE `tam_vang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tieu_su`
--
ALTER TABLE `tieu_su`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chung_minh_thu`
--
ALTER TABLE `chung_minh_thu`
  ADD CONSTRAINT `chung_minh_thu_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Constraints for table `danh_sach_nhan_qua_cac_nam`
--
ALTER TABLE `danh_sach_nhan_qua_cac_nam`
  ADD CONSTRAINT `danh_sach_hoc_sinh_nam_hoc_fk1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`),
  ADD CONSTRAINT `danh_sach_hoc_sinh_nam_hoc_fk2` FOREIGN KEY (`namHoc`) REFERENCES `nam_hoc` (`namHoc`);

--
-- Constraints for table `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  ADD CONSTRAINT `dinh_chinh_ibfk_1` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`),
  ADD CONSTRAINT `dinh_chinh_ibfk_2` FOREIGN KEY (`nguoiThayDoi`) REFERENCES `users` (`ID`);

--
-- Constraints for table `gia_dinh`
--
ALTER TABLE `gia_dinh`
  ADD CONSTRAINT `gia_dinh_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Constraints for table `ho_khau`
--
ALTER TABLE `ho_khau`
  ADD CONSTRAINT `ho_khau_ibfk_1` FOREIGN KEY (`idChuHo`) REFERENCES `nhan_khau` (`ID`);

--
-- Constraints for table `khai_tu`
--
ALTER TABLE `khai_tu`
  ADD CONSTRAINT `khai_tu_ibfk_1` FOREIGN KEY (`idNguoiKhai`) REFERENCES `nhan_khau` (`ID`),
  ADD CONSTRAINT `khai_tu_ibfk_2` FOREIGN KEY (`idNguoiChet`) REFERENCES `nhan_khau` (`ID`);

--
-- Constraints for table `le_tet`
--
ALTER TABLE `le_tet`
  ADD CONSTRAINT `le_tet_fk1` FOREIGN KEY (`idNguoiTao`) REFERENCES `users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nhan_khau`
--
ALTER TABLE `nhan_khau`
  ADD CONSTRAINT `nhan_khau_ibfk_1` FOREIGN KEY (`idNguoiTao`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `nhan_khau_ibfk_2` FOREIGN KEY (`idNguoiXoa`) REFERENCES `users` (`ID`);

--
-- Constraints for table `qua_hsg`
--
ALTER TABLE `qua_hsg`
  ADD CONSTRAINT `qua_hsg_fk1` FOREIGN KEY (`namHoc`) REFERENCES `nam_hoc` (`namHoc`);

--
-- Constraints for table `tam_tru`
--
ALTER TABLE `tam_tru`
  ADD CONSTRAINT `tam_tru_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Constraints for table `tam_vang`
--
ALTER TABLE `tam_vang`
  ADD CONSTRAINT `tam_vang_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Constraints for table `thanh_vien_cua_ho`
--
ALTER TABLE `thanh_vien_cua_ho`
  ADD CONSTRAINT `thanh_vien_cua_ho_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`),
  ADD CONSTRAINT `thanh_vien_cua_ho_ibfk_2` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`);

--
-- Constraints for table `tieu_su`
--
ALTER TABLE `tieu_su`
  ADD CONSTRAINT `tieu_su_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Constraints for table `trao_qua_hsg`
--
ALTER TABLE `trao_qua_hsg`
  ADD CONSTRAINT `thanh_tich_hoc_sinh_fk1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`),
  ADD CONSTRAINT `thanh_tich_hoc_sinh_fk2` FOREIGN KEY (`thanhTich`,`namHoc`) REFERENCES `qua_hsg` (`thanhTich`, `namHoc`);

--
-- Constraints for table `trao_qua_le_tet`
--
ALTER TABLE `trao_qua_le_tet`
  ADD CONSTRAINT `trao_qua_le_tet_fk1` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`),
  ADD CONSTRAINT `trao_qua_le_tet_fk2` FOREIGN KEY (`idSuKien`) REFERENCES `le_tet` (`idSuKien`),
  ADD CONSTRAINT `trao_qua_le_tet_fk3` FOREIGN KEY (`idNguoiGhiNhan`) REFERENCES `users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
