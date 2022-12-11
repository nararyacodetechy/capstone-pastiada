import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pasti_ada/common/styles.dart';

import 'package:pasti_ada/data/toko_terdekat.dart';

class DetailTokoPage extends StatelessWidget {
  static const routeName = '/detail_toko_page';

  final TokoTerdekat tokoTerdekat;

  const DetailTokoPage({Key? key, required this.tokoTerdekat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Toko',
          style: fontTitleLarge,
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(tokoTerdekat.gambar),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Text(
                        tokoTerdekat.nama,
                        style: fontTitleMedium,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.favorite_border,
                              color: iconColor,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.fmd_good,
                      color: iconColor,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      tokoTerdekat.alamat,
                      style: fontCardText,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: darkPrimary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.only(
                        top: 3,
                        bottom: 3,
                        left: 7,
                        right: 7,
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: success,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Text(
                            tokoTerdekat.status,
                            style: fontTextSuccess,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      tokoTerdekat.jamOperasional,
                      style: fontCardText,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            RatingBarIndicator(
                              rating: double.parse(tokoTerdekat.rating),
                              itemBuilder: (context, index) => const Icon(
                                Icons.star_rounded,
                                color: iconColor,
                              ),
                              itemCount: 5,
                              itemSize: 18.0,
                              direction: Axis.horizontal,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              tokoTerdekat.rating,
                              style: fontCardText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Deskripsi toko",
                    style: fontTitleMedium,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    tokoTerdekat.deskripsi,
                    style: fontCardText,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
