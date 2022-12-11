import 'package:flutter/material.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/data/barang_terlaris.dart';
import 'package:pasti_ada/widget/widget_card_list_barang_terlaris.dart';

class BarangTerlarisPage extends StatelessWidget {
  static const routeName = '/barang_terlaris_page';

  const BarangTerlarisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Barang Terlaris',
          style: fontTitleLarge,
        ),
      ),
      body: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/json/barang_terlaris.json'),
          builder: (context, snapshot) {
            final List<BarangTerlaris> barangTerlaris =
                parseBarang(snapshot.data);
            return ListView.builder(
              itemCount: barangTerlaris.length,
              itemBuilder: (context, index) {
                return ListCardBarangTerlaris(
                  barangTerlaris: barangTerlaris[index],
                );
              },
            );
          }),
    );
  }
}
