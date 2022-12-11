import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  static const routeName = '/favorite_page';
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Ini Halaman Favorit"),
      ),
    );
  }
}
