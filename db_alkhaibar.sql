-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2021 pada 18.37
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_alkhaibar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_agent`
--

CREATE TABLE `tabel_agent` (
  `id_agent` int(200) NOT NULL,
  `user` varchar(64) NOT NULL,
  `tgl` varchar(64) NOT NULL,
  `browser` varchar(128) NOT NULL,
  `os` varchar(64) NOT NULL,
  `ip` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tabel_agent`
--

INSERT INTO `tabel_agent` (`id_agent`, `user`, `tgl`, `browser`, `os`, `ip`) VALUES
(72, 'ihwan', '2021-01-04 00:21:31', 'Firefox 84.0', 'Windows 10', '127.0.0.1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `kd_barang` varchar(15) NOT NULL,
  `nm_barang` varchar(64) NOT NULL,
  `kd_satuan` varchar(10) NOT NULL,
  `kd_kategori` varchar(10) NOT NULL,
  `kd_supplier` varchar(16) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `hrg_beli` int(11) NOT NULL,
  `kode_virtual` varchar(16) NOT NULL,
  `estimasi_stok` int(4) NOT NULL,
  `modal_per_porsi` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`kd_barang`, `nm_barang`, `kd_satuan`, `kd_kategori`, `kd_supplier`, `hrg_jual`, `hrg_beli`, `kode_virtual`, `estimasi_stok`, `modal_per_porsi`) VALUES
('091357905097', 'KUE SEMPRIT 250 GR', '', '', '', 13000, 0, '', 0, 0),
('4711036011354', 'HATARI ROSE  LEMON 210GR', '', '', '', 5500, 0, '', 0, 0),
('4968306479660', 'KIWI POLISH BROWN 17.5ML', '', '', '', 7500, 6142, '', 0, 0),
('614689001205', 'COLOLITE CAIR BROWN 45ML', '', '', '', 26500, 0, '', 0, 0),
('614689051040', 'COLOLITE PASTA NETRAL 35ML', '', '', '', 30000, 0, '', 0, 0),
('614689415019', 'SISIR BESAR CUSTOM BRUSH & COMB', '', '', '', 24000, 0, '', 0, 0),
('614689439008', 'SISIR WIDEX STYLE', '', '', '', 11000, 0, '', 0, 0),
('614689465007', 'SISIR BESAR DART', '', '', '', 7500, 6309, '', 0, 0),
('614689488006', 'SISIR BESAR CUSTOM PENYU', '', '', '', 5500, 5101, '', 0, 0),
('749921000323', 'TROPICANA DIABTX 50S', '', '', '', 45100, 38528, '', 0, 0),
('7622210462534', 'OREO MINI STRAWBERRY 67GR', '', '', '', 7500, 6256, '', 0, 0),
('7622210551733', 'OREO LONG RED VELVET 133G', '', '', '', 8500, 0, '', 0, 0),
('7622210708434', 'OREO DARK AND WHITE 133 G', '', '', '', 7500, 6650, '', 0, 0),
('7622300136048', 'OREO STRAWBERRY CREME 28,5G', '', '', '', 2000, 0, '', 0, 0),
('7622300136055', 'OREO STRAWBERY CREME 137GR', '', '', '', 7000, 6005, '', 0, 0),
('7622300442477', 'OREO ICE CREAM 28,5 G', '', '', '', 2000, 0, '', 0, 0),
('7622300442507', 'OREO ICE CREAM BLUEBERY 137GR', '', '', '', 7000, 6005, '', 0, 0),
('7622300761349', 'OREO MINI VANILA 67GR', '', '', '', 7500, 6256, '', 0, 0),
('7622300761363', 'OREO MINI COKLAT 67GR', '', '', '', 7500, 6256, '', 0, 0),
('8718291206453', 'PHILIPS TORNADO 15W', '', '', '', 45000, 36822, '', 0, 0),
('8718291777199', 'PHILIPS TORNADO 8W', '', '', '', 41000, 41615, '', 0, 0),
('8718291777236', 'PHILIPS TORNADO 12W', '', '', '', 42000, 34091, '', 0, 0),
('8718291777366', 'PHILIPS SITRANG 8W', '', '', '', 20500, 16782, '', 0, 0),
('8718291777380', 'PHILIPS SITRANG 11W', '', '', '', 22500, 18183, '', 0, 0),
('8718291791874', 'PHILIPS ESSENTIAL 8W', '', '', '', 31000, 24548, '', 0, 0),
('8718291791911', 'PHILIPS ESSENTIAL 11W', '', '', '', 34500, 27269, '', 0, 0),
('8718291791959', 'PHILIPS ESSENTIAL 14W', '', '', '', 37500, 29320, '', 0, 0),
('8718696467732', 'PHILIPS SITRANG 18W', '', '', '', 28000, 23076, '', 0, 0),
('8851019210254', 'GLICO PEJOY COKLAT 32GR', '', '', '', 7900, 6719, '', 0, 0),
('8851019210261', 'GLICO PEJOY MATCHA 32GR', '', '', '', 7900, 6719, '', 0, 0),
('8886022920258', 'ABC BATERAI BIRU TANGGUNG 2XR14S', '', '', '', 8000, 0, '', 0, 0),
('8886022950538', 'ABC ALKALINE 9VOLT', '', '', '', 31000, 26479, '', 0, 0),
('8887549019647', 'PANASONIC PRIMA BESAR 2S', '', '', '', 12000, 10720, '', 0, 0),
('8888166609662', 'KHONG GUAN SUPERCO 12 GR', '', '', '', 500, 480, '', 0, 0),
('8888166989948', 'MONDE EGG DROP 110 G', '', '', '', 6800, 6000, '', 0, 0),
('8888166995789', 'NS WALENS BLUEBERRY SOES 100GR', '', '', '', 9000, 8250, '', 0, 0),
('8888826016175', 'GILLETTE VECTOR RAZOR 1S', '', '', '', 20000, 16909, '', 0, 0),
('8888826016182', 'GILLETTE VECTOR REF 2S', '', '', '', 22500, 19068, '', 0, 0),
('8888826016243', 'GILLETTE DAISY PLUS 2S', '', '', '', 17500, 0, '', 0, 0),
('8990800016757', 'BIG BABOL TT FRUIT 140G', '', '', '', 10000, 10640, '', 0, 0),
('8991001242013', 'TOP CHOCOLATE 13 G', '', '', '', 1000, 0, '', 0, 0),
('8991001242570', 'TOP STRAWBERRY 13 G', '', '', '', 1000, 0, '', 0, 0),
('8991001242983', 'TOP BLACK IN WHITE 13 G', '', '', '', 1000, 0, '', 0, 0),
('8991001243034', 'TOP TRIPLE CHOC 13 G', '', '', '', 1000, 0, '', 0, 0),
('8991001770219', 'SELAMAT BISCUIT BLACK VANILLA 102GR', '', '', '', 22000, 0, '', 0, 0),
('8991002303829', 'RELAXA LEMON FUNZ 125G', '', '', '', 7000, 4484, '', 0, 0),
('8991002304017', 'RELAXA BARLEY MINT 125G', '', '', '', 7000, 4484, '', 0, 0),
('8991002311015', 'BONTEA GREEN LEMON 150G', '', '', '', 6500, 4229, '', 0, 0),
('8991002311114', 'BONTEA GREEN APPLE 135G', '', '', '', 6500, 4229, '', 0, 0),
('8991102281416', 'MINTZ PEPPERMINT BAG 115GR', '', '', '', 5500, 477, '', 0, 0),
('8991102281430', 'MINTZ DOUBLEMINT BAG 115GR', '', '', '', 5500, 477, '', 0, 0),
('8991102283373', 'MINTZ FRUITY LEMONMINT 115GR', '', '', '', 5500, 477, '', 0, 0),
('8991102283380', 'MINTZ CHERRYMINT BAG 115GR', '', '', '', 5500, 477, '', 0, 0),
('8991102283397', 'MINTZ SC GRAPEMINT 115gr', '', '', '', 5500, 477, '', 0, 0),
('8991115012021', 'BIG BABOL SAK STRAWBERY 140 G', '', '', '', 10000, 0, '', 0, 0),
('8992628020152', 'BIMOLI KLASIK REF 2 LT', '', '', '', 27500, 0, '', 0, 0),
('8992628022156', 'BIMOLI KLASIK REF 1 LT', '', '', '', 14500, 0, '', 0, 0),
('8992696405240', 'DANCOW FORTIGRO COKELAT 400GR', '', '', '', 45100, 38585, '', 0, 0),
('8992696405486', 'DANCOW FORTIGRO FULL CREAM 400GR', '', '', '', 50900, 37981, '', 0, 0),
('8992696428263', 'KOKO KRUNCH COMBO 32GR', '', '', '', 7700, 6609, '', 0, 0),
('8992696428287', 'MILO SEREAL COMBO 36GR', '', '', '', 7700, 6609, '', 0, 0),
('8992696428300', 'HONEY STARS 32 GR', '', '', '', 7700, 6609, '', 0, 0),
('8992741981903', 'YUPI STRAWBERY KISS 120GR', '', '', '', 8000, 5889, '', 0, 0),
('8992745330103', 'FOGO BREEZE 30G', '', '', '', 6100, 5253, '', 0, 0),
('8992745330110', 'STELLA FOGO FLORAL 30G', '', '', '', 6100, 5253, '', 0, 0),
('8992745330127', 'STELLA FOGO FRESH 30G', '', '', '', 6100, 5253, '', 0, 0),
('8992745940128', 'STELLA POCKET ORANGE 10 GR', '', '', '', 9200, 0, '', 0, 0),
('8992745940135', 'STELLA POCKET FRESH GREEN 10GR', '', '', '', 9200, 0, '', 0, 0),
('8992745940142', 'STELLA POCKET PURPLE 10GR', '', '', '', 9200, 0, '', 0, 0),
('8992745940159', 'STELLA POCKET PASSION RED 10 GR', '', '', '', 9200, 0, '', 0, 0),
('8992745940166', 'STELLA POCKET COOL BLUE', '', '', '', 9200, 0, '', 0, 0),
('8992749770509', 'KLINPAK KECIL 30S', '', '', '', 25500, 0, '', 0, 0),
('8992749770516', 'KLINPAK SEDANG 12S', '', '', '', 24800, 0, '', 0, 0),
('8992749770523', 'KLINPAK K SAMPAH BESAR 8S', '', '', '', 26500, 0, '', 0, 0),
('8992749770530', 'KLINPAK K SAMPAH EXTRA BESAR 5S', '', '', '', 25500, 0, '', 0, 0),
('8992760221028', 'OREO VANILA 137GR', '', '', '', 7000, 7105, '', 0, 0),
('8992765101004', 'GILLETTE GOAL RED 5S', '', '', '', 15600, 0, '', 0, 0),
('8992765101011', 'GILLETTE GOAL KLIK', '', '', '', 8000, 6561, '', 0, 0),
('8992774950143', 'UNIK LAP CHAMOIS MOTOR TUBE', '', '', '', 15000, 0, '', 0, 0),
('8992774950150', 'UNIK LAP CHAMOIS MOTOR REFILL', '', '', '', 14000, 0, '', 0, 0),
('8992775000007', 'CHOCOLATOS HAZELNUT 15 G', '', '', '', 1000, 0, '', 0, 0),
('8992775001011', 'GERRY SALUUT COCONUT 21 G', '', '', '', 2000, 0, '', 0, 0),
('8992775001608', 'CHOCOLATOS WHITE SWEET CHESE 15G', '', '', '', 1000, 0, '', 0, 0),
('8992775001653', 'GERRY SALUUT CHOC COCONUT 20 G', '', '', '', 2000, 0, '', 0, 0),
('8992775002582', 'DILAN CRUNCHY CHOCO CARAMEL 24G', '', '', '', 2000, 0, '', 0, 0),
('8992775311400', 'GERRY SALUUT CHOC COZTED 5,5 G', '', '', '', 1000, 0, '', 0, 0),
('8992775311479', 'CHOCOLATOS DARK 16 G', '', '', '', 1000, 0, '', 0, 0),
('8992775311608', 'CHOCOLATOS MINI 8,5 G', '', '', '', 500, 0, '', 0, 0),
('8992775311981', 'CHOCOLATOS GRANDE 16 G', '', '', '', 1000, 0, '', 0, 0),
('8992775312407', 'GERRY SALUUT CHOCO HAZELNUT 6 G', '', '', '', 1000, 0, '', 0, 0),
('8992775312452', 'GERRY SALUUT CHOCOLATE 7,5 G', '', '', '', 1000, 0, '', 0, 0),
('8992775317235', 'GERRY O DONUTS 8 GR', '', '', '', 500, 0, '', 0, 0),
('8992775610008', 'TING-TING GARUDA 125G', '', '', '', 7000, 6160, '', 0, 0),
('8992779055904', 'GLADE SENSATIONS REF FLORAL P 8GR', '', '', '', 13800, 0, '', 0, 0),
('8992779261800', 'KIT MOTOR TUBE 60G', '', '', '', 10000, 0, '', 0, 0),
('8992779266003', 'KIT MOTOR+SILICONE 6X15ML', '', '', '', 3500, 0, '', 0, 0),
('8992779269103', 'KIT SILICONE SPRAY 100ML', '', '', '', 11000, 0, '', 0, 0),
('8992779269202', 'KIT MOTOR MULTIGUNA 3X25ML', '', '', '', 4500, 0, '', 0, 0),
('8992839007577', 'UBM SQUARE PUFF 360G', '', '', '', 10000, 8610, '', 0, 0),
('8992948132252', 'IKAN MAS KACANG SUPER 250G', '', '', '', 6000, 5410, '', 0, 0),
('8993039111255', 'REGAL BISKUIT MARRIE 120G', '', '', '', 9500, 8180, '', 0, 0),
('8993039112504', 'REGAL BISKUIT MARRIE 230G', '', '', '', 17500, 15610, '', 0, 0),
('8993039242539', 'REGAL MARIE DUO COKELAT 100G', '', '', '', 5500, 4630, '', 0, 0),
('8993039242614', 'REGAL MARIE DUO KACANG 100G', '', '', '', 5500, 4630, '', 0, 0),
('8993175535885', 'NABATI COKLAT 50 G', '', '', '', 2500, 0, '', 0, 0),
('8993175538596', 'RICHOCO WAFER POUCH 125GR', '', '', '', 8500, 7014, '', 0, 0),
('8993175544764', 'NABATI PINK LAVA 130G', '', '', '', 6500, 0, '', 0, 0),
('8993496001076', 'SANIA OIL 2L', '', '', '', 23000, 0, '', 0, 0),
('8995077600425', 'DEKA JUMBO CHOC BAN 16 G', '', '', '', 1000, 0, '', 0, 0),
('8995077605505', 'DK WFR ROLL JUMBO CHEESY DURIAN', '', '', '', 1000, 17000, '', 0, 0),
('8995108509550', 'KWACI REBO ORIGINAL 70G', '', '', '', 9000, 8000, '', 0, 0),
('8995108509567', 'KWACI REBO MILK FLAVOR 70G', '', '', '', 9000, 8000, '', 0, 0),
('8995108509574', 'KWACI REBO GREEN TEA 70G', '', '', '', 8800, 7750, '', 0, 0),
('8996001301142', 'ROMA KELAPA 300GR', '', '', '', 8000, 7000, '', 0, 0),
('8996001302347', 'ROMA SARI GANDUM 240GR', '', '', '', 8500, 7250, '', 0, 0),
('8996001304013', 'SLAI OLAI STRAWBERRY 240GR', '', '', '', 9000, 0, '', 0, 0),
('8996001304426', 'SLAI OLAI STRAWBERRY 128GR', '', '', '', 4500, 3518, '', 0, 0),
('8996001304433', 'ROMA SLAY OLAY 128G NANAS', '', '', '', 4100, 3518, '', 0, 0),
('8996001304549', 'SLAI OLAI STROBERI 24 G', '', '', '', 1000, 0, '', 0, 0),
('8996001304921', 'SLAI OLAI NANANS 24 G', '', '', '', 1000, 0, '', 0, 0),
('8996001305041', 'ROMA SANDWICH CHOCOLATE 216GR', '', '', '', 6500, 5250, '', 0, 0),
('8996001305058', 'ROMA SANDWICH PEANUT BUTTER 216GR', '', '', '', 6500, 5250, '', 0, 0),
('8996001308059', 'ROMA SARI GANDUM SUSU&COKELAT 39G', '', '', '', 2000, 1680, '', 0, 0),
('8996001318430', 'BETTER VANILLA RTG[10]', '', '', '', 1000, 8750, '', 0, 0),
('8996001318911', 'BETTER VAN BITES ISI 4 48GR', '', '', '', 2000, 0, '', 0, 0),
('8996001350515', 'ZUPPERKEJU CHOCO 20,5G', '', '', '', 1000, 0, '', 0, 0),
('8996001350522', 'ROMA WAFER CHOCO BLAST 21G', '', '', '', 1000, 0, '', 0, 0),
('8996001350829', 'WAFELLO CHOCO BLAST 48G', '', '', '', 2000, 0, '', 0, 0),
('8996001351888', 'WAFELLO BUTTER CARAMEL 48G', '', '', '', 2000, 0, '', 0, 0),
('8996001354001', 'KALPA WAFER COKELAT 24 G', '', '', '', 2000, 0, '', 0, 0),
('8996001355756', 'BENG BENG MAXX 32GR BOX', '', '', '', 3000, 24500, '', 0, 0),
('8996001356753', 'ASTOR SINGLES 18 G', '', '', '', 1000, 0, '', 0, 0),
('8997004301108', 'SNACK PILLOWS CHOCOLATE 120GR', '', '', '', 9000, 8250, '', 0, 0),
('8997004301245', 'OISHI PILLOWS UBI 130GR', '', '', '', 8800, 7561, '', 0, 0),
('8997004301290', 'SNACK PILLOWS CHEESE 130GR', '', '', '', 9000, 8250, '', 0, 0),
('8997016010272', 'ML G SARI MARNING ASIN', '', '', '', 12200, 10810, '', 0, 0),
('8997226630314', 'IKAN MAS SANGHAI PUTIH 250GR', '', '', '', 12000, 10660, '', 0, 0),
('8997878001340', 'MILKITA MELON BAG 120GR', '', '', '', 8500, 6973, '', 0, 0),
('8997878332321', 'MILKITA MILK BAG 120GR', '', '', '', 8500, 6973, '', 0, 0),
('8997878332826', 'MILKITA STRAWBERRY BAG 120GR', '', '', '', 8500, 6973, '', 0, 0),
('8998225800043', 'FORTUNE 2 L', '', '', '', 27500, 0, '', 0, 0),
('8998899940519', 'KIWI CAIR BROWN 75ML', '', '', '', 27500, 0, '', 0, 0),
('8998899940533', 'KIWI CAIR NEUTRAL 75ML', '', '', '', 27500, 0, '', 0, 0),
('8998899940564', 'KIWI SHINE & PROTECT 30ML', '', '', '', 19000, 0, '', 0, 0),
('8999918585186', 'AIM MASTERBIS GABIN 120G', '', '', '', 4500, 4110, '', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_biaya`
--

CREATE TABLE `tabel_biaya` (
  `id` int(10) NOT NULL,
  `tgl` date NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `biaya` int(11) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kartu_stok`
--

CREATE TABLE `tabel_kartu_stok` (
  `idkartu` int(11) NOT NULL,
  `kode_toko` varchar(15) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `waktu` varchar(32) NOT NULL,
  `jam` varchar(32) NOT NULL,
  `sebelumnya` int(6) NOT NULL,
  `masuk` int(6) NOT NULL,
  `keluar` int(6) NOT NULL,
  `saldo` int(6) NOT NULL,
  `keterangan` text NOT NULL,
  `user` varchar(10) NOT NULL,
  `publish` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kategori_barang`
--

CREATE TABLE `tabel_kategori_barang` (
  `kd_kategori` varchar(10) NOT NULL,
  `nm_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tabel_kategori_barang`
--

INSERT INTO `tabel_kategori_barang` (`kd_kategori`, `nm_kategori`) VALUES
('K001', 'AGAR - AGAR'),
('K002', 'AKSESORIS'),
('K003', 'ALAT LISTRIK'),
('K004', 'ALAT TULIS'),
('K005', 'BABY CARE'),
('K006', 'MINUMAN SERBUK'),
('K007', 'BIHUN & MIE'),
('K008', 'BUMBU DAPUR'),
('K009', 'DETERGEN'),
('K010', 'HAND & BODY LOTIONS'),
('K011', 'HOUSEWARE'),
('K012', 'KAPAS & TISSUE'),
('K013', 'KECAP & SAOS'),
('K014', 'KERIPIK'),
('K015', 'KOPI & TEH'),
('K016', 'KOSMETIK'),
('K017', 'MAKANAN KALENG'),
('K018', 'MINUMAN'),
('K019', 'MOUTH CARE'),
('K020', 'OBAT SERANGGA'),
('K021', 'OBAT - OBATAN'),
('K022', 'PARFUM'),
('K023', 'PEMBALUT'),
('K024', 'PERMEN & COKELAT'),
('K025', 'PEWANGI PAKAIAN'),
('K026', 'ROTI KERING'),
('K027', 'SABUN'),
('K028', 'SEMBAKO'),
('K029', 'SERAGAM'),
('K030', 'SHAMPOO'),
('K031', 'SNACK'),
('K032', 'SUSU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_menu`
--

CREATE TABLE `tabel_menu` (
  `id_menu` int(64) NOT NULL,
  `kode_menu` varchar(16) NOT NULL,
  `nama_menu` varchar(32) NOT NULL,
  `harga_jual` int(16) NOT NULL,
  `harga_modal` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_mutasi`
--

CREATE TABLE `tabel_mutasi` (
  `id` int(10) NOT NULL,
  `mutasi` varchar(6) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `ket` mediumtext NOT NULL,
  `tgl` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pembelian`
--

CREATE TABLE `tabel_pembelian` (
  `no_faktur_pembelian` varchar(32) NOT NULL,
  `kd_supplier` varchar(15) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `selesai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_penjualan`
--

CREATE TABLE `tabel_penjualan` (
  `no_faktur_penjualan` varchar(16) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `waktu` time NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `total_penjualan` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total_penjualan_sdiskon` int(11) NOT NULL,
  `ket_diskon` varchar(30) NOT NULL,
  `cash` int(11) NOT NULL,
  `debet` int(11) NOT NULL,
  `ket` mediumtext NOT NULL,
  `selesai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tabel_penjualan`
--

INSERT INTO `tabel_penjualan` (`no_faktur_penjualan`, `tgl_penjualan`, `waktu`, `id_user`, `total_penjualan`, `diskon`, `total_penjualan_sdiskon`, `ket_diskon`, `cash`, `debet`, `ket`, `selesai`) VALUES
('SS001210104001', '2021-01-04', '00:30:29', 'ihwan', 0, 0, 0, '', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_retur`
--

CREATE TABLE `tabel_retur` (
  `id` int(10) NOT NULL,
  `no_faktur_penjualan` varchar(16) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_retur` varchar(11) NOT NULL,
  `ket` varchar(128) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rinci_menu`
--

CREATE TABLE `tabel_rinci_menu` (
  `id_rinci_menu` int(16) NOT NULL,
  `kode_menu` varchar(16) NOT NULL,
  `kode_bahan` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rinci_pembelian`
--

CREATE TABLE `tabel_rinci_pembelian` (
  `id` int(10) NOT NULL,
  `no_faktur_pembelian` varchar(16) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `nm_supplier` varchar(30) NOT NULL,
  `satuan` varchar(25) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `sub_total_beli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rinci_penjualan`
--

CREATE TABLE `tabel_rinci_penjualan` (
  `id` int(10) NOT NULL,
  `no_faktur_penjualan` varchar(16) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `diskonpersen` int(6) NOT NULL,
  `diskonrp` int(11) NOT NULL,
  `sub_total_jual` int(11) NOT NULL,
  `retur` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_satuan_barang`
--

CREATE TABLE `tabel_satuan_barang` (
  `kd_satuan` varchar(10) NOT NULL,
  `nm_satuan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tabel_satuan_barang`
--

INSERT INTO `tabel_satuan_barang` (`kd_satuan`, `nm_satuan`) VALUES
('S001', 'PCS'),
('S002', 'BOX'),
('S003', 'KALENG'),
('S004', 'SACHET'),
('S005', 'KARTON');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_stok_toko`
--

CREATE TABLE `tabel_stok_toko` (
  `id` int(10) NOT NULL,
  `kd_toko` varchar(15) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_min` int(11) NOT NULL,
  `tgl_perubahan` varchar(64) NOT NULL,
  `publish` int(1) NOT NULL,
  `ket` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tabel_stok_toko`
--

INSERT INTO `tabel_stok_toko` (`id`, `kd_toko`, `kd_barang`, `stok`, `stok_min`, `tgl_perubahan`, `publish`, `ket`) VALUES
(145, 'SS001', '8992696428287', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(146, 'SS001', '8992696428263', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(147, 'SS001', '8992696428300', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(148, 'SS001', '7622210462534', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(149, 'SS001', '7622300761349', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(150, 'SS001', '7622300761363', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(151, 'SS001', '8851019210254', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(152, 'SS001', '8851019210261', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(153, 'SS001', '8992948132252', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(154, 'SS001', '8997226630314', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(155, 'SS001', '8992839007577', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(156, 'SS001', '8991001770219', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(157, 'SS001', '8996001304433', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(158, 'SS001', '8996001304426', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(159, 'SS001', '7622300442507', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(160, 'SS001', '8992760221028', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(161, 'SS001', '7622210708434', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(162, 'SS001', '7622300136055', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(163, 'SS001', '8996001318430', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(164, 'SS001', '8996001308059', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(165, 'SS001', '8996001355756', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(166, 'SS001', '8992775002582', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(167, 'SS001', '8995077605505', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(168, 'SS001', '8992775001608', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(169, 'SS001', '8993039242539', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(170, 'SS001', '8993039242614', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(171, 'SS001', '8996001302347', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(172, 'SS001', '4711036011354', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(173, 'SS001', '8996001305058', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(174, 'SS001', '8996001305041', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(175, 'SS001', '8996001301142', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(176, 'SS001', '8996001304013', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(177, 'SS001', '8993039112504', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(178, 'SS001', '8993039111255', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(179, 'SS001', '8888166995789', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(180, 'SS001', '8999918585186', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(181, 'SS001', '8888166989948', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(182, 'SS001', '091357905097', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(183, 'SS001', '8993175544764', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(184, 'SS001', '7622210551733', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(185, 'SS001', '8993175535885', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(186, 'SS001', '8996001350829', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(187, 'SS001', '8996001351888', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(188, 'SS001', '8996001350522', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(189, 'SS001', '8996001350515', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(190, 'SS001', '7622300136048', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(191, 'SS001', '7622300442477', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(192, 'SS001', '8996001304549', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(193, 'SS001', '8996001304921', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(194, 'SS001', '8996001354001', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(195, 'SS001', '8992775311981', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(196, 'SS001', '8992775000007', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(197, 'SS001', '8992775311479', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(198, 'SS001', '8992775311608', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(199, 'SS001', '8995077600425', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(200, 'SS001', '8996001356753', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(201, 'SS001', '8991001243034', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(202, 'SS001', '8991001242570', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(203, 'SS001', '8991001242013', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(204, 'SS001', '8991001242983', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(205, 'SS001', '8992775001011', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(206, 'SS001', '8992775001653', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(207, 'SS001', '8992775311400', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(208, 'SS001', '8992775312452', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(209, 'SS001', '8992775312407', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(210, 'SS001', '8992696405240', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(211, 'SS001', '8992696405486', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(212, 'SS001', '749921000323', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(213, 'SS001', '8997004301290', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(214, 'SS001', '8997004301108', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(215, 'SS001', '8993175538596', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(216, 'SS001', '8995108509574', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(217, 'SS001', '8995108509567', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(218, 'SS001', '8995108509550', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(219, 'SS001', '8997016010272', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(220, 'SS001', '8991102281430', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(221, 'SS001', '8991102281416', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(222, 'SS001', '8991102283397', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(223, 'SS001', '8991102283380', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(224, 'SS001', '8991102283373', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(225, 'SS001', '8991002303829', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(226, 'SS001', '8991002304017', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(227, 'SS001', '8991002311114', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(228, 'SS001', '8991002311015', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(229, 'SS001', '8997878001340', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(230, 'SS001', '8997878332321', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(231, 'SS001', '8997878332826', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(232, 'SS001', '8990800016757', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(233, 'SS001', '8991115012021', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(234, 'SS001', '8992741981903', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(235, 'SS001', '8992775610008', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(236, 'SS001', '8718291791959', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(237, 'SS001', '8718291791911', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(238, 'SS001', '8718291791874', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(239, 'SS001', '8718291206453', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(240, 'SS001', '8718291777236', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(241, 'SS001', '8718291777199', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(242, 'SS001', '8718696467732', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(243, 'SS001', '8718291777380', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(244, 'SS001', '8718291777366', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(245, 'SS001', '8886022920258', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(246, 'SS001', '8887549019647', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(247, 'SS001', '8992779055904', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(248, 'SS001', '8992745940135', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(249, 'SS001', '8992745940128', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(250, 'SS001', '8992745940142', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(251, 'SS001', '8886022950538', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(252, 'SS001', '8992745330110', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(253, 'SS001', '8992745330103', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(254, 'SS001', '8992745330127', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(255, 'SS001', '8992745940159', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(256, 'SS001', '8992745940166', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(257, 'SS001', '614689465007', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(258, 'SS001', '614689488006', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(259, 'SS001', '614689415019', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(260, 'SS001', '614689439008', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(261, 'SS001', '8888826016175', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(262, 'SS001', '8888826016182', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(263, 'SS001', '8992765101011', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(264, 'SS001', '8888826016243', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(265, 'SS001', '8992765101004', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(266, 'SS001', '8992779269103', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(267, 'SS001', '8992774950143', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(268, 'SS001', '8992779261800', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(269, 'SS001', '8992779266003', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(270, 'SS001', '8992779269202', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(271, 'SS001', '8998899940519', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(272, 'SS001', '8998899940564', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(273, 'SS001', '8998899940533', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(274, 'SS001', '614689001205', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(275, 'SS001', '614689051040', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(276, 'SS001', '4968306479660', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(277, 'SS001', '8992774950150', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(278, 'SS001', '8992749770509', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(279, 'SS001', '8992749770516', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(280, 'SS001', '8992749770523', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(281, 'SS001', '8992749770530', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(282, 'SS001', '8992628020152', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(283, 'SS001', '8992628022156', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(284, 'SS001', '8993496001076', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(285, 'SS001', '8998225800043', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(286, 'SS001', '8997004301245', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(287, 'SS001', '8996001318911', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(288, 'SS001', '8888166609662', 0, 0, '03-01-2021', 0, 'Barang Baru'),
(289, 'SS001', '8992775317235', 0, 0, '03-01-2021', 0, 'Barang Baru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_supplier`
--

CREATE TABLE `tabel_supplier` (
  `kd_supplier` varchar(15) NOT NULL,
  `nm_supplier` varchar(25) NOT NULL,
  `almt_supplier` varchar(150) NOT NULL,
  `tlp_supplier` varchar(15) NOT NULL,
  `fax_supplier` varchar(15) NOT NULL,
  `atas_nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tabel_supplier`
--

INSERT INTO `tabel_supplier` (`kd_supplier`, `nm_supplier`, `almt_supplier`, `tlp_supplier`, `fax_supplier`, `atas_nama`) VALUES
('SP001', 'ENAK ECO', '', '', '', ''),
('SP002', 'GARUDA', '', '', '', ''),
('SP003', 'INDOMARCO', '', '', '', ''),
('SP004', 'MAYORA', '', '', '', ''),
('SP005', 'UNILEVER', '', '', '', ''),
('SP006', 'CIMORY', '', '', '', ''),
('SP007', 'GODREJ', '', '', '', ''),
('SP008', 'ANUGRAH SUMBER MAKMUR', '', '', '', ''),
('SP009', 'KONIMEX', '', '', '', ''),
('SP010', 'COCA COLA', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_toko`
--

CREATE TABLE `tabel_toko` (
  `kd_toko` varchar(15) NOT NULL,
  `nm_toko` varchar(30) NOT NULL,
  `almt_toko` varchar(150) NOT NULL,
  `tlp_toko` varchar(15) NOT NULL,
  `fax_toko` varchar(15) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tabel_toko`
--

INSERT INTO `tabel_toko` (`kd_toko`, `nm_toko`, `almt_toko`, `tlp_toko`, `fax_toko`, `logo`, `password`, `status`) VALUES
('SS001', 'Alkhaibar Minimart', 'Malang', '', '', 'mini.png', 'e10adc3949ba59abbe56e057f20f883e', 'pusat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id_user` varchar(10) NOT NULL,
  `nm_user` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL,
  `akses` varchar(15) NOT NULL,
  `kd_toko` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tabel_user`
--

INSERT INTO `tabel_user` (`id_user`, `nm_user`, `password`, `akses`, `kd_toko`) VALUES
('admin', 'Administrator', '21232f297a57a5a743894a0e4a801fc3', 'manager', 'SS001'),
('azkiya', 'Azkiya', '7af1c8118ee8743c9a469567ba4a5bcc', 'gudang', 'SS001'),
('dedy', 'Dedy Irwanda', 'd5fdbe5b16111739a53f6bedc2c29e5c', 'manager', 'SS001'),
('ihwan', 'Muhamad Ihwan', '12b19a711049706e5b62fd47b5daf134', 'admin', 'SS001'),
('indah', 'Indah Syampurna', 'f3385c508ce54d577fd205a1b2ecdfb7', 'kasir', 'SS001'),
('suliswati', 'Suliswati', '1c01f37a40d00ac9adbe53a28f57f246', 'kasir', 'SS001');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_agent`
--
ALTER TABLE `tabel_agent`
  ADD PRIMARY KEY (`id_agent`);

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`kd_barang`),
  ADD KEY `kd_barang` (`kd_barang`),
  ADD KEY `kd_satuan` (`kd_satuan`,`kd_kategori`,`kd_supplier`),
  ADD KEY `kd_barang_2` (`kd_barang`);

--
-- Indeks untuk tabel `tabel_biaya`
--
ALTER TABLE `tabel_biaya`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_kartu_stok`
--
ALTER TABLE `tabel_kartu_stok`
  ADD PRIMARY KEY (`idkartu`);

--
-- Indeks untuk tabel `tabel_kategori_barang`
--
ALTER TABLE `tabel_kategori_barang`
  ADD PRIMARY KEY (`kd_kategori`);

--
-- Indeks untuk tabel `tabel_menu`
--
ALTER TABLE `tabel_menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `kode_menu` (`kode_menu`);

--
-- Indeks untuk tabel `tabel_mutasi`
--
ALTER TABLE `tabel_mutasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_pembelian`
--
ALTER TABLE `tabel_pembelian`
  ADD PRIMARY KEY (`no_faktur_pembelian`);

--
-- Indeks untuk tabel `tabel_penjualan`
--
ALTER TABLE `tabel_penjualan`
  ADD PRIMARY KEY (`no_faktur_penjualan`),
  ADD KEY `no_faktur_penjualan` (`no_faktur_penjualan`);

--
-- Indeks untuk tabel `tabel_retur`
--
ALTER TABLE `tabel_retur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_rinci_menu`
--
ALTER TABLE `tabel_rinci_menu`
  ADD PRIMARY KEY (`id_rinci_menu`);

--
-- Indeks untuk tabel `tabel_rinci_pembelian`
--
ALTER TABLE `tabel_rinci_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_rinci_penjualan`
--
ALTER TABLE `tabel_rinci_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_faktur_penjualan` (`no_faktur_penjualan`),
  ADD KEY `fk_kd_barang` (`kd_barang`);

--
-- Indeks untuk tabel `tabel_satuan_barang`
--
ALTER TABLE `tabel_satuan_barang`
  ADD PRIMARY KEY (`kd_satuan`);

--
-- Indeks untuk tabel `tabel_stok_toko`
--
ALTER TABLE `tabel_stok_toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_barang` (`kd_barang`);

--
-- Indeks untuk tabel `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  ADD PRIMARY KEY (`kd_supplier`);

--
-- Indeks untuk tabel `tabel_toko`
--
ALTER TABLE `tabel_toko`
  ADD PRIMARY KEY (`kd_toko`);

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_agent`
--
ALTER TABLE `tabel_agent`
  MODIFY `id_agent` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `tabel_biaya`
--
ALTER TABLE `tabel_biaya`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tabel_kartu_stok`
--
ALTER TABLE `tabel_kartu_stok`
  MODIFY `idkartu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `tabel_menu`
--
ALTER TABLE `tabel_menu`
  MODIFY `id_menu` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tabel_mutasi`
--
ALTER TABLE `tabel_mutasi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_retur`
--
ALTER TABLE `tabel_retur`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_rinci_menu`
--
ALTER TABLE `tabel_rinci_menu`
  MODIFY `id_rinci_menu` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tabel_rinci_pembelian`
--
ALTER TABLE `tabel_rinci_pembelian`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `tabel_rinci_penjualan`
--
ALTER TABLE `tabel_rinci_penjualan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT untuk tabel `tabel_stok_toko`
--
ALTER TABLE `tabel_stok_toko`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
