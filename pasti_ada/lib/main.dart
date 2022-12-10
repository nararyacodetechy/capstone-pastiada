import 'package:flutter/material.dart';
import 'package:pasti_ada/common/utils.dart';
import 'package:pasti_ada/data/barang_terlaris.dart';
import 'package:pasti_ada/data/toko_terdekat.dart';
import 'package:pasti_ada/page/barang_terlaris_page.dart';
import 'package:pasti_ada/page/detail_toko_page.dart';
import 'package:pasti_ada/page/home_page.dart';
import 'package:pasti_ada/page/toko_terdekat_page.dart';
import 'common/styles.dart';
import 'page/detail_barang_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light()
          .copyWith(colorScheme: kColorScheme, primaryColor: primaryColor),
      // initialRoute: HomePage.routeName,
      // routes: {
      //   HomePage.routeName: (context) => const HomePage(),
      //   TokoTerdekatPage.routeName: (context) => const TokoTerdekatPage(),
      //   BarangTerlarisPage.routeName: (context) => const BarangTerlarisPage(),
      //   DetailTokoPage.routeName: (context) => DetailTokoPage(
      //         tokoTerdekat:
      //             ModalRoute.of(context)?.settings.arguments as TokoTerdekat,
      //       ),
      //   DetailBarangPage.routeName: (context) => DetailBarangPage(
      //         barangTerlaris:
      //             ModalRoute.of(context)?.settings.arguments as BarangTerlaris,
      //       ),
      // },

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
          case DetailTokoPage.routeName:
            final tokoTerdekat = settings.arguments as TokoTerdekat;
            return MaterialPageRoute(
              builder: (_) => DetailTokoPage(
                tokoTerdekat: tokoTerdekat,
              ),
              settings: settings,
            );
          case DetailBarangPage.routeName:
            final barangTerlaris = settings.arguments as BarangTerlaris;
            return MaterialPageRoute(
              builder: (context) => DetailBarangPage(
                barangTerlaris: barangTerlaris,
              ),
              settings: settings,
            );
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
