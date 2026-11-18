import 'package:flutter/material.dart';

/// Palet warna utama aplikasi Bakara Mobile.
/// Gunakan konstanta ini di seluruh modul untuk konsistensi desain.
class AppColors {
  AppColors._();

  /// Warna utama gelap — teks judul, ikon aktif, logo, tombol sekunder
  static const Color primaryNavy = Color(0xFF1B2D45);

  /// Aksen kuning/mustard — tombol CTA utama (Jelajahi Katalog, Masuk)
  static const Color accentYellow = Color(0xFFF5B82E);

  /// Background badge pill krem lembut
  static const Color softCreamBadge = Color(0xFFFDF6E7);

  /// Background utama halaman
  static const Color backgroundWhite = Color(0xFFFFFFFF);

  /// Background sekunder abu sangat terang
  static const Color backgroundLight = Color(0xFFF8F9FA);

  /// Teks sekunder abu biru
  static const Color textSecondarySlate = Color(0xFF5A6B7C);

  /// Warna border/divider halus
  static const Color borderLight = Color(0xFFE8ECF0);

  /// Shadow warna untuk komponen floating
  static const Color shadowColor = Color(0x1A1B2D45);
}
