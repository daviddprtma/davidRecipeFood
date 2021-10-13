-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2021 at 01:58 AM
-- Server version: 10.3.31-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hybrid_160419103`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `idrecipefood` int(11) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `bahan` varchar(3000) DEFAULT NULL,
  `persiapan` varchar(5000) DEFAULT NULL,
  `gambar` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`idrecipefood`, `judul`, `bahan`, `persiapan`, `gambar`) VALUES
(1, 'Hamburger', 'Sekitar 500 g daging sapi giling,6 bun burger,1 kuning telur,½ bawang bombay\r\nSaus tomat\r\n1 sendok makan saus Worcestershire\r\n1 sendok makan mustard\r\n1 sendok makan lada putih\r\n1 siung bawang putih\r\nSedikit daun bumbu segar, iris kasar\r\nLada dan garam untuk memberi rasa', 'Pilih daging yang tepat, Letakkan daging sapi giling di dalam mangkuk,Cincang kasar bawang bombay dan bawang putih,Tambahkan bahan lain yang ingin Anda tambahkan ke dalam burger,Tambahkan telur kuning.Buat burger.', 'https://www.wikihow.com/images/thumb/4/45/Make-a-Hamburger-Step-16-Version-2.jpg/v4-728px-Make-a-Hamburger-Step-16-Version-2.jpg.webp'),
(2, 'Sop Daging Sapi', '300 g daging sapi, potong kotak 2 buah kentang ukurang sedang, potong kotak 2 buah wortel, potong 22 batang daun bawang, potong 1 ccm daun seledri garam merica 1L air 4 sdm Bango Kecap Manis minyak untuk menumis', '1\r\nRebus daging hingga empuk.\r\n\r\n2\r\nSementara tumis bumbu halus hingga harum. Kemudian masukkan bumbu halus ke dalam rebusan daging.\r\n\r\n3\r\nMasukkan kentang, setelah kentang setengah matang, masukkan wortel dan buncis serta Bango Kecap Manis.\r\n\r\n4\r\nTambahkan daun bawang seledri, garam dan merica bubuk. Sajikan.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn5axQuTk0dDrVLbdrjwCcFAJJ5Rg7E3_yvA&usqp=CAU'),
(3, 'Tumis Buncis Telur', '250g buncis, siangi dan iris serong 2 butir telur ayam, kocok lepas 3 butir bawang merah, iris tipis 2 siung bawang putih, iris tipis 3 buah cabai merah besar, buang biji dan iris tipis 100 ml air 2 sdt Royco Kaldu Ayam 1 sdm Bango Kecap Manis Light ¼ sdt merica putih bubuk minyak sayur', '1\r\nTumis bawang merah, bawang putih, dan cabai merah besar sampai harum.\r\n2\r\nMasukkan telur, masak orak arik. Tambahkan buncis, air dan tumis hingga setengah layu.\r\n3\r\nTuangkan Bango Kecap Manis Light, Royco Kaldu Ayam, dan merica. Aduk rata.\r\n4\r\nSetelah matang, angkat dan sajikan.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlrEhmvNcPZ1N3aiZJsQhboMHdB_lKECg9Vg&usqp=CAU'),
(4, 'Pizza ', '250 gr Tepung terigu\r\n6 gr Ragi\r\n2 sdm gula pasir\r\n150 ml air hangat yang dilarutkan dgn 1 sachet susu dancow\r\n5 sdm minyak\r\n1/2 sdm garam\r\nSosis\r\nbeef burger\r\npaprika\r\nbawang bombay\r\njagung manis\r\nSaus spagethi lafonte / del monte\r\nKeju\r\nblueband untuk olesan loyang', '1.Campur ragi, gula pasir ke dalam susu hangat. kemudian aduk diamkan kurang lebih 3menit hingga berbusa (tanda ragi aktif)\r\n2. Campur kan garam ke dalam terigu, lalu masukan susu.. di aduk rata lalu uleni sebentar. kemudian masukan minyak sayur uleni hingga adonan kalis. diamkan kurang lebih 45menit hingga mengembang\r\n3.Setelah adonan mengembang bagi 2 atau bagi sesuai dg ukuran loyang yg ada.. olesi loyang dgn blueband baru adonan pizza di pipih pipih kan secara rata.. beri saus lafonte, dan toping kemudian keju. oiya sambil menata toping, panaskan oven kurang lebih 15menit suhu 200derajat, api atas bawah\r\n4. Panggang pizza selama 20menit dengan api atas bawah... selamat mencoba.. ', 'https://img-global.cpcdn.com/recipes/9b2293a04b1dff84/1360x964cq70/pizza-rumahan-sederhana-foto-resep-utama.webp'),
(5, 'Sandwich', '2 lembar roti tawar 1 lembar smoked beef 1 buah telur  1 lembar keju slice atau keju parut secukupnya Sejumput daun parsley Sejumput garam Margarin, mayonaise, saus sambal atau saus tomat', 'Panaskan margarin dengn api sedang, goreng smoked beef terlebih dahulu. Masukan telur yang sudah dikocok dengan sejumput garam dan parsley. Taruh roti tawar di atas telur lalu balik, masukan smoked beef dan keju, lalu tutup dengan roti tawar lagi. Balik roti dan diamkan sampai roti sedikit kering lalu angkat. Terakhir isi pakai mayonaise, saos sambal atau tomat sesuai selera. ', 'http://blog.sayurbox.com/wp-content/uploads/2020/04/sandwich-2301387_1920-960x640.jpg'),
(10, 'hotdog', '250 gr tepung terigu cakra 1 butir ayam 110 ml air susu dingin 6 gr ragi instan 40 gr gula pasir Sejumput garam 40 gr margarin/ mentega 10 buah sosis (me : ayam) Margarin untuk menggoreng sosis Mayonaise Saus tomat/ saus sambal Selada Saus bolognese Bahan polesan : 1 kuning telur 1 sdm susu kental manis putih', 'Adonan roti : dalam wadah campur tepung terigu, gula, dan ragi instan. Aduk rata. Buat cekungan, masukkan air dingin dan telur. Aduk sampai kalis. Tambahkan garam dan margarin. Ulen kembali sampai kalis. Diamkan dalam wadah sambil ditutup lap selam kurang lebih 1 jam sampai mengembang. Setelah satu jam, kempeskan adonan. Bagi menjadi 10, masing @48 gr. Bentuk lonjong. Lalu di tata dalam kertas roti oval. Diamkan selama 15 menit. Beri polesan di atasnya. Panggang 15 menit. Atau sesuaikan dengan oven masing2. Goreng sosis dengan sedikit margarin dalam teflon. Penyelesaiannya.. Ambil roti yang telah matang dan didinginkan, belah tengah roti tp jangan sampai putus. Kurangi sedikit bagian tengah roti aga sedikt lebih cekung. Tata selada, kemudian sosis, beri 1 sdm saus bolognese, semprot dengan mayo dan saus. Siap disajikan atau sebagai bekal sekolah.', 'https://img-global.cpcdn.com/recipes/4e29a141c8a0aaf8/1360x964cq70/hot-dog-foto-resep-utama.webp'),
(12, 'Spagetthi Saus Bolognese Spesial', '- 150 gram spaghetti, rebus dan tiriskan  - 50 gram keju cheddar parut  - 300 ml susu cair  - 3 butir telur ayam  - 1/2 sendok teh merica bubuk  - Garam secukupnya  - Margarin secukupnya  - 25 gram keju parmesan', 'a. Kocok lepas telur dengan garpu  b. Tuangkan spaghetti ke dalam mangkuk  c. Masukkan keju parut, garam, susu, dan merica, aduk rata  d. Siapkan wadah anti panas dan olesi margarin  e. Tuang spaghetti ke wadah, lalu panggang dalam oven selama 30 menit, lalu angkat dan sisihkan  f. Untuk membuat saus bolognese panaskan mentega lalu tumis bawang bombay dan bawang putih hingga harum  g. Tambahkan pasta tomat, tomat concase, daging giling, paprika, dan semua bumbu saus lalu tuang sedikit air, aduk hingga rata.  h. Setelah mendidih, angkat  i. Siapkan spaghetti lalu siram dengan saus bolognese  j. Beri taburan keju parmesan  k. Spaghetti saus bolognese spesial siap dinikmati', 'https://cdn1-production-images-kly.akamaized.net/nEWEdpW_6gayL3QQGJNAVnkSMno=/1280x720/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2398373/original/091467500_1541129221-HL.jpg'),
(13, 'Sayur Bayam', 'ssss', 'ssss', 'awwaaw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`idrecipefood`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `idrecipefood` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
