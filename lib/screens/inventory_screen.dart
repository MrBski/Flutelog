import 'package:flutter/material.dart';

class InventoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manajemen Inventaris'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text('Di sini akan ada Daftar Stok, Peringatan Kuning, dan Tombol Sync.'),
      ),
    );
  }
}
