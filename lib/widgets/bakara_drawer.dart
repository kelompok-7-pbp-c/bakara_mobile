import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../auth/screens/login_page.dart';

/// Drawer navigasi utama Bakara Mobile.
///
/// Menampilkan navigasi ke semua modul utama beserta
/// tombol Login / Logout yang jelas.
class BakaraDrawer extends StatelessWidget {
  /// Callback untuk navigasi tab (index sesuai BakaraBottomNav)
  final ValueChanged<int> onNavigateTo;

  /// Status login simulasi
  final bool isLoggedIn;

  /// Callback saat login/logout berhasil (simulasi)
  final VoidCallback onAuthChanged;

  const BakaraDrawer({
    super.key,
    required this.onNavigateTo,
    required this.isLoggedIn,
    required this.onAuthChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backgroundWhite,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Drawer
            _DrawerHeader(isLoggedIn: isLoggedIn),

            const Divider(color: AppColors.borderLight, height: 1),
            const SizedBox(height: 8),

            // Navigasi utama
            _DrawerItem(
              icon: Icons.home_rounded,
              label: 'Beranda',
              onTap: () {
                Navigator.pop(context);
                onNavigateTo(0);
              },
            ),
            _DrawerItem(
              icon: Icons.shopping_bag_outlined,
              label: 'Katalog',
              onTap: () {
                Navigator.pop(context);
                onNavigateTo(1);
              },
            ),
            _DrawerItem(
              icon: Icons.receipt_long_outlined,
              label: 'Transaksi',
              onTap: () {
                Navigator.pop(context);
                onNavigateTo(2);
              },
            ),
            _DrawerItem(
              icon: Icons.handshake_outlined,
              label: 'Minat & Kontak',
              onTap: () {
                Navigator.pop(context);
                onNavigateTo(3);
              },
            ),

            const Spacer(),
            const Divider(color: AppColors.borderLight, height: 1),
            const SizedBox(height: 8),

            // Tombol Login / Logout
            if (!isLoggedIn)
              _AuthButton(
                label: 'Masuk (Login)',
                icon: Icons.login_rounded,
                color: AppColors.accentYellow,
                textColor: AppColors.primaryNavy,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginPage(onLoginSuccess: onAuthChanged),
                    ),
                  );
                },
              )
            else
              _AuthButton(
                label: 'Keluar (Logout)',
                icon: Icons.logout_rounded,
                color: AppColors.primaryNavy,
                textColor: Colors.white,
                onTap: () {
                  Navigator.pop(context);
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
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

// ── Sub-widget internal ──────────────────────────────────────────────────────

class _DrawerHeader extends StatelessWidget {
  final bool isLoggedIn;
  const _DrawerHeader({required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/logo-bakara.webp',
            height: 42,
            fit: BoxFit.contain,
            alignment: Alignment.centerLeft,
            errorBuilder: (context, error, stackTrace) => const Text(
              'Bakara',
              style: TextStyle(
                color: AppColors.primaryNavy,
                fontWeight: FontWeight.w800,
                fontSize: 22,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            isLoggedIn ? 'Selamat datang kembali!' : 'Berbagi Barang, Menguatkan Sesama\nuntuk Mahasiswa UI',
            style: const TextStyle(
              color: AppColors.textSecondarySlate,
              fontSize: 13,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _DrawerItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primaryNavy, size: 22),
      title: Text(
        label,
        style: const TextStyle(
          color: AppColors.primaryNavy,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
  }
}

class _AuthButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final Color textColor;
  final VoidCallback onTap;

  const _AuthButton({
    required this.label,
    required this.icon,
    required this.color,
    required this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: onTap,
          icon: Icon(icon, size: 18),
          label: Text(label),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: textColor,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            elevation: 0,
            textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
