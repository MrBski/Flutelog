import 'package:flutter/material.dart';
import 'navigation/main_navigator.dart';

// --- DEFINISI WARNA PROYEK (ENGINE LOG PRO) ---
// Primary Color: Deep Blue (#1A237E)
const int _deepBluePrimaryValue = 0xFF1A237E;
const MaterialColor customPrimarySwatch = MaterialColor(
  _deepBluePrimaryValue,
  <int, Color>{
    50: Color(0xFFE8EAF6), 100: Color(0xFFC5CBE9), 200: Color(0xFF9FA8DA),
    300: Color(0xFF7986AC), 400: Color(0xFF5C6BC0), 500: Color(0xFF3F51B5),
    600: Color(0xFF3949AB), 700: Color(0xFF303F9F), 800: Color(0xFF283593),
    900: Color(_deepBluePrimaryValue),
  },
);
// Accent/Secondary Color: Vibrant Yellow (#FFD700)
const Color customAccentColor = Color(0xFFFFD700); 
// Background Color: Light Blue-Gray (#D2D6EB)
const Color customBackgroundColor = Color(0xFFD2D6EB); 
// ----------------------------------------------

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Engine Log Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // 1. PRIMARY COLOR (untuk AppBar, dll)
        primaryColor: customPrimarySwatch,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: customPrimarySwatch,
        ).copyWith(
          // 2. ACCENT COLOR (untuk Floating Button, indikator, dll)
          secondary: customAccentColor, 
        ),
        // 3. BACKGROUND COLOR (Latar belakang Scaffolds)
        scaffoldBackgroundColor: customBackgroundColor,
        
        // 4. BOTTOM NAVIGATION BAR
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: customPrimarySwatch.shade800, 
          selectedItemColor: customAccentColor, 
          unselectedItemColor: Colors.white70, 
        ),
        
        useMaterial3: true,
      ),
      // PERBAIKAN: Hapus 'const' karena MainNavigator adalah StatefulWidget
      home: MainNavigator(), 
    );
  }
}
