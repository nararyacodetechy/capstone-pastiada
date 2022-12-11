import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/data/barang_terlaris.dart';

class DetailBarangPage extends StatelessWidget {
  static const routeName = '/detail_barang_page';

  final BarangTerlaris barangTerlaris;

  const DetailBarangPage({Key? key, required this.barangTerlaris})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Barang',
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
                      image: NetworkImage(barangTerlaris.gambar),
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
                          barangTerlaris.nama,
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
                  Row(
                    children: [
                      Text(
                        "Merk : ${barangTerlaris.merk}",
                        style: fontCardText,
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Harga : ${barangTerlaris.harga}",
                          style: fontTitleMedium,
                        )
                      ],
                    ),
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
                                  rating: double.parse(barangTerlaris.rating),
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star_rounded,
                                    color: iconColor,
                                  ),
                                  itemCount: 5,
                                  itemSize: 18.0,
                                  direction: Axis.horizontal,
                                ),
                                Text(
                                  barangTerlaris.rating,
                                  style: fontCardText,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width,
                      child: Text("Deskripsi Barang", style: fontTitleMedium)),
                  Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        barangTerlaris.deskripsi,
                        style: fontCardText,
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
