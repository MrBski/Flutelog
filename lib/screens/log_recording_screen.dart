import 'package:flutter/material.dart';

class LogRecordingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Log Mesin (Offline First)'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text('Di sini akan ada Form Input RPM, Tekanan Oli, dll.'),
      ),
    );
  }
}
