# Rancangan Aplikasi Kelompok 7 PBP C (Mobile Version)

## 1. Nama Aplikasi
**Bakara** (Mobile App)

## 2. Anggota Kelompok
- Faatir Wibowo Rachmad - 2506595146
- Kesya Clara Dania - 2506656892
- Nurul Zakyah Ovi - 2506617582
- James Adi Putra - 2506624644
- Darrel Rifathir Arwa - 2506536420

## 3. Deskripsi Aplikasi
Bakara adalah aplikasi mobile berbagi barang khusus mahasiswa Universitas Indonesia yang memungkinkan mahasiswa untuk membeli, meminjam, atau mendonasikan barang yang sudah tidak digunakan kepada mahasiswa lain di lingkungan UI, baik antar kating (kakak tingkat) maupun deting (adik tingkat).

Ide ini terutama ditujukan untuk mahasiswa baru dan mahasiswa perantauan yang sering membutuhkan berbagai barang ketika pertama kali tinggal di kos/asrama dan memulai perkuliahan di UI. Misalnya, seorang maba membutuhkan hanger, lampu belajar, rice cooker, buku kuliah, kalkulator, kabel, alat makan, ataupun perlengkapan kos. Daripada langsung membeli barang baru, ia dapat mencari barang tersebut di Bakara via aplikasi mobile dan mendapatkannya dari kating yang sudah tidak membutuhkannya.

### Value Proposition (VP) Questions
**A. What are the purposes/visions of this mobile app?**
Membangun ekosistem berbagi dan penggunaan kembali barang di lingkungan UI berbasis aplikasi mobile, agar mahasiswa bisa memenuhi kebutuhan tanpa harus selalu membeli barang baru.

**B. What problems will this mobile app solve?**
- Mahasiswa (terutama maba/anak kos baru) terpaksa beli barang baru padahal barang serupa sudah ada di sekitar mereka.
- Banyak barang kating yang masih layak pakai tapi menganggur/tidak terpakai.
- Barang tak terpakai berpotensi jadi sampah padahal masih punya nilai guna.
- Sulit menemukan sesama mahasiswa UI yang butuh/punya barang tertentu karena info tersebar di banyak platform (grup chat, IG story, twitter, dll).

**C. Whom will this mobile app help?**
- Utama: Mahasiswa baru/deting UI yang butuh perlengkapan kuliah & kos.
- Kedua: Kating/mahasiswa senior yang ingin menyalurkan barang tak terpakai.
- Tambahan: Organisasi/fakultas UI untuk kegiatan donasi atau reuse jika memungkinkan.

**D. How will this mobile app help them?**
Menyediakan aplikasi mobile yang terpusat untuk mencari, membeli, meminjam, atau mendonasikan barang antar mahasiswa UI lengkap dengan pencarian by kategori/lokasi, chat langsung dengan pemilik barang di dalam aplikasi, serta sistem rating/review, sehingga proses reuse jadi lebih mudah dan terpusat dibanding hanya lewat grup chat atau story.

## 4. Perbandingan dengan Aplikasi Serupa

Bakara memiliki fokus yang berbeda dibanding platform jual-beli umum maupun platform reuse khusus kampus yang sudah ada (di luar maupun di dalam negeri):

| Platform | Fokus | Perbedaan Bakara (Mobile) |
|---|---|---|
| Carousell | Jual-beli barang bekas, skala umum | Bakara fokus pada komunitas mahasiswa UI dalam format aplikasi seluler, bukan sekadar jual-beli |
| OLX | Marketplace barang bekas, skala umum | Bakara punya konsep gratis, tukar, pinjam, dan jual murah antar mahasiswa |
| Facebook Marketplace | Jual-beli lokal, skala umum | Bakara lebih spesifik untuk kebutuhan mahasiswa/kampus UI via aplikasi mobile |
| ReSwap (University of Southern California, California) | Marketplace khusus mahasiswa untuk beli, jual, tukar, dan sewa barang per kategori (pakaian, kebutuhan harian, hunian, carpool) | Bakara berfokus khusus pada sirkulasi barang kebutuhan kuliah & kos via aplikasi seluler, dengan penekanan pada kebutuhan maba/deting |
| Swapp (Cornell University, New York) | Marketplace jual-beli barang preloved khusus mahasiswa, untuk mengurangi sampah saat peak moving season | Bakara berbasis aplikasi mobile serta menambahkan opsi donasi & pinjam, tidak hanya jual-beli |
| BaranginAja (UNESA, Surabaya) | Jual-beli barang bekas antar mahasiswa se-kampus dengan sistem komisi platform | Bakara tidak berorientasi profit/komisi, lebih menekankan sirkulasi & berbagi antar kating-deting |
| Loak.in (Undika, Surabaya) | Jual-beli barang bekas terhubung ke tukang loak via peta | Bakara menyasar sirkulasi barang antar sesama mahasiswa secara eksklusif dalam aplikasi, bukan ke pengepul barang bekas |

**Our Insight**: beberapa platform reuse *khusus kampus* (ReSwap, Swapp) sudah ditemukan di luar negeri, tetapi implementasinya di Indonesia masih sangat jarang, dan yang sudah ada (BaranginAja, Loak.in) masih murni berorientasi jual-beli tanpa elemen pinjam/donasi. Bakara mengisi gap ini dengan menggabungkan jual, pinjam, dan donasi dalam satu ekosistem mobile berbasis komunitas UI.

## 5. Daftar Modul

| No | Modul | Entitas Utama | CRUD | PIC |
|---:|---|---|---|---|
| 1 | **Autentikasi & Profil Pengguna** | User | **Create:** Registrasi akun (email @ui.ac.id/upload KTM)<br>**Read:** Lihat profil sendiri/orang lain<br>**Update:** Edit profil, nomor WA, foto<br>**Delete:** Nonaktifkan akun | Kesya Clara Dania |
| 2 | **Katalog & Listing Barang** | Barang | **Create:** Upload barang baru<br>**Read:** Lihat detail barang, browse katalog<br>**Update:** Edit info barang (deskripsi, foto, status)<br>**Delete:** Hapus listing barang | Darrel Rifathirn Arwa |
| 3 | **Kontak & Minat** | Minat | **Create:** Tandai tertarik pada barang<br>**Read:** Lihat daftar yang tertarik untuk pemilik barang<br>**Update:** Tidak diperlukan, cukup create/delete<br>**Delete:** Batalkan tanda tertarik | Faatir Wibowo Rachmad |
| 4 | **Transaksi & Tracking Status** | Transaksi | **Create:** Mulai transaksi dari minat<br>**Read:** Lihat status & riwayat transaksi<br>**Update:** Ubah status (nego → selesai)<br>**Delete:** Batalkan transaksi | James Adi Putra |
| 5 | **Rating & Review** | Review | **Create:** Beri rating & ulasan setelah transaksi selesai<br>**Read:** Lihat rating/review di profil user<br>**Update:** Edit review sendiri<br>**Delete:** Hapus review sendiri | Nurul Zakiyah Ovi |

## 6. Sumber Public API / Mock API

| API | Kegunaan |
|---|---|
| **OpenStreetMap API** | Digunakan untuk kebutuhan lokasi pada aplikasi mobile, seperti lokasi kampus/fakultas UI, lokasi barang, dan titik pengambilan barang. |
| **DummyJSON API** | Digunakan sebagai mock API / data dummy untuk keperluan prototyping dan testing awal tampilan daftar barang, kategori, serta ulasan pada aplikasi seluler sebelum diintegrasikan penuh dengan backend. |
| **Open Library API** | Digunakan untuk mengambil metadata buku secara otomatis, seperti judul, penulis, dan sampul buku ketika pengguna mengunggah atau mencari buku kuliah preloved di aplikasi. |
              

## 7. Jenis/Peran Pengguna Aplikasi (User Role & Target User)

### Mahasiswa (role utama)
Dapat melakukan:
- Mencari barang lewat aplikasi seluler
- Mengunggah barang ke platform
- Mendonasikan, meminjamkan, atau menjual barang
- Melakukan request/pengajuan barang
- Memberikan review transaksi

**Target utama:** mahasiswa baru/deting dan mahasiswa perantauan yang sedang membutuhkan perlengkapan kuliah/kos.

### Admin
Dapat melakukan:
- Mengelola pengguna aplikasi
- Menghapus postingan barang bermasalah
- Menangani laporan pelanggaran
- Mengelola kategori
- Memantau aktivitas platform mobile

### Organisasi/Fakultas (role tambahan jika memungkinkan)
Dapat melakukan:
- Membuat program donasi via aplikasi
- Menyediakan barang/fasilitas drop-off
- Mengadakan kegiatan reuse di lingkungan UI

## 8. Tautan Deployment / Akses Aplikasi Mobile
Menyusul

## 9. Tautan Desain Figma
https://www.figma.com/design/pU7PzvdlefcBJJkBS5NqQB/Untitled?node-id=2-4&t=QdZKyKytq6PMkH4r-1

## 10. AI Disclosure
Dokumentasi penggunaan asisten kecerdasan buatan (AI) oleh anggota tim dalam proses perancangan, pengembangan, dan pengujian aplikasi Bakara versi mobile.

--- 

### James Adi Putra — Layout & Refactor


### Darrel Rifathir Arwa — Modul Katalog


### Kesya Clara Dania — Modul Autentikasi & Profil


### Faatir Wibowo Rachmad — Modul Minat


### Nurul Zakyah Ovi — Modul Review & Rating
