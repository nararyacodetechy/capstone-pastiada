// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/data/toko_terdekat.dart';
import 'package:pasti_ada/widget/widget_card_list_toko_terdekat.dart';

class TokoTerdekatPage extends StatelessWidget {
  static const routeName = '/toko_terdekat_page';

  const TokoTerdekatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toko Terdekat',
          style: fontTitleLarge,
        ),
      ),
      body: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/json/toko_terdekat.json'),
          builder: (context, snapshot) {
            final List<TokoTerdekat> tokoTerdekat = parseToko(snapshot.data);
            return ListView.builder(
              itemCount: tokoTerdekat.length,
              itemBuilder: (context, index) {
                return ListCardTokoTerdekat(
                  tokoTerdekat: tokoTerdekat[index],
                );
              },
            );
          }),
    );
  }
}
