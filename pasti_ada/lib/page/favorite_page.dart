import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  static const routeName = '/favorite_page';
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
      ),
      body: const Center(
        child: Text("Ini Halaman Favorit"),
      ),
    );
  }
}
