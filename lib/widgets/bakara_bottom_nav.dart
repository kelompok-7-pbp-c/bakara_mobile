import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';

/// Floating Bottom Navigation Bar berbentuk kapsul/pill melayang.
///
/// Berisi 5 tab: Home, Katalog, Transaksi, Minat & Kontak, Profile.
/// Gunakan [currentIndex] dan [onTap] untuk mengontrol tab aktif.
class BakaraBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BakaraBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  static const List<_NavItem> _items = [
    _NavItem(label: 'Home',     icon: Icons.home_outlined,         activeIcon: Icons.home_rounded),
    _NavItem(label: 'Katalog',  icon: Icons.shopping_bag_outlined,  activeIcon: Icons.shopping_bag_rounded),
    _NavItem(label: 'Transaksi',icon: Icons.receipt_long_outlined,  activeIcon: Icons.receipt_long_rounded),
    _NavItem(label: 'Minat',    icon: Icons.handshake_outlined,     activeIcon: Icons.handshake_rounded),
    _NavItem(label: 'Profile',  icon: Icons.person_outline_rounded, activeIcon: Icons.person_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
      child: Container(
        height: 68,
        decoration: BoxDecoration(
          color: AppColors.backgroundWhite,
          borderRadius: BorderRadius.circular(36),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryNavy.withAlpha(25),
              blurRadius: 24,
              spreadRadius: 0,
              offset: const Offset(0, 8),
            ),
            BoxShadow(
              color: AppColors.primaryNavy.withAlpha(10),
              blurRadius: 6,
              spreadRadius: 0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_items.length, (i) {
            final item = _items[i];
            final isActive = currentIndex == i;
            return _NavTab(
              item: item,
              isActive: isActive,
              onTap: () => onTap(i),
            );
          }),
        ),
      ),
    );
  }
}

class _NavTab extends StatelessWidget {
  final _NavItem item;
  final bool isActive;
  final VoidCallback onTap;

  const _NavTab({
    required this.item,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = isActive ? AppColors.primaryNavy : AppColors.textSecondarySlate;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              // Padding horizontal lebih kecil agar 5 tab muat di pill
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: isActive
                  ? BoxDecoration(
                      color: AppColors.primaryNavy.withAlpha(13),
                      borderRadius: BorderRadius.circular(16),
                    )
                  : null,
              child: Icon(
                isActive ? item.activeIcon : item.icon,
                color: color,
                // Ikon sedikit lebih kecil agar 5 tab proporsional
                size: 22,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              item.label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: color,
                // Font lebih kecil agar label 5 tab tidak overflow
                fontSize: 10,
                fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavItem {
  final String label;
  final IconData icon;
  final IconData activeIcon;

  const _NavItem({
    required this.label,
    required this.icon,
    required this.activeIcon,
  });
}
