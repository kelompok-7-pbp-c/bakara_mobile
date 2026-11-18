import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// Halaman Beranda utama Bakara Mobile.
/// Berisi: Search Bar dan Hero Section adaptasi web Bakara.
class HomePage extends StatelessWidget {
  /// Callback untuk navigasi ke tab tertentu di bottom nav
  final ValueChanged<int> onNavigateTo;

  const HomePage({super.key, required this.onNavigateTo});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Search Bar ──────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: _SearchBar(),
          ),

          // ── Hero Section ────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
            child: _HeroSection(onNavigateTo: onNavigateTo),
          ),
        ],
      ),
    );
  }
}

// ── Search Bar ───────────────────────────────────────────────────────────────

class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: AppColors.backgroundLight,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: AppColors.borderLight),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          const Icon(Icons.search_rounded, color: AppColors.textSecondarySlate, size: 22),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              readOnly: true,
              decoration: const InputDecoration(
                hintText: 'Cari Jaket Lab, Kalkulator',
                hintStyle: TextStyle(
                  color: AppColors.textSecondarySlate,
                  fontSize: 14,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}

// ── Hero Section ─────────────────────────────────────────────────────────────

class _HeroSection extends StatelessWidget {
  final ValueChanged<int> onNavigateTo;
  const _HeroSection({required this.onNavigateTo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Badge pill krem
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.softCreamBadge,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.accentYellow.withAlpha(80)),
          ),
          child: const Text(
            'Platform Berbagi Barang Khusus Mahasiswa UI',
            style: TextStyle(
              color: AppColors.primaryNavy,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        const SizedBox(height: 16),

        // Layout 2 kolom: teks kiri, ilustrasi kanan
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kolom kiri
            Expanded(
              flex: 55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul besar
                  const Text(
                    'Butuh Barang?\nCari di Bakara!',
                    style: TextStyle(
                      color: AppColors.primaryNavy,
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      height: 1.2,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Subjudul
                  const Text(
                    'Beli, pinjam, atau donasikan barang yang sudah tidak kamu gunakan kepada sesama mahasiswa UI.',
                    style: TextStyle(
                      color: AppColors.textSecondarySlate,
                      fontSize: 13,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Tombol CTA kuning pill
                  ElevatedButton(
                    onPressed: () => onNavigateTo(1),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.accentYellow,
                      foregroundColor: AppColors.primaryNavy,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                      ),
                    ),
                    child: const Text('Jelajahi Katalog →'),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 12),

            // Kolom kanan: gambar hero dari assets
            Expanded(
              flex: 45,
              child: _HeroImage(),
            ),
          ],
        ),
      ],
    );
  }
}

// ── Hero Image ────────────────────────────────────────────────────────────────

/// Gambar hero kampus UI dengan badge kutipan di pojok kanan bawah.
class _HeroImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          // Gambar hero dari assets
          Image.asset(
            'assets/images/hero-illustration.webp',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              // Fallback jika file belum tersedia
              return Container(
                height: 200,
                decoration: const BoxDecoration(
                  color: Color(0xFFE8F4FD),
                ),
                child: const Center(
                  child: Icon(
                    Icons.image_outlined,
                    size: 48,
                    color: AppColors.textSecondarySlate,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
