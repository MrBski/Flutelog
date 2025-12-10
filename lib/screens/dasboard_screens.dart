import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard - Status Cepat'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text('Di sini akan ditampilkan Matriks Kunci (Key Metrics) Mesin'),
      ),
    );
  }
}
