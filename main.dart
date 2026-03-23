// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'utils/app_theme.dart';
import 'screens/dashboard_screen.dart';
import 'screens/stock_screen.dart';
import 'screens/achats_screen.dart';
import 'screens/produits_screen.dart';
import 'screens/commandes_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Orientation portrait uniquement
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Barre de statut transparente
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));

  // Initialisation Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const GestionApp());
}

class GestionApp extends StatelessWidget {
  const GestionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestionPro',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<_NavItem> _items = const [
    _NavItem(icon: Icons.dashboard_rounded,
        label: 'Dashboard', screen: DashboardScreen()),
    _NavItem(icon: Icons.inventory_2_rounded,
        label: 'Stock', screen: StockScreen()),
    _NavItem(icon: Icons.shopping_cart_rounded,
        label: 'Achats', screen: AchatsScreen()),
    _NavItem(icon: Icons.bakery_dining_rounded,
        label: 'Produits', screen: ProduitsScreen()),
    _NavItem(icon: Icons.receipt_long_rounded,
        label: 'Commandes', screen: CommandesScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _items.map((i) => i.screen).toList(),
      ),
      bottomNavigationBar: _buildNavBar(),
    );
  }

  Widget _buildNavBar() {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surface,
        border: const Border(
          top: BorderSide(color: Color(0xFF2A2A45), width: 1),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_items.length, (i) {
              final item = _items[i];
              final isActive = _currentIndex == i;
              return GestureDetector(
                onTap: () => setState(() => _currentIndex = i),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    gradient: isActive ? AppTheme.primaryGradient : null,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        item.icon,
                        color: isActive ? Colors.white : AppTheme.textHint,
                        size: 22,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        item.label,
                        style: TextStyle(
                          color: isActive ? Colors.white : AppTheme.textHint,
                          fontSize: 10,
                          fontWeight: isActive
                              ? FontWeight.w600
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _NavItem {
  final IconData icon;
  final String label;
  final Widget screen;
  const _NavItem(
      {required this.icon, required this.label, required this.screen});
}
