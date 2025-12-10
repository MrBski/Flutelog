import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan Kapal & User'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text('Di sini akan ada input Nama Kapal dan User/Officer (Better Auth).'),
      ),
    );
  }
}
