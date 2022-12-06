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
              Icons.search,
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
                    height: 100,
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
                margin: const EdgeInsets.only(top: 150, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: const <Widget>[
                              Icon(Icons.person),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text('Kuliner'),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Icon(Icons.person),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text('Kuliner'),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Icon(Icons.person),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text('Kuliner'),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Icon(Icons.person),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text('Kuliner'),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: const <Widget>[
                              Icon(Icons.person),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text('Kuliner'),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Icon(Icons.person),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text('Kuliner'),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Icon(Icons.person),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text('Kuliner'),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Icon(Icons.person),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text('Kuliner'),
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
