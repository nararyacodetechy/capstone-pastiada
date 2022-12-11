import 'package:flutter/material.dart';
import 'package:pasti_ada/common/styles.dart';

class FavoritePage extends StatelessWidget {
  static const routeName = '/favorite_page';
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
          style: fontTitleLarge,
        ),
      ),
      body: Center(
        child: Text(
          "Ini Halaman Favorit",
          style: fontTitleMedium,
        ),
      ),
    );
  }
}
