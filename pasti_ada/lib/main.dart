import 'package:flutter/material.dart';
import 'package:pasti_ada/category/detailsPage/details_toko_page_bahan_bangunan.dart';
import 'package:pasti_ada/category/detailsPage/details_toko_page_bahan_makanan.dart';
import 'package:pasti_ada/category/detailsPage/details_toko_page_fashion.dart';
import 'package:pasti_ada/category/detailsPage/details_toko_page_perabotan.dart';

import 'package:pasti_ada/common/utils.dart';
import 'package:pasti_ada/data/barang_terlaris.dart';
import 'package:pasti_ada/data/models_local_toko_bahan_bangunan.dart';
import 'package:pasti_ada/data/models_local_toko_bahan_makanan.dart';
import 'package:pasti_ada/data/models_local_toko_fashion.dart';
import 'package:pasti_ada/data/models_local_toko_perabotan.dart';
import 'package:pasti_ada/data/toko_terdekat.dart';
import 'package:pasti_ada/page/barang_terlaris_page.dart';
import 'package:pasti_ada/page/detail_toko_page.dart';
import 'package:pasti_ada/page/home_page.dart';
import 'package:pasti_ada/page/riwayat_transaksi_page.dart';
import 'package:pasti_ada/page/settings_page.dart';
import 'package:pasti_ada/page/toko_terdekat_page.dart';
import 'common/styles.dart';
import 'page/detail_barang_page.dart';
import 'page/favorite_page.dart';


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
      home: const HomePage(),
      navigatorObservers: [routeObserver],
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (_) => const HomePage());
          case FavoritePage.routeName:
            return MaterialPageRoute(builder: (_) => const FavoritePage());
          case HistoryPage.routeName:
            return MaterialPageRoute(builder: (_) => const HistoryPage());
          case SettingsPage.routeName:
            return MaterialPageRoute(builder: (_) => const SettingsPage());
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
          case DetailsTokoFashionPage.routeName:
            final tokoFashion = settings.arguments as Fashion;
            return MaterialPageRoute(
                builder: (_) => DetailsTokoFashionPage(
                      tokoFashion: tokoFashion,
                    ));
          case DetailsTokoPerabotanPage.routeName:
            final perabotan = settings.arguments as Perabotan;
            return MaterialPageRoute(
                builder: (_) => DetailsTokoPerabotanPage(
                      tokoPerabotan: perabotan,
                    ));
          case DetailsTokoBahanMakananPage.routeName:
            final bahanMakanan = settings.arguments as BahanMakanan;
            return MaterialPageRoute(
                builder: (_) => DetailsTokoBahanMakananPage(
                      bahanMakanan: bahanMakanan,
                    ));
          case DetailsTokoBahanBangunanPage.routeName:
            final bahanBangunan = settings.arguments as BahanBangunan;
            return MaterialPageRoute(
                builder: (_) => DetailsTokoBahanBangunanPage(
                      bahanBangunan: bahanBangunan,
                    ));
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
