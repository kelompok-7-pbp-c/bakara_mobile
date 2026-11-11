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

## 4. Daftar Modul

| No | Modul | Entitas Utama | CRUD | PIC |
|---:|---|---|---|---|
| 1 | **Autentikasi & Profil Pengguna** | User | **Create:** Registrasi akun (email @ui.ac.id/upload KTM)<br>**Read:** Lihat profil sendiri/orang lain<br>**Update:** Edit profil, nomor WA, foto<br>**Delete:** Nonaktifkan akun | Kesya Clara Dania |
| 2 | **Katalog & Listing Barang** | Barang | **Create:** Upload barang baru<br>**Read:** Lihat detail barang, browse katalog<br>**Update:** Edit info barang (deskripsi, foto, status)<br>**Delete:** Hapus listing barang | Darrel Rifathirn Arwa |
| 3 | **Kontak & Minat** | Minat | **Create:** Tandai tertarik pada barang<br>**Read:** Lihat daftar yang tertarik untuk pemilik barang<br>**Update:** Tidak diperlukan, cukup create/delete<br>**Delete:** Batalkan tanda tertarik | Faatir Wibowo Rachmad |
| 4 | **Transaksi & Tracking Status** | Transaksi | **Create:** Mulai transaksi dari minat<br>**Read:** Lihat status & riwayat transaksi<br>**Update:** Ubah status (nego → selesai)<br>**Delete:** Batalkan transaksi | James Adi Putra |
| 5 | **Rating & Review** | Review | **Create:** Beri rating & ulasan setelah transaksi selesai<br>**Read:** Lihat rating/review di profil user<br>**Update:** Edit review sendiri<br>**Delete:** Hapus review sendiri | Nurul Zakiyah Ovi |

## 5. Jenis/Peran Pengguna Aplikasi (User Role & Target User)

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

## 6. Alur Pengintegrasian Data 
Menyusul

## 7. Tautan Desain Figma
https://www.figma.com/design/pU7PzvdlefcBJJkBS5NqQB/BAKARA?node-id=192-157&p=ft=03hpNDBV1vd8m9Sf-0

## 8. AI Disclosure
Dokumentasi penggunaan asisten kecerdasan buatan (AI) oleh anggota tim dalam proses perancangan, pengembangan, dan pengujian aplikasi Bakara versi mobile.

--- 

### James Adi Putra — Layout & Refactor


### Darrel Rifathir Arwa — Modul Katalog


### Kesya Clara Dania — Modul Autentikasi & Profil


### Faatir Wibowo Rachmad — Modul Minat


### Nurul Zakyah Ovi — Modul Review & Rating
