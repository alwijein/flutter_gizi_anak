
# Aplikasi Monitoring Gizi Anak Berbasis Mobile

Repositori ini berisi kode sumber untuk aplikasi monitoring gizi anak yang dikembangkan menggunakan teknologi Flutter dan Firebase. Aplikasi ini dirancang untuk membantu orang tua atau pengasuh dalam memantau dan menghitung indeks massa tubuh (Body Mass Index) anak-anak dengan lebih mudah.

<p align="center">
  <img alt="mockup1" src="/mockup1.png">
</p>

## Fitur Utama

- Pendataan Anak: Memasukkan data anak seperti nama, usia, tinggi, dan berat badan.
- Perhitungan BMI: Menghitung dan menampilkan Body Mass Index (BMI) anak berdasarkan data tinggi dan berat badan yang dimasukkan.
- Monitoring Gizi: Menampilkan status gizi anak (kurang gizi, gizi normal, atau kelebihan gizi) berdasarkan hasil perhitungan BMI.
- Riwayat Data: Menyimpan dan menampilkan riwayat data BMI anak-anak untuk pemantauan jangka panjang.
- Integrasi Firebase: Menggunakan Firebase untuk menyimpan dan memulihkan data anak serta riwayat BMI.
- Melihat saran menjaga gizi anak
- Melihat alat-alat yang bisa digunakan untuk mengukur anak

## Cara Menggunakan

1. **Persiapan Lingkungan**
   - Pastikan telah menginstal Flutter SDK. Petunjuk instalasinya dapat ditemukan di [dokumentasi resmi Flutter](https://flutter.dev/docs/get-started/install).
   - Pastikan telah mengatur emulator atau perangkat fisik untuk menjalankan aplikasi Flutter. Petunjuknya dapat ditemukan di [dokumentasi resmi Flutter](https://flutter.dev/docs/get-started/install).
   - Buat proyek baru di [Firebase Console](https://console.firebase.google.com/) dan ikuti langkah-langkah untuk mengintegrasikan Firebase dengan proyek Flutter Anda.

2. **Clone Repositori**
   - Salin repositori ini dengan perintah:
     ```
     git clone https://github.com/alwijein/flutter_gizi_anak.git
     ```

3. **Buka Projek**
   - Masuk ke direktori projek:
     ```
     cd flutter_gizi_anak
     ```
   - Buka projek menggunakan editor kode pilihan Anda.

4. **Pengaturan Ketergantungan**
   - Jalankan perintah berikut untuk mengunduh dan mengatur semua dependensi yang dibutuhkan oleh aplikasi:
     ```
     flutter pub get
     ```

5. **Konfigurasi Firebase**
   - Ikuti petunjuk di [dokumentasi Flutter Firebase](https://firebase.flutter.dev/docs/overview) untuk mengintegrasikan aplikasi dengan Firebase.
   - Pastikan Anda sudah menambahkan file konfigurasi `google-services.json` ke dalam direktori `android/app` (untuk Android) dan `GoogleService-Info.plist` ke dalam direktori `ios/Runner` (untuk iOS).

6. **Menjalankan Aplikasi**
   - Jalankan perintah berikut untuk memulai aplikasi di emulator atau perangkat yang terhubung:
     ```
     flutter run
     ```

## Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE).