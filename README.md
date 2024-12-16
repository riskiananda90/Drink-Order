# Drink Orders - Aplikasi Pemesanan Minuman

Selamat datang di aplikasi **Drink Orders**! 🍹 Aplikasi ini dibangun dengan menggunakan **Flutter** untuk frontend dan **Supabase** untuk backend, yang memungkinkan pengguna untuk menjelajahi, memesan, dan mengelola preferensi minuman dengan mudah. Apakah Anda sedang menginginkan minuman segar atau ingin mencoba minuman baru, aplikasi ini memiliki semua yang Anda butuhkan!

## Fitur

- **Halaman Utama**: Menampilkan daftar minuman yang tersedia dengan deskripsi, harga, dan gambar.
- **Halaman Pemesanan**: Pengguna dapat melihat detail minuman yang dipilih dan melakukan pemesanan.
- **Halaman Daftar & Login**: Pengguna dapat membuat akun atau login untuk mengakses riwayat pemesanan mereka.
- **Halaman Riwayat**: Menampilkan riwayat pemesanan sebelumnya lengkap dengan nama minuman, harga, dan tanggal pemesanan.
- **Halaman Pencarian**: Pengguna dapat mencari minuman berdasarkan nama atau kategori.
- **Backend Supabase**: Autentikasi yang aman, database real-time, dan penyimpanan gambar minuman.

## Teknologi yang Digunakan

- **Flutter**: Framework untuk membangun aplikasi mobile cross-platform.
- **Dart**: Bahasa pemrograman yang digunakan untuk membangun aplikasi ini.
- **Supabase**: Alternatif open-source untuk Firebase, menyediakan autentikasi, database, dan fitur real-time.
- **SQLite**: Penyimpanan data lokal (opsional, tergantung pada kebutuhan aplikasi).

## Prasyarat

Sebelum memulai, pastikan Anda telah menginstal hal-hal berikut:

- [Flutter](https://flutter.dev/docs/get-started/install) (versi stabil terbaru lebih disarankan).
- [Dart](https://dart.dev/get-dart).
- Akun [Supabase](https://supabase.com/) untuk mengatur database.

## Cara Memulai

Ikuti langkah-langkah berikut untuk menyiapkan salinan proyek dan menjalankannya di mesin lokal untuk pengembangan dan pengujian.

### 1. Clone Repository

```bash
git clone https://github.com/username/drink-orders.git
cd drink-orders
```

### 2. Install Dependencies

Jalankan perintah berikut untuk menginstal dependensi yang diperlukan:

```bash
flutter pub get
```

### 3. Konfigurasi Supabase

1. Daftar di [Supabase](https://supabase.com/) dan buat proyek baru.
2. Atur skema database untuk minuman, pesanan, pengguna, dll., dan buat tabel yang diperlukan.
3. Buat file **.env** di direktori root dan tambahkan URL dan kunci publik Supabase:

```env
Rahasia
```

### 4. Jalankan Aplikasi

Setelah semuanya siap, jalankan aplikasi dengan perintah berikut:

```bash
flutter run
```

## Screenshot Aplikasi

Berikut adalah beberapa screenshot aplikasi ini dalam aksi:
- **Halaman Login & Daftar**: Halaman autentikasi yang sederhana untuk mengakses aplikasi.
- **Halaman Utama**: UI yang bersih dan modern menampilkan minuman yang tersedia.
- **Halaman Pemesanan**: Menampilkan detail setiap minuman, termasuk harga dan deskripsi.
- ![image](https://github.com/user-attachments/assets/d7e921be-4353-4aec-9023-14286561484e)
- **Halaman Riwayat**: Menampilkan daftar pemesanan yang telah dilakukan oleh pengguna.
- **Halaman Pencarian**: Memudahkan pengguna untuk mencari dan menemukan minuman.

## Struktur Proyek

Berikut adalah gambaran struktur proyek:

```
/lib
├── /Component        # Model data
├── /Pages            # Layar UI (misalnya: Home, Order, Login, History)
├── /main.dart        # file utama
```

## Endpoint API (Supabase)

1. **Autentikasi**: Menggunakan API autentikasi Supabase untuk login dan registrasi pengguna.
2. **Minuman**: Operasi CRUD untuk mengambil dan mengelola data minuman.
3. **Pesanan**: Pengguna dapat membuat, memperbarui, dan melihat riwayat pemesanan mereka.

## Layar-Layar Utama

### Halaman Utama
- Menampilkan daftar minuman yang tersedia dengan gambar, nama, deskripsi, dan harga.

### Halaman Pemesanan
- Menampilkan informasi detail mengenai minuman yang dipilih dan memungkinkan pengguna untuk memesan.

### Halaman Daftar & Login
- Halaman autentikasi pengguna menggunakan Supabase Auth untuk login dan registrasi.

### Halaman Riwayat
- Menampilkan daftar pemesanan yang telah dilakukan oleh pengguna yang sedang login.

### Halaman Pencarian
- Pengguna dapat mencari minuman berdasarkan nama atau kategori tertentu.

## Cara Berkontribusi

Jika Anda ingin berkontribusi pada proyek ini, Anda dapat fork repository ini dan membuat pull request. Berikut cara berkontribusi:

1. Fork repository ini.
2. Buat cabang baru (`git checkout -b nama-fitur`).
3. Lakukan perubahan dan commit (`git commit -am 'Menambahkan fitur'`).
4. Push cabang (`git push origin nama-fitur`).
5. Buat Pull Request.

## Lisensi

Proyek ini dilisensikan di bawah Lisensi MIT - lihat file [LICENSE](LICENSE) untuk detail lebih lanjut.

## Penghargaan

- [Flutter](https://flutter.dev) - untuk framework yang luar biasa!
- [Supabase](https://supabase.com) - untuk database real-time dan autentikasi yang mudah.
- [Icons8](https://icons8.com) - untuk ikon-ikon keren yang digunakan dalam aplikasi.

## Kolaborator

Aplikasi **Drink Orders** ini dibangun oleh tim yang luar biasa:

- **Nurul Afiqah Simbolon**
- **Muhammad Rafli**
- **Muhammad Rafli Aulia**
- **Rizki Ananda**
- **Nurul Agustina**

---

