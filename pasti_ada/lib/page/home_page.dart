import 'package:flutter/material.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/page/favorite_page.dart';
import 'package:pasti_ada/page/riwayat_transaksi_page.dart';
import 'package:pasti_ada/page/settings_page.dart';
import 'package:pasti_ada/widget/widget_list_toko_barang.dart';
import 'package:pasti_ada/widget/multi_platform.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;

  final List<Widget> _listWidget = [
    const ListToko(),
    const FavoritePage(),
    const HistoryPage(),
    const SettingsPage(),
  ];

  final List<BottomNavigationBarItem> _bottomNavbarItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.favorite), label: 'Favorite'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag), label: 'Riwayat Transaksi'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings), label: 'Pengaturan'),
  ];

  void _bottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  Widget _androidStyle(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: iconColor,
        backgroundColor: primaryColor,
        currentIndex: _bottomNavIndex,
        items: _bottomNavbarItems,
        onTap: _bottomNavTapped,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiPlatform(
      androidStyle: _androidStyle,
    );
  }
}
