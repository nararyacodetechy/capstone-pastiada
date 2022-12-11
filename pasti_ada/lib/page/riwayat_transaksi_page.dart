import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  static const routeName = '/history_page';
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Ini Halaman Riwayat Transaksi"),
      ),
    );
  }
}
