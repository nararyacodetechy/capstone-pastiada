
import 'package:flutter/material.dart';
import 'package:pasti_ada/page/detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      home: DetailPage()
    );
  }
}
