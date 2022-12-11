import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/data/models_local_toko_perabotan.dart';
import 'package:pasti_ada/page/choose_item_page.dart';
import 'package:pasti_ada/page/choose_item_page_perabotan.dart';

class DetailsTokoPerabotanPage extends StatelessWidget {
  static const routeName = '/details_toko_page_perabotan';

  final Perabotan tokoPerabotan;

  const DetailsTokoPerabotanPage({Key? key, required this.tokoPerabotan})
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
                      image: NetworkImage(tokoPerabotan.gambarToko),
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
                        tokoPerabotan.namaToko,
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
                        tokoPerabotan.alamatToko,
                        style: fontCardText,
                      ),
                    ),
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
                              rating: double.parse(
                                  tokoPerabotan.ratingToko.toString()),
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
                              tokoPerabotan.ratingToko.toString(),
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
                    tokoPerabotan.descriptionToko,
                    style: fontCardText,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseItemPagePerabotan(perabotan: tokoPerabotan,)),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red.shade400,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 2, bottom: 2),
                        child: const Text(
                          'Beli Barang',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
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
