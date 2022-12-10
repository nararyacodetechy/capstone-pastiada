import 'package:flutter/material.dart';
import 'package:pasti_ada/common/utils.dart';
import 'package:pasti_ada/page/barang_terlaris_page.dart';
import 'package:pasti_ada/page/home_page.dart';
import 'package:pasti_ada/page/toko_terdekat_page.dart';

import 'common/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light()
          .copyWith(colorScheme: kColorScheme, primaryColor: primaryColor),
      home: const HomePage(),
      navigatorObservers: [routeObserver],
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (_) => const HomePage());
          case TokoTerdekatPage.routeName:
            return MaterialPageRoute(builder: (_) => const TokoTerdekatPage());
          case BarangTerlarisPage.routeName:
            return MaterialPageRoute(
                builder: (_) => const BarangTerlarisPage());
          default:
            return MaterialPageRoute(builder: (_) {
              return const Scaffold(
                body: Center(child: Text('Halaman Tidak Ada Gan')),
              );
            });
        }
      },
    );
  }
}
