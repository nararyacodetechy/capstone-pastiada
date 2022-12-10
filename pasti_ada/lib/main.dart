import 'package:flutter/material.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: primaryColor),
      ),
      home: const HomePage(),
    );
  }
}
