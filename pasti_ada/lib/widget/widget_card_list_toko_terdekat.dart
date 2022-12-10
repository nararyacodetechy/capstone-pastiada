import 'package:flutter/material.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/data/toko_terdekat.dart';

class ListCardTokoTerdekat extends StatelessWidget {
  final TokoTerdekat tokoTerdekat;
  const ListCardTokoTerdekat({Key? key, required this.tokoTerdekat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      child: InkWell(
        onTap: () {},
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Card(
              child: Container(
                margin: const EdgeInsets.only(
                    left: 16 + 80 + 16, bottom: 8, right: 8, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tokoTerdekat.nama,
                      style: fontCardText,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      tokoTerdekat.alamat,
                      style: fontCardText,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: iconColor,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          tokoTerdekat.rating,
                          style: fontCardText,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(
                  left: 15,
                ),
                child: Image.network(
                  tokoTerdekat.gambar,
                  width: 80,
                  height: 100,
                )),
          ],
        ),
      ),
    );
  }
}
