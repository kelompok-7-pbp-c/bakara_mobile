import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// Halaman Minat & Kontak — placeholder menunggu implementasi modul.
class MinatKontakPage extends StatelessWidget {
  const MinatKontakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundWhite,
        elevation: 0,
        title: const Text(
          'Minat & Kontak',
          style: TextStyle(
            color: AppColors.primaryNavy,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        // Leading otomatis (tombol back) karena bisa diakses dari Drawer
        iconTheme: const IconThemeData(color: AppColors.primaryNavy),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              const Text(
                'Fitur ini sedang dikembangkan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryNavy,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
