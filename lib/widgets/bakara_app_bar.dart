import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';

/// App Bar kustom Bakara Mobile.
///
/// - Kiri  : tombol hamburger menu → membuka Drawer
/// - Tengah: logo teks "Bakara" + ikon tas belanja aksen kuning
/// - Kanan : ikon lonceng notifikasi
class BakaraAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BakaraAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  void _showNotificationSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Fitur ini sedang dikembangkan'),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: AppColors.primaryNavy,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundWhite,
      elevation: 0,
      scrolledUnderElevation: 1,
      shadowColor: AppColors.shadowColor,
      surfaceTintColor: Colors.transparent,

      // Tombol hamburger kiri
      leading: Builder(
        builder: (ctx) => IconButton(
          icon: const Icon(Icons.menu, color: AppColors.primaryNavy),
          tooltip: 'Menu',
          onPressed: () => Scaffold.of(ctx).openDrawer(),
        ),
      ),

      // Logo tengah
      centerTitle: true,
      title: Image.asset(
        'assets/images/logo-bakara.webp',
        height: 38,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) => const Text(
          'Bakara',
          style: TextStyle(
            color: AppColors.primaryNavy,
            fontWeight: FontWeight.w800,
            fontSize: 22,
            letterSpacing: -0.5,
          ),
        ),
      ),

      // Tombol notifikasi kanan
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications_none_rounded,
            color: AppColors.primaryNavy,
          ),
          tooltip: 'Notifikasi',
          onPressed: () => _showNotificationSnackBar(context),
        ),
        const SizedBox(width: 4),
      ],
    );
  }
}
