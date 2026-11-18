import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/theme/app_colors.dart';
import 'widgets/bakara_app_bar.dart';
import 'widgets/bakara_bottom_nav.dart';
import 'widgets/bakara_drawer.dart';

import 'main_page/screens/home_page.dart';
import 'katalog/screens/katalog_page.dart';
import 'transaksi/screens/transaksi_page.dart';
import 'profile/screens/profile_page.dart';
import 'minat_kontak/screens/minat_kontak_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const BakaraApp());
}

/// Root widget aplikasi Bakara Mobile.
class BakaraApp extends StatelessWidget {
  const BakaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bakara Mobile',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(),
      routes: {
        '/': (context) => const BakaraShell(),
        '/minat-kontak': (context) => const MinatKontakPage(),
      },
      initialRoute: '/',
    );
  }

  ThemeData _buildTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryNavy,
        brightness: Brightness.light,
        primary: AppColors.primaryNavy,
        secondary: AppColors.accentYellow,
        surface: AppColors.backgroundWhite,
      ),
      scaffoldBackgroundColor: AppColors.backgroundWhite,
      fontFamily: 'Roboto',
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.backgroundWhite,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: AppColors.primaryNavy,
          fontWeight: FontWeight.w800,
          fontSize: 20,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accentYellow,
          foregroundColor: AppColors.primaryNavy,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}

/// Shell utama aplikasi — mengelola bottom navigation & drawer state.
class BakaraShell extends StatefulWidget {
  const BakaraShell({super.key});

  @override
  State<BakaraShell> createState() => _BakaraShellState();
}

class _BakaraShellState extends State<BakaraShell> {
  int _currentIndex = 0;

  /// Status login (simulasi — akan diganti auth nyata di sprint berikutnya)
  bool _isLoggedIn = false;

  void _onTabTapped(int index) {
    setState(() => _currentIndex = index);
  }

  void _onAuthChanged() {
    setState(() => _isLoggedIn = !_isLoggedIn);
  }

  /// Daftar halaman utama yang dikelola bottom nav
  /// Urutan harus sesuai dengan indeks tab di BakaraBottomNav:
  /// 0=Home, 1=Katalog, 2=Transaksi, 3=Minat & Kontak, 4=Profile
  List<Widget> get _pages => [
        HomePage(onNavigateTo: _onTabTapped),
        const KatalogPage(),
        const TransaksiPage(),
        const MinatKontakPage(),
        ProfilePage(
          isLoggedIn: _isLoggedIn,
          onAuthChanged: _onAuthChanged,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,

      // App Bar global
      appBar: const BakaraAppBar(),

      // Drawer navigasi global
      drawer: BakaraDrawer(
        onNavigateTo: _onTabTapped,
        isLoggedIn: _isLoggedIn,
        onAuthChanged: _onAuthChanged,
      ),

      // Konten halaman aktif — IndexedStack mempertahankan state antar tab
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),

      // Floating bottom nav — ditempatkan sebagai bottomNavigationBar
      // agar tidak overlap konten; padding diatur di dalam widget
      bottomNavigationBar: BakaraBottomNav(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
