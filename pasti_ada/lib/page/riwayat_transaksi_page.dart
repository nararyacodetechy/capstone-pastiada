import 'package:flutter/material.dart';
import 'package:pasti_ada/common/styles.dart';

class HistoryPage extends StatelessWidget {
  static const routeName = '/history_page';
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riwayat Transaksi',
          style: fontTitleLarge,
        ),
      ),
      body: Center(
        child: Text(
          "Ini Halaman Riwayat Transaksi",
          style: fontTitleMedium,
        ),
      ),
    );
  }
}
