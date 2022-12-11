import 'package:flutter/material.dart';
import 'package:pasti_ada/common/styles.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = '/settings_page';
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: fontTitleLarge,
        ),
      ),
      body: Center(
        child: Text(
          "Ini Halaman Settings",
          style: fontTitleMedium,
        ),
      ),
    );
  }
}
