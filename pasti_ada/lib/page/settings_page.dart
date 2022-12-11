import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = '/settings_page';
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Ini Halaman Settings"),
      ),
    );
  }
}
