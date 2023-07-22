-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 06:14 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn_web_lanjut20222`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(256) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `tglpublikasi` date NOT NULL DEFAULT current_timestamp(),
  `deskripsi` text NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(64) NOT NULL,
  `kategori` enum('bisnis','olahraga','teknologi','kesehatan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `penulis`, `tglpublikasi`, `deskripsi`, `isi`, `gambar`, `kategori`) VALUES
(1, 'Fasilitas & Perawatan Gigi Terbaik Di Klinik Spesialis Gigi', 'eko irawan', '2023-07-07', 'Klinik spesialis gigi akan membantu Anda untuk mendapatkan gigi yang sehat dan cantik dengan berbagai fasilitas perawatan yang ditawarkannya.', 'Klinik spesialis gigi akan membantu Anda untuk mendapatkan gigi yang sehat dan cantik dengan berbagai fasilitas perawatan yang ditawarkannya. Bagi beberapa orang memiliki gigi yang sehat dan cantik merupakan hal yang sangat penting. Bahkan beberapa diantaranya rela mengeluarkan uang ratusan juta rupiah demi memiliki gigi yang menawan. Merawat gigi tidak cukup hanya dengan menyikat gigi dan berkumur menggunakan mouthwash. Setiap harinya ada kotoran yang tertinggal pada gigi dan lama-kelamaan mengendap menjadi karang gigi. Karang gigi tidak bisa dibersihkan dengan cara menyikat gigi. Untuk membersihkannya diperlukan penanganan lebih lanjut dengan menggunakan peralatan dan tenaga medis yang memadai. Sayangnya tidak semua orang menyadari hal yang sama. Bagi sebagian orang merawat gigi dengan datang ke dokter gigi atau ke klinik gigi bukan merupakan hal yang  tidak penting.\n\nKlinik gigi menyediakan berbagai fasilitas perawatan gigi, baik preventif maupun pengobatan. Selain itu ada juga perawatan yang ditujukan untuk memperindah atau mempercantik bentuk gigi. Namun pada akhirnya seluruh perawatan yang disediakan di klinik gigi memiliki tujuan untuk menjaga kesehatan gigi dan mulut. Pelayanan atau perawatan dasar yang disediakan klinik gigi diantaranya adalah premadikasi, pencabutan gigi, penambalan gigi, perawatan pada syaraf gigi, konsultasi gigi dan pengobatan emergency gigi. Seluruh tindakan perawatan tersebut tentunya dikerjakan oleh tenaga medis yaitu dokter gigi yang sudah menempuh pendidikan formal dan tersertifikasi.\n\nPerlu diketahui bagi Anda yang mungkin sedikit mengabaikan kesehatan dan perawatan gigi, kerusakan pada gigi dapat menyebabkan kerusakan atau gangguan pada organ tubuh lainnya. Bakteri streptococcus mutans adalah salah satu bakteri yang dapat merusak gigi serta masuk ke dalam gusi. Bakteri tersebut dapat menyebabkan terjadinya infeksi pada gusi dan masuk ke dalam aliran darah yang kemudian dapat menyebabkan peradangan pada organ tubuh lainnya seperti nyeri sendi, ginjal dan sakit kepala. Hal ini merupakan salah satu contoh kecil dari sekian banyak akibat yang bisa terjadi. Untuk mencegah kerusakan yang lebih parah pada gigi, jangan segan untuk melakukan perawatan gigi di Klinik spesialis Gigi.\n', '1.jpg', 'kesehatan'),
(2, '4 Peluang Bisnis Online (Internet) yang Menjanjikan', 'Totok Siswantoro', '2023-07-08', 'Ada berbagai macam ide usaha atau bisnis yang bisa dicoba. Saat ini kuota internet sebaiknya tidak hanya dijadikan sebagai kebutuhan pokok saja, namun kuota yang Anda miliki harus bisa Anda manfaatkan dengan sebaik-baiknya.', 'Ada berbagai macam ide usaha atau bisnis yang bisa dicoba. Saat ini kuota internet sebaiknya tidak hanya dijadikan sebagai kebutuhan pokok saja, namun kuota yang Anda miliki harus bisa Anda manfaatkan dengan sebaik-baiknya. Jika Anda mampu memanfaatkan peluang, keberuntungan akan bisa Anda peroleh. Pasalnya saat ini banyak orang yang meraih kesuksesan berkat bisnis online yang mereka jalankan. Bagi yang ingin berbisnis, simak peluang bisnis online yang menjanjikan berikut ini:\r\nMembuka Jasa Penulisan\r\nPeluang bisnis online yang pertama adalah dengan membuka jasa penulisan. Saat ini banyak orang yang membutuhkan konten artikel pada website mereka namun banyak yang tidak memiliki waktu untuk menulis dan tidak memiliki ide penulisan. Melihat kebutuhan masyarakat tersebut, Anda bisa membuka bisnis jasa penulisan ini.\r\nJasa Pembuatan Website\r\nPeluang lainnya yang bisa Anda manfaatkan adalah dengan membuka jasa pembuatan website. Banyak yang membutuhkan website untuk memasarkan produk atau jasa mereka terlebih lagi maraknya jual beli yang dilakukan secara online. Dari tahun ke tahun kebutuhan akan website ini meningkat, sehingga Anda bisa membuka bisnis ini untuk memperoleh keuntungan.\r\nMakelar\r\nKini ada peluang bisnis yang bisa menjadikan Anda sebagai makelar online. Bahkan saat ini pun banyak yang menggeluti bisnis ini dikarenakan menghasilkan keuntungan. Anda hanya bertugas menjual produk atau jasa kepada orang lain yang nantinya menjadi calon pembeli.  Anda akan mendapatkan komisi dari penjual karena telah berhasil mencari pembeli untuk  barang atau jasa yang dijualnya. Semakin banyak pembeli yang Anda dapatkan semakin besar komisi yang Anda dapatkan. Di sini Anda murni sebagai perantara saja sedangkan proses jual beli tersebut terjadi antara penjual dan pembeli.\r\nBlogger Profesional\r\nPeluang bisnis yang bisa Anda manfaatkan selanjutnya adalah menjadi blogger profesional. Saat ini banyak yang menekuni bisnis ini terutama seorang wanita. Lihat saja banyak beauty blogger bermunculan. Selain mereview produk kecantikan, mereka juga bekerja sama dengan brand kecantikan untuk mempromosikan produk mereka. Di sinilah Anda akan mendapatkan penghasilan dari bisnis yang Anda jalani.\r\nSemakin pandai Anda mencari peluang, semakin banyak peluang bisnis yang bisa Anda jalankan. Jika Anda belum menemukan ide bisnis online yang tepat, tidak ada salahnya jika Anda mencoba beberapa peluang bisnis online di atas yang terbukti menghasilkan dan menjanjikan.\r\n', '2.jpg', 'bisnis'),
(3, 'Yuk Kenali 4 Fitur Unggulan Aplikasi Payroll Indonesia yang Memudahkan Pengaturan Bisnis', 'hamdali anton', '2023-07-09', 'Memilih software payroll seperti Spisy Software dari Sakura System Solutions memang tidak mudah karena ada banyak pertimbangan yang harus diperhatikan. ', 'Memilih software payroll seperti Spisy Software dari Sakura System Solutions memang tidak mudah karena ada banyak pertimbangan yang harus diperhatikan. Hal tersebut berkaitan dengan fitur apa saja yang perlu dimiliki olehnya. Akan sangat disayangkan jika software yang telah dipilih tidak dapat menunjang kinerja bisnis. Berkaitan dengan hal tersebut, yuk simak fitur apa saja yang perlu dimiliki oleh aplikasi payroll Indonesia.\r\nFitur Unggulan Aplikasi Payroll\r\nYuk Kenali 4 Fitur Unggulan Aplikasi Payroll Indonesia yang Memudahkan Pengaturan Bisnis\r\nFitur Pencairan Bank Langsung dan Cepat\r\nFitur pencairan bank langsung yang ada di software payroll sangatlah penting. Fitur tersebut dapat memudahkan pembayaran gaji bulanan yang nantinya langsung masuk ke rekening masing masing karyawan. Dengan begitu, seorang HR tidak perlu melakukan proses transfer secara manual. Kemudahan tersebut juga lebih minim kesalahan pembayaran gaji.\r\nSelain lebuh mudah, perusahaan juga tidak perlu mengeluarkan sejumlah cek untuk dicairkan oleh HR melalui teller untuk mengurus pembayaran karyawan. Kegiatan tersebut sangat rawan karena cek bisa saja hilang. Jika hal ini terjadi malah membuat perusahaan merugi dan hak karyawan tidak dapat terpenuhi dengan baik.\r\nMemiliki Fitur Pengarsipan dan Perhitungan Pajak\r\nPajak merupakan sebuah kewajiban yang harus dibayarkan oleh karyawan maupun perusahaan dengan tepat waktu. Adanya fitur pengarsipan dan perhitungan pajak akan membuat kegiatan tersebut semakin mudah. Perusahaan dapat secara langsung menghitung pajak karyawan dan menyalurkannya secara kolektif melalui aplikasi payroll Indonesia.\r\nHal ini jauh lebih praktis dibandingkan jika karyawan harus membayar pajak penghasilannya secraa mandiri setiap bulan. Selain itu, fitur pengarsipan akan mencegah perusahaan dari denda akibat keterlambatan pengajuan pajak. Tidak heran jika kemudian fitur ini sangat penting dan harus ada dalam software payroll.\r\nFitur Employee Self Service\r\nfitur ketiga yang tak kalah penting dalam sebuah software payroll adalah employee self service. Melalui fitur tersebut para karyawan dapat secara langsung mengakses data diri yang berkaitan dengan riwayat gaji, potongan, reimbursement, waktu kerja, dan bonus. Mereka juga bisa mendapatkan secara langsung slip gajinya secara online.\r\nKemudahan tersebut sangat membantu HR karena tidak perlu lagi selalu print slip gaji karyawan setiap bulannya. Fitur tersebut juga menjadi bentuk transparansi perusahaan kepada karyawannya sehingga diharapkan hubungan antara keduanya bisa terus berlangsung dengan baik. Hal tersebut sangat penting mengingat atmosfir kerja sangat berpengaruh pada produktivitas\r\n\r\nFitur Integrasi Dengan Sistem Akuntansi\r\nSaat ini sangat diperlukan aplikasi payroll Indonesia yang mampu terhubung dengan bagian akuntansi. Hal tersebut akan menghemat waktu tim akuntansi dan HRD karena mereka tidak perlu menyelaraskan data pembayaran gaji karyawan secara manual. Dengan adanya sistem yang terintegrasi, maka divisi akuntansi bisa memperoleh datanya secara langsung.\r\nDemikianlah 4 fitur yang harus ada dalam sebuah aplikasi payroll. Kehadirannya sangat krusial bagi kelancaran pengelolaan bisnis. Ada baiknya bagi anda untuk menyeleksi setiap aplikasi payroll yang hendak dibeli agar tidak kecewa. Pastikan pula bahwa anda menggandeng pengembang aplikasi yang profesional agar hasilnya memuaskan.\r\n', '3.jpg', 'teknologi'),
(4, 'Indonesia ke Perempat Final Usai Menang atas China dalam Kejuaraan Bulu Tangkis Beregu Junior Asia', 'Dr. Raiders Salomon Marpaung', '2023-07-09', 'Tim beregu campuran Indonesia masih konsisten tampil luar biasa dalam mengikuti turnamen bulutangkis beregu campuran Junior Asia 2023 yang diselenggarakan oleh Badminton Confederation Asia di di Among Raga, Yogyakarta, Indonesia dari tanggal 7 s/d 11 Juli ', 'Tim beregu campuran Indonesia masih konsisten tampil luar biasa dalam mengikuti turnamen bulutangkis beregu campuran Junior Asia 2023 yang diselenggarakan oleh Badminton Confederation Asia di di Among Raga, Yogyakarta, Indonesia dari tanggal 7 s/d 11 Juli 2023.\r\n\r\nSepak terjang tim beregu campuran junior Indonesia dalam babak penyisihan yang tergabung di group A bersama dengan China, dan Vietnam tampil super power. Setelah menang telak 5-0 atas Vietnam di pertandingan pertama, dipertandingan kedua kembali menang telak, kali ini korbannya adalah China.\r\nDi pertandingan kedua yang dilaksanakan hari ini, Minggu (9/7/2023), Indonesia berhadapan dengan China. Tim junior Indonesia kembali menunjukkan kelasnya sebagai tim kelas dunia dengan menenggelamkan China lewat kemenangan telak 4-1.\r\nPartai pertama, pasangan ganda campuran Adrian Pratama/Felisha Alberta Nathaniel Pasaribu menang rubber set atas pasangan Zhu Yi Jun/Huang Ke Xin dengan skor 21-16, 23-25, 21-10.\r\nPartai kedua, tunggal putri Mutiara Ayu Puspitasari harus mengakui keunggulan lawannya. Mutiara kalah dua set langsung dari Xu Wen Jing dengan skor 12-21, 10-21.\r\nPartai ketiga, tunggal putra Alwi Farhan menang dua set langsung atas Hu Zhe An dengan skor 21-19, 21-11.\r\nPartai keempat, pasangan ganda putri Anisanaya Kamila/Az Zahra Ditya Ramadhani menjadi penentu kemenangan. Anisanaya/Zahra menang rubber set atas Liao Li Xi/Zhang Wen Xiao dengan skor 17-21, 21-19, 21-12.\r\nPartai terakhir, pasangan ganda putra Muhammad Al Farizi/Nikolaus Joaquin menang rubber set atas pasangan Ma Shang/Zhu Yi Jun dengan skor 21-15, 13-21, 21-15.\r\nAtas dua kemenangan tersebut, Indonesia melaju ke babak perempat final. Pertandingan perempat final akan dimainkan besok, Senin (10/7/2023). Indonesia ditantang India akan menjadi penentu yang lolos ke semifinal.\r\n', '4.jpg', 'olahraga'),
(5, 'Brad Pitt Ikut \"Balapan\" Formula 1 di GP Inggris untuk Syuting Film Apex', 'Dede Ahmad Ramdhan', '2023-07-10', 'Ada tim F1 baru di Silverstone! Formula 1 memiliki tim baru di GP Inggris minggu ini. Tapi tim ini berbeda dengan tim lainnya, Tim yang bernama ApexGP merupakan tim yang dibuat untuk Film tentang Formula 1 yang dibintangi Brad Pitt.', 'Ada tim F1 baru di Silverstone! Formula 1 memiliki tim baru di GP Inggris minggu ini. Tapi tim ini berbeda dengan tim lainnya, Tim yang bernama ApexGP merupakan tim yang dibuat untuk Film tentang Formula 1 yang dibintangi Brad Pitt.\r\nSirkuit Silverstone menjadi sederet sirkuit yang akan menjadi tempat syuting Film yang dibuat oleh Apple tv studio.\r\nFilm ini menceritakan karakter yang dimankan Brad pitt, Sunny Hayes Driver F1 Vetteran di musim terakhirnya yang menjadi mentor rekan tim mudanya Joshua Pierce yang dimainkan Damson Idris.\r\nTim ApexGP bahkan diberikan tempat garasi full set dengan tempat hospitalitynya. Mobil yang akan digunakan merupakan mobil Formula 2 yang dibungkus agar meyerupai mobil F1. Mobil mereka dibuat dengan bantuan tim Mercedes, lebih spesifiknya tim junior F2 mereka Carlin.\r\nMobil Apex ini dikemudikan oleh aktornya (Brad pitt) sendiri diantara sesi-sesi latihan hari jumat dan Sabtu kemarin. Selain itu mereka juga diberikan tempat di saat lap formasi sebelum balapan, tapi masih belum tentu apakah brad pitt akan mengemudikannya atau tidak.\r\nRencananya Tim Apex akan hadir kembali di balapan-balapan berikutnya Tapi belum ada konfirmasi sirkut mana yang akan mereka gunakan. Film yang dibintangi Brad pitt ini diperkirakan akan liris sekitar akhir tahun 2024-awal 2025.\r\nBukan pertama kali\r\nWalau banyak Fans yang menganggap hadirnya tim tambahan demi pembuatan film dinilai sell out dan hilangnya jiwa balap F1. Kejadian seperti in bkan pertama kalinya terjadi. \r\nDi era 60an sebelumnya balapan F1 pernah menjadi ladang shoting Film. Film Grand Prix yang liris di tahun 1966 menggunakan sesi balapan F1 sebagai set syuting fim nya, bahakn menggunakan mobil F1 sungguhan dieranya yang dipasang kamera.\r\n', '5.jpg', 'olahraga'),
(6, 'Perkembangan Teknologi di Masa Kini', 'Anna Agnes', '2023-07-09', 'Perkembangan teknologi masa kini semakin membawa kita ke arah digital dan mobile. Bila dibandingkan dulu kita biasa melihat iklan melalui televisi, koran, majalah, dan radio', 'Perkembangan teknologi masa kini semakin membawa kita ke arah digital dan mobile. Bila dibandingkan dulu kita biasa melihat iklan melalui televisi, koran, majalah, dan radio. Kini, internet dan aneka device atau gadget bisa menggantikan media tersebut. Beriklan di ponsel pun kini menjadi suatu inovasi yang berkembang bagai jamur bagi industri periklanan.\r\nPerkembangan Teknologi Masa Kini Bantu Bekerja Lebih Praktis\r\nSemakin pesatnya perkembangan internet juga berimbas pada pertumbuhan bisnis baik bisnis kecil menengah maupun perusahaan besar. Memasarkan barang dan jasa semakin terakomodasi dengan mudah secara online, begitu pun bekerja juga bisa lebih praktis. Bagaimana bisa?\r\nJaringan internet menjadi jembatan pada teknologi cloud yang memungkinkan Anda bekerja dan menyimpan data secara online sehingga data dan file dapat diakses kapan saja, dimana saja yang Anda butuhkan. Terlebih lagi, dengan aplikasi berbasis cloud Anda dapat menggunakan perangkat apapun yang disukai.\r\nAnda dapat bekerja dari kantor maupun dirumah atau bahkan ketika sedang melakukan perjalanan. Cloud Computing atau komputasi awan juga memungkinkan Anda melakukan kolaborasi dengan teman kerja, partner, dan klien/konsumen. Mengerjakan satu dokumen bersama-sama secara real-time online, atau juga bisa terlibat dalam konferensi video call bersama dan saling berbagi screen untuk memudahkan komunikasi yang cepat tanpa mengenal jarak.\r\nAnda tak perlu menginstal satu persatu aplikasi cloud tersebut karena semuanya kini telah tersedia lengkap pada satu perangkat, yaitu Google Apps for Work. Berisikan semua layanan berkelas bisnis mulai dari email professional, online storage, alat produktifitas, video konferensi, dan kalender yang terintegrasi sehingga Anda bisa lebih terorganisir. Anda dapat mencoba Google Apps for Work secara gratis selama 30 hari pada perusahaan partner resmi Google Apps reseller Indonesia, EIKON Technology.\r\n', '6.jpg', 'teknologi'),
(7, 'Mahasiswa Ingin Memiliki Uang Tambahan, Ini Salah Satu Caranya', 'Lailatul Rohma Romadhona', '2023-07-09', 'Tak sedikit mahasiswa yang mulai berfikir untuk memulai membuat bisnis untuk menambah pemasukan mereka. ', 'Tak sedikit mahasiswa yang mulai berfikir untuk memulai membuat bisnis untuk menambah pemasukan mereka. tetapi mahasiswa masi sering bingung apa yang bisa di jual dan bisa dibuat untuk memulai bisnis, dengan modal yang sedikit bahkan tidak memerlukan modal adalah bisnis yang di cari - cari para mahasiswa. banyak mahasiswa bingung harus mencari tambahan dari mana. Padahal jika lebih jeli, tersedia beberapa peluang bisnis untuk mahasiswa dengan modal kecil namun tetap menguntungkan. \r\nRekomendasi beberapa bisnis yang mudah di jalankan untuk mahasiswa\r\nMenjadi Affiliate online shop\r\nYang pertama adalah menjadi affiliate online shop, bermodalkan smartphone yang dimiliki mahasiswa dapat memulai bisnis dengan sistem affiliate yaitu sebuah program pemberian komisi untuk seseorang yang sudah sukses dalam mempromosikan sebuah produk atau jasa melalui jalur digital seperti website dan media sosial. Jadi kita hanya perlu menjual produk tanpa syarat apapun, sehingga kamu hanya diwajibkan untuk mendaftar tanpa harus membeli atau memiliki produk yang akan ditawarkan.\r\nSistem titip barang \r\nSelanjutnya ada titip barang, yaitu mahasiswa dapat membuat sebuah produk lalu di titipkan ke warung - warung lalu mahasiswa tetap dapat kuliah di kampus tanpa harus pergi berjualan dan mencari pelanggan. tetapi sistem ini kadang warung yang ditipkan harus di beri komisi untuk membayar penitipan.\r\nMenjadi influenser\r\nCara ini bisa di lakukan dengan mahasiswa aktif di sosial media dan mempunyai cukup banyak follower lalu dengan follower yang banyak itu mahasiswa akan mendapat endorse dan berpenghasilan\r\nNah itulah beberapa ide bisnis untuk mahasiswa dengan modal kecil. Walaupun masih mahasiswa, Anda dapat mencari penghasilan tambahan dengan menjalankan usaha-usaha di atas. Jadi, tertarik mencoba ide bisnis yang mana?\r\n', '7.jpg', 'bisnis'),
(8, 'Timnas Voli Indonesia Menang di Laga Final Avc Challenge-cup', 'Catur Wijaya', '2023-07-10', 'Hasil pertandingan timnas voli indonesia menghadapi Timnas Bahrain di AVC Challenge cup 2023 menjadi laga penuh dramatis seperti final,namun akhirnya indonesia berhasil menang 3-2 atas Bahrain di Gymnasium Taiwan pada senin 10 Juli 2023 siang tadi sampai b', 'Hasil pertandingan timnas voli indonesia menghadapi Timnas Bahrain di AVC Challenge cup 2023 menjadi laga penuh dramatis seperti final,namun akhirnya indonesia berhasil menang 3-2 atas Bahrain di Gymnasium Taiwan pada senin 10 Juli 2023 siang tadi sampai berakhir sampai jam 4 sore.\r\nTimnas voli indonesia berhasil menang dengan poin 33-31/25-27/21-25/25-23/15-11.dan timnas indonesia berhasil juara grup F dengan 2 kemenangan dari 2 laga.\r\nBagaimana perjalanan timnas voli indonesia???\r\nPada set pertama para kesatria timnas voli indonesia harus tertinggal di poin 17-20 untuk Bahrain.tapi pasukan Rivan nurmulki berhasil menyamakan kedudukan 21-21.\r\nSaling balap balapan poin hingga 24-24.namun  di masukan nya Rivan kembali menjadi kekuatan berbeda hingga timnas berhasil menang di set pertama 33-31.\r\nDi set kedua,Saya sebagai penonton dibuat tak bisa bernafas,tak bisa untuk mengedipkan mata sekalipun,rasanya deg-degan ketika kedua tim saling adu smash dari 7-7 ke 7-10 ke 10-12 sayangnya Bahrain bermain tenang ketika selisih 2 poin dari indonesia sehingga \"PD\" Menambah jarak menjadi 25-27untuk Bahrain. Bahrain menang kedudukan 1-1 .\r\nDi set ketiga, para penggawa Timnas Indonesia dibuat jarak oleh timnas Bahrain dengan diakhir poin menjadi 21 indonesia 25 untuk Bahrain. Kedudukan 2-1 untuk indonesia.\r\nHendra dan kawan-kawan sejatinya mendapatkan rasa semangat untuk bangkit namun Bahrain tak mengendurkan permainan yang membuat timnas voli indonesia kesulitan cari poin.\r\nRivan ditengah poin tak dimainkan akan tetapi dimainkan saat Timnas voli indonesia diakhir laga yang membuat jantung berdegup kencang bagaimana Jalan nya pertandingan sangat ketat,namun Rivan berhasil membantu tim menambah Poin hingga menang di set 4. 25-23.\r\nDi set ke lima, timnas voli indonesia tak mengendurkan permainan sedikit pun,dengan dimasukkan nya bloker seperti agil membuat Bahrain kesulitan menambah Poin. Dan Timnas indonesia akhirnya menang 15-11 untuk Bahrain di set 5.\r\nAkhirnya kita bisa bernafas lega setelah  3 jam menonton dengan sangat menghawatirkan \"apakah kita menang? Apakah kita kalah? \"  Sungguh luar biasa untuk para kesatria timnas voli indonesia. Dan berhak lolos ke 12 besar piala Asia voli atau AVC Challenge cup 2023.\r\n', '8.jpg', 'olahraga'),
(9, 'Antraks vs Rabies - Siapa Lebih Ganas?', 'D. Wibhyanto', '2023-07-11', 'Adu Kuat: Antraks vs Rabies - Siapa Lebih Ganas?\r\nSiapa yang lebih ganas? Buto atau raksasa tiwikrama jelmaan Prabu Kresna atau raksasa tiwikrama jelmaan Prabu  Puntadewa? Dalam kisah Kresna Duta, oleh pak dalang kedua sosok Buto atau raksasa yang postur fisiknya secara head to head, aple to aple, sama sama  berimbang, ', 'Adu Kuat: Antraks vs Rabies - Siapa Lebih Ganas?\r\nSiapa yang lebih ganas? Buto atau raksasa tiwikrama jelmaan Prabu Kresna atau raksasa tiwikrama jelmaan Prabu  Puntadewa? Dalam kisah Kresna Duta, oleh pak dalang kedua sosok Buto atau raksasa yang postur fisiknya secara head to head, aple to aple, sama sama  berimbang, nggegirisi mengerikan itu kemudian diadu. Mirip adu jangkrik atau gangsir. Siapa menang siapa kalah? Oiya, maaf nanti saja di akhir artikel ini penulis beritahu siapa pemenangnya ya.\r\n	<p>Ulasan ini hendak membahas bukan tentang dunia pewayangan Kresna Duta atau soal jangkrik, melainkan tentang fenomena merebaknya kedua jenis penyakit ini, yakni Rabies dan Antraks. Rabies yang merebak di Bali dan NTT, sedangkan Antraks mulai muncul di Gunungkidul, seperti banyak diberitakan oleh media, akhir akhir ini.\r\n\r\nSekilas Data Antraks VS Rabies\r\n	Data terkini, sejak Januari hingga awal Juli 2023 korban meninggal akibat serangan penyakit Rabies di Bali adalah 4 orang. Dikutip dari Kompas.com (Sumber). Sedangkan korban meninggal akibat serangan penyakit Antraks di Gunungkidul adalah 3 orang. Seperti diberitakan oleh Detik.com Minggu 9 Juli 2023 (Sumber). \r\n\r\nSama Sama Berbahaya\r\n	Antraks dan Rabies adalah dua penyakit serius yang mempengaruhi baik manusia maupun hewan. Keduanya memiliki karakteristik yang membuat mereka berbahaya dan dapat berakibat fatal jika tidak ditangani dengan cepat dan tepat.\r\n	Namun, ketika kita berbicara head to head tentang adu kuat antara Antraks dan Rabies, beberapa perbedaan mendasar perlu dipertimbangkan. Mari kita telaah secara lebih mendalam.</p>\r\n\r\n<p>Daya Kekuatan Antraks\r\n	Antraks adalah penyakit infeksi bakteri yang disebabkan oleh spesies Bacillus anthracis. Bakteri ini biasanya ditemukan di tanah dan dapat menginfeksi hewan, seperti sapi, domba, dan kambing. Namun, manusia juga bisa terinfeksi melalui kontak langsung dengan hewan yang terinfeksi atau produk-produk hewani yang terkontaminasi.\r\n\r\nTerdapat tiga jenis utama penyakit Antraks yang dapat mempengaruhi manusia dan hewan, yaitu:\r\n	Antraks Kulit (Cutaneous Anthrax): Jenis antraks ini paling umum terjadi pada manusia. Biasanya disebabkan oleh paparan langsung dengan spora bakteri Bacillus anthracis melalui luka atau lecet pada kulit.\r\n	Gejalanya meliputi munculnya lesi yang berubah menjadi bisul yang terasa gatal dan nyeri. Jika tidak diobati, infeksi ini dapat menyebar ke sistemik dan menjadi lebih serius.\r\n	Antraks Inhalasi (Inhalational Anthrax): Jenis antraks ini terjadi ketika seseorang menghirup spora Bacillus anthracis. Antraks inhalasi lebih langka tetapi jauh lebih serius dan berpotensi fatal.\r\n	Gejalanya pada awalnya mirip dengan flu, termasuk demam, sakit kepala, batuk, dan sesak napas. Namun, setelah beberapa hari, gejalanya memburuk dan dapat melibatkan pernapasan yang parah, pembengkakan kelenjar getah bening, serta munculnya tanda-tanda infeksi sistemik.\r\n	Antraks Usus (Gastrointestinal Anthrax): Antraks usus terjadi ketika seseorang mengonsumsi daging yang terkontaminasi oleh spora Bacillus anthracis. Jenis ini juga cukup langka pada manusia.\r\n	Gejalanya meliputi mual, muntah, nyeri perut hebat, diare yang berdarah, dan demam. Infeksi antraks usus dapat menyebar ke aliran darah dan menyebabkan kondisi yang mengancam jiwa.\r\n	Pendeknya bahwa Antraks dapat muncul dalam beberapa bentuk, antara lain: Antraks kulit, Antraks inhalasi, dan Antraks usus.\r\n	Secara keseluruhan, antraks memiliki tingkat kematian yang cukup tinggi jika tidak ditangani dengan cepat. Namun, dengan pengobatan yang tepat menggunakan antibiotik, prognosisnya bisa jauh lebih baik.</p>\r\n\r\n<p>Daya Kekuatan Rabies\r\n	Di sisi lain, Rabies adalah penyakit virus yang menyerang sistem saraf pusat mamalia, termasuk manusia. Virus ini umumnya ditularkan melalui gigitan atau cakaran hewan yang terinfeksi, terutama anjing, kucing, dan kelelawar.\r\n\r\nVirus ini dikenal sebagai Virus Rabies atau Rabies Virus dalam bahasa Inggris. Secara ilmiah, virus ini termasuk dalam genus Lyssavirus, famili Rhabdoviridae. Nama ilmiahnya adalah Rabies lyssavirus.\r\n\r\nSetelah virus masuk ke tubuh, gejala rabies dapat berkembang dengan cepat. Gejalanya meliputi kegelisahan, sakit kepala, kesulitan menelan, air liur berlebihan, dan perubahan perilaku drastis. Jika rabies mencapai tahap akhir, gejalanya menjadi lebih parah, termasuk gangguan neurologis, agresi, dan kejang.\r\n\r\nNah ini ganasnya Rabies! Rabies tidak memiliki pengobatan yang efektif setelah gejala muncul. Oleh karena itu, jika seseorang terkena Rabies, prediksi perkembangan kondisi medis pasien atau prognosisnya hampir selalu fatal. Dengan kata lain orang bisa mati alias Game Over dengan segera jika terkena penyakit Rabies.\r\n\r\nSiapa Lebih Ganas?\r\nDalam adu kuat keganasan antara Antraks dan Rabies, sulit untuk mengatakan mana yang lebih ganas. Keduanya, baik Antraks maupun Rabies memiliki karakteristik unik dan berpotensi mematikan.</p>\r\n\r\n<p>Namun, menurut catatan penulis, berikut adalah beberapa perbedaan penting yang harus diperhatikan:\r\n\r\nMetode Penularan: Antraks dapat menyebar melalui kontak langsung dengan hewan terinfeksi atau produk-produk hewani yang terkontaminasi. Sementara itu, Rabies ditularkan melalui gigitan atau cakaran dari hewan terinfeksi.\r\n\r\nTingkat Kematian: Tingkat kematian akibat Rabies hampir selalu tinggi jika seseorang terinfeksi dan tidak segera mendapatkan pengobatan pencegahan. Sedangkan Antraks tidak seganas itu. Jika Antraks dideteksi dan diobati secara dini dengan antibiotik yang tepat, prognosisnya bisa jauh lebih baik.\r\n\r\nGejala dan Perkembangan: Gejala Rabies dapat berkembang dengan cepat setelah infeksi, sementara gejala Antraks dapat bervariasi tergantung pada bentuk penyakitnya. Gejala Antraks bisa muncul dalam beberapa hari atau berminggu-minggu setelah terpapar.</p>\r\n\r\n<p>Dan Pemenangnya adalah?\r\nKesimpulannya, baik Antraks maupun Rabies adalah penyakit serius yang mempengaruhi manusia dan hewan. Meskipun keduanya memiliki potensi mematikan, Rabies mungkin dianggap lebih ganas karena tingkat kematian yang hampir selalu tinggi setelah gejala muncul.\r\n\r\nNamun, menurut penulis penting untuk diingat bahwa pencegahan terhadap kedua penyakit ini sangat penting, termasuk vaksinasi hewan peliharaan dan langkah-langkah kebersihan yang tepat.\r\n\r\nJika ada orang di sekitar kita mengalami gejala yang mencurigakan atau telah terpapar dengan salah satu penyakit ini, Antraks dan Rabies, penting GPL-Gak Pakek Lama, buruan segera mencari bantuan medis profesional untuk diagnosis dan pengobatan yang tepat.\r\n\r\nSoalnya kedua jenis penyakit ini, Antraks dan Rabies terbukti bener bener nggegirisi, mengerikan dan mematikan.\r\n\r\nMengakhiri tulisan ini. Soal nggegirisi, kembali ke kisah kedua Buto raksasa tiwikrama yang penulis singgung di awal tulisan ini, sekaligus saatnya penulis mau memberi jawaban siapa yang lebih ganas di antara kedua Buto jelmaan Prabu Kresna dan Prabu Puntadewa itu.\r\n\r\nJawabannya adalah 1:1. Sama sama kuat. Sama sama ganas. Tak ada yang menang dan tak ada yang kalah. Adapun pihak yang dirugikan dalam peristiwa lakon Kresna Duta itu, adalah pihak Astinapura.\r\n\r\nSebab konon kedua sosok Buto ganas nggegirisi itu beradu jotosnya di dalam kawasan njeron beteng keraton Astina. Hal ini menyebabkan kondisi keraton itu sungsang bolobaseh, remuk njobo njero alias berantakan rata tanah. Begitu seperti penulis kutip dari kisah pewayangan lakon Kresna Duta.</p>', '9.jpg', 'kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `role_id`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', 1),
(2, 'Dimas Hasim Mustofa', 'dimas@gmail.com', 'dimas', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
