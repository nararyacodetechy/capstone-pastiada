import 'package:flutter/material.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/data/barang_terlaris.dart';
import 'package:pasti_ada/data/toko_terdekat.dart';
import 'package:pasti_ada/widget/multi_platform.dart';

class ListToko extends StatelessWidget {
  const ListToko({Key? key}) : super(key: key);

  Widget _androidStyle(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PASTI ADA',
          style: fontTitleLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
              color: iconColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_sharp,
              color: iconColor,
            ),
          )
        ],
      ),
      body: _buildListToko(context),
    );
  }

  Widget _buildListToko(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icon/banner.png',
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Container(
                    child: _buildSubHeading(
                      title: 'Toko Terdekat\nPaling Dekat Dengan Rumah Anda',
                      onTap: () {},
                    ),
                  ),
                  const ItemTokoList(),
                  Container(
                    child: _buildSubHeading(
                      title:
                          'Barang Terlaris\nBarang yang paling sering dicari',
                      onTap: () {},
                    ),
                  ),
                  const ItemBarangList(),
                ],
              ),
              Card(
                margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(1, 1),
                        ),
                      ]),
                  width: MediaQuery.of(context).size.width * 1,
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 5, left: 8, right: 10),
                  height: 35,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.search,
                          color: iconColor,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text('cari barang atau toko disini ...',
                              style: fontbodyText),
                        ),
                      ]),
                ),
              ),
              Card(
                margin: const EdgeInsets.only(top: 150, left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icon/barangbekas.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Olahraga',
                                  style: fontbodyTextSmall,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icon/teknologi.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Teknologi',
                                  style: fontbodyTextSmall,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icon/snack.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Snack',
                                  style: fontbodyTextSmall,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icon/pakaian.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Pakaian',
                                  style: fontbodyTextSmall,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context) {
                              //   return PerabotanCategoryPage();
                              // }));
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icon/perabotan.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Perabotan',
                                  style: fontbodyTextSmall,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icon/otomotif.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Otomotif',
                                  style: fontbodyTextSmall,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icon/kuliner.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Kuliner',
                                  style: fontbodyTextSmall,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icon/lainnya.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Lainnya',
                                  style: fontbodyTextSmall,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildSubHeading({required String title, required Function() onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: fontbodyText,
        ),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Lihat Lebih Lengkap',
                  style: fontbodyText,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: iconColor,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiPlatform(
      androidStyle: _androidStyle,
    );
  }
}

class ItemTokoList extends StatelessWidget {
  const ItemTokoList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/json/toko_terdekat.json'),
        builder: (context, snapshot) {
          final List<TokoTerdekat> tokoTerdekat = parseToko(snapshot.data);
          return SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final toko = tokoTerdekat[index];
                return InkWell(
                  onTap: () {},
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                          toko.gambar,
                          height: 100,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "${toko.nama}\n${toko.alamat}",
                          style: fontCardText,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: iconColor,
                              ),
                              Text(
                                toko.rating,
                                style: fontCardText,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: tokoTerdekat.length,
            ),
          );
        });
  }
}

class ItemBarangList extends StatelessWidget {
  const ItemBarangList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/json/barang_terlaris.json'),
        builder: (context, snapshot) {
          final List<BarangTerlaris> barangTerlaris =
              parseBarang(snapshot.data);
          return SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final barang = barangTerlaris[index];
                return InkWell(
                  onTap: () {},
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                          barang.gambar,
                          height: 100,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "${barang.nama}\n${barang.merk}\nRp.${barang.harga}",
                          style: fontCardText,
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: barangTerlaris.length,
            ),
          );
        });
  }
}
