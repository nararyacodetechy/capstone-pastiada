import 'package:flutter/material.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/widget/multi_platform.dart';

class ListToko extends StatelessWidget {
  const ListToko({Key? key}) : super(key: key);

  Row _buildSubHeading({required String title, required Function() onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: fontSubtitleMedium,
        ),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Lihat Lebih Lengkap',
                  style: fontSubtitleMedium,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/banner.png',
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
                  const ItemList(),
                  Container(
                    child: _buildSubHeading(
                      title:
                          'Barang Terlaris\nBarang yang paling sering dicari',
                      onTap: () {},
                    ),
                  ),
                  const ItemList(),
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
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/barangbekas.png',
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
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/teknologi.png',
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
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/snack.png',
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
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/pakaian.png',
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
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/perabotan.png',
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
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/otomotif.png',
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
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/kuliner.png',
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
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/lainnya.png',
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

  @override
  Widget build(BuildContext context) {
    return MultiPlatform(
      androidStyle: _androidStyle,
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/gas.png',
                    height: 150,
                    width: 180,
                  ),
                  const Expanded(
                    child: Text(
                      'Gas 3kg\nGas untuk kita semua okee',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
