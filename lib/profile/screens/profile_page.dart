import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../auth/screens/login_page.dart';

/// Halaman Profile — placeholder dengan tombol Login/Logout yang jelas.
class ProfilePage extends StatelessWidget {
  final bool isLoggedIn;
  final VoidCallback onAuthChanged;

  const ProfilePage({
    super.key,
    required this.isLoggedIn,
    required this.onAuthChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundWhite,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: AppColors.primaryNavy,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              // Avatar placeholder
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: AppColors.backgroundLight,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.borderLight, width: 2),
                ),
                child: const Icon(
                  Icons.person_rounded,
                  size: 50,
                  color: AppColors.textSecondarySlate,
                ),
              ),
              const SizedBox(height: 14),

              Text(
                isLoggedIn ? 'Mahasiswa UI' : 'Belum Masuk',
                style: const TextStyle(
                  color: AppColors.primaryNavy,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                isLoggedIn ? 'nama@ui.ac.id' : 'Silakan login untuk melihat profil',
                style: const TextStyle(
                  color: AppColors.textSecondarySlate,
                  fontSize: 13,
                ),
              ),

              const SizedBox(height: 28),

              // Banner placeholder
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.backgroundLight,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.borderLight),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 14),
                    const Text(
                      'Fitur ini sedang dikembangkan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryNavy,
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),

                  ],
                ),
              ),

              const SizedBox(height: 28),

              // Tombol Login atau Logout
              if (!isLoggedIn)
                _ProfileAuthButton(
                  label: 'Masuk (Login)',
                  icon: Icons.login_rounded,
                  backgroundColor: AppColors.accentYellow,
                  foregroundColor: AppColors.primaryNavy,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LoginPage(onLoginSuccess: onAuthChanged),
                      ),
                    );
                  },
                )
              else
                _ProfileAuthButton(
                  label: 'Keluar (Logout)',
                  icon: Icons.logout_rounded,
                  backgroundColor: AppColors.primaryNavy,
                  foregroundColor: Colors.white,
                  onTap: () {
                    onAuthChanged();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                          'Berhasil logout (Fitur autentikasi sedang dikembangkan)',
                        ),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: AppColors.primaryNavy,
                        duration: const Duration(seconds: 3),
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileAuthButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onTap;

  const _ProfileAuthButton({
    required this.label,
    required this.icon,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: 18),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
