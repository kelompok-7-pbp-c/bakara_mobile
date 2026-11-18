import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// Halaman Transaksi — placeholder menunggu implementasi modul.
class TransaksiPage extends StatelessWidget {
  const TransaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundWhite,
        elevation: 0,
        title: const Text(
          'Transaksi',
          style: TextStyle(
            color: AppColors.primaryNavy,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
