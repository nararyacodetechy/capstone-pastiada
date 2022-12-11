import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/data/models_local_toko_bahan_bangunan.dart';

class DetailsTokoBahanBangunanPage extends StatelessWidget {
  static const routeName = '/details_toko_page_bahan_bangunan';

  final BahanBangunan bahanBangunan;

  const DetailsTokoBahanBangunanPage({Key? key, required this.bahanBangunan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details Toko',
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
                      image: NetworkImage(bahanBangunan.gambarToko),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Text(
                        bahanBangunan.namaToko,
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
                    Expanded(
                        child: Text(
                      bahanBangunan.alamatToko,
                      style: fontCardText,
                    ))
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
                            'Buka',
                            style: fontTextSuccess,
                          )
                        ],
                      ),
                    ),
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
                              rating: double.parse(bahanBangunan.ratingToko),
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
                              bahanBangunan.ratingToko.toString(),
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
                    bahanBangunan.descriptionToko,
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
