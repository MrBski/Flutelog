import 'package:flutter/material.dart';
import '../screens/dashboard_screen.dart';
import '../screens/log_recording_screen.dart';
import '../screens/inventory_screen.dart';
import '../screens/settings_screen.dart';

class MainNavigator extends StatefulWidget {
  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0; // Index untuk melacak Tab yang dipilih

  // Daftar Widget/Halaman yang akan ditampilkan di Tab Bar
  final List<Widget> _screens = [
    DashboardScreen(),      // Halaman 0: Dashboard (Quick Status)
    LogRecordingScreen(),   // Halaman 1: Perekaman Log Offline
    InventoryScreen(),      // Halaman 2: Manajemen Stok
    SettingsScreen(),       // Halaman 3: Pengaturan Kapal/Petugas
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Widget yang dipilih ditampilkan di sini
      body: _screens[_selectedIndex], 
      
      // Bottom Navigation Bar (Struktur Tab)
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note),
            label: 'Log Input',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2),
            label: 'Inventory',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Pastikan semua Tab terlihat
      ),
    );
  }
}
