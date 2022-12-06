import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

//pages
import 'package:shop/pages/home.dart';
// import 'package:shop/pages/list_toko.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.orange,
      ),
      home: Home(),
    );
  }
}
