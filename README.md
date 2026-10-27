# 🍔 Flutter Food Ordering App

### Food Ordering Simulation — Navigation & Form Validation

Aplikasi simulasi pemesanan makanan dan minuman yang dikembangkan menggunakan **Flutter dan Dart**. Proyek ini berfokus pada implementasi navigasi antarlayar, validasi formulir, pengolahan input pengguna, serta perhitungan total harga pesanan.

Pengguna dapat mengakses halaman login, membuka halaman utama, memasukkan pesanan makanan dan minuman, serta melihat detail pesanan beserta total harga yang dihitung berdasarkan jumlah item.

---

## ✨ Fitur Utama

- **Login Page** — Form email dan password dengan validasi input wajib.
- **Register Page** — Antarmuka pendaftaran dengan form email dan password.
- **Home Page** — Halaman sambutan dan navigasi menuju pemesanan.
- **Order Page** — Form pemesanan makanan, minuman, dan jumlah masing-masing.
- **Price Calculation** — Perhitungan total berdasarkan jumlah makanan dan minuman.
- **Order Detail** — Ringkasan pesanan beserta jumlah dan total harga.
- **Navigation** — Navigasi antarhalaman menggunakan Flutter Navigator.

## 📱 Halaman Aplikasi

### 1. Login Page

Halaman pertama yang ditampilkan ketika aplikasi dijalankan.

Pengguna dapat memasukkan email dan password. Sistem melakukan validasi untuk memastikan kedua kolom tidak kosong sebelum mengarahkan pengguna ke halaman utama.

Tersedia tombol menuju halaman registrasi bagi pengguna yang ingin membuka formulir pendaftaran.

*Catatan: login masih berupa simulasi navigasi dan belum terhubung dengan sistem autentikasi database.*

### 2. Register Page

Halaman register menyediakan formulir email dan password, serta navigasi kembali ke halaman login.

Halaman ini menjadi dasar implementasi antarmuka pendaftaran pengguna.

*Catatan: penyimpanan akun belum diimplementasikan.*

### 3. Home Page

Halaman utama menampilkan pesan sambutan dan tombol **Order Now**.

Tombol tersebut mengarahkan pengguna menuju halaman pemesanan makanan dan minuman.

### 4. Order Page

Halaman pemesanan menyediakan empat input:

- Nama makanan (*Food Order*).
- Nama minuman (*Drink Order*).
- Jumlah makanan (*Food QTY Order*).
- Jumlah minuman (*Drink QTY Order*).

Setiap kolom memiliki validasi wajib isi. Setelah formulir memenuhi validasi, aplikasi menghitung total harga dan meneruskan informasi pesanan ke halaman detail.

### 5. Detail Order Page

Menampilkan ringkasan informasi pesanan, meliputi nama makanan, nama minuman, jumlah masing-masing, dan total harga.

Tombol **Finish Order** digunakan untuk kembali ke halaman utama dan mengakhiri alur pemesanan.

---

## 💰 Perhitungan Harga

Aplikasi menggunakan harga satuan tetap pada kode.

| Item | Harga |
|---|---:|
| Makanan | Rp32.000 |
| Minuman | Rp5.000 |

**Rumus perhitungan:**

```text
Total Harga = (Jumlah Makanan × 32.000)
            + (Jumlah Minuman × 5.000)
```

**Contoh pemesanan:**

| Pesanan | Jumlah | Subtotal |
|---|---:|---:|
| Makanan | 2 | Rp64.000 |
| Minuman | 3 | Rp15.000 |
| **Total** | | **Rp79.000** |

*Catatan teknis: implementasi saat ini masih memiliki potensi masalah pada penerusan nilai total harga setelah `setState`. Perhitungan di atas menjelaskan rumus yang dimaksud dalam kode, bukan jaminan bahwa setiap hasil navigasi sudah benar.*

---

## 🔄 Alur Navigasi

```text
Aplikasi Dibuka
      │
      ▼
  Login Page ◄──────── Register Page
      │
      │ Validasi input
      ▼
   Home Page
      │
      │ Order Now
      ▼
   Order Page
      │
      │ Isi pesanan
      ▼
 Detail Order
      │
      │ Finish Order
      ▼
   Home Page
```

---

## 🛠️ Teknologi yang Digunakan

| Teknologi | Kegunaan |
|---|---|
| Flutter | Framework pengembangan aplikasi |
| Dart | Bahasa pemrograman utama |
| Material Design | Komponen antarmuka |
| StatefulWidget | Pengelolaan state formulir |
| TextEditingController | Pengambilan input pengguna |
| Form & TextFormField | Pembuatan dan validasi formulir |
| Flutter Navigator | Navigasi antarlayar |

---

## 🚀 Cara Menjalankan Project

### Persyaratan

- Flutter SDK.
- Dart SDK yang kompatibel dengan project.
- Android Studio atau VS Code.
- Emulator atau perangkat yang mendukung Flutter.

### 1. Clone Repository

```bash
git clone https://github.com/Kurwhy/20220140040-act4.git
cd 20220140040-act4
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Jalankan Aplikasi

```bash
flutter run
```

Untuk memastikan Flutter telah dikonfigurasi dengan benar:

```bash
flutter doctor
```

---

## 📂 Struktur Source Code

```text
lib/
├── main.dart
└── presentation/
    ├── loginpage.dart
    ├── register.dart
    ├── homepage.dart
    ├── orderpage.dart
    └── detailorderpage.dart
```

**Keterangan:**

- `main.dart` — Entry point aplikasi dan konfigurasi navigasi.
- `loginpage.dart` — Form login dan validasi input.
- `register.dart` — Antarmuka pendaftaran.
- `homepage.dart` — Halaman utama.
- `orderpage.dart` — Form pemesanan dan fungsi perhitungan harga.
- `detailorderpage.dart` — Tampilan detail pesanan dan tombol menyelesaikan pesanan.

---

## 🎯 Tujuan Pengembangan

Proyek ini dibuat untuk mempraktikkan konsep dasar pengembangan aplikasi Flutter, khususnya:

- Perancangan antarmuka menggunakan widget Flutter.
- Navigasi halaman menggunakan `Navigator`.
- Pengambilan nilai input menggunakan `TextEditingController`.
- Validasi formulir dengan `Form` dan `TextFormField`.
- Penggunaan `StatefulWidget` dan `setState`.
- Pengiriman data antarlayar melalui constructor.
- Perhitungan sederhana berdasarkan input pengguna.

---

## 📌 Batasan Implementasi

Proyek ini merupakan simulasi pembelajaran dan belum mencakup seluruh fitur aplikasi pemesanan produksi.

Beberapa fitur yang belum tersedia:

- Autentikasi pengguna menggunakan database atau backend.
- Penyimpanan akun saat registrasi.
- Penyimpanan riwayat pesanan.
- Katalog makanan dan minuman dinamis.
- Integrasi pembayaran.
- Validasi jumlah pesanan yang lebih ketat.
- Pengujian menyeluruh atas hasil perhitungan saat berpindah halaman.

---

## 👨‍💻 Developer

**Kurwhy**

GitHub: [github.com/Kurwhy](https://github.com/Kurwhy)

Repository: [20220140040-act4](https://github.com/Kurwhy/20220140040-act4)

---

*Developed with Flutter & Dart.*
