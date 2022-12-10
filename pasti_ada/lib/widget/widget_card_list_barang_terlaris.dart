import 'package:flutter/material.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/data/barang_terlaris.dart';
import 'package:pasti_ada/page/detail_barang_page.dart';

class ListCardBarangTerlaris extends StatelessWidget {
  final BarangTerlaris barangTerlaris;
  const ListCardBarangTerlaris({Key? key, required this.barangTerlaris})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, DetailBarangPage.routeName,
              arguments: barangTerlaris);
        },
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
                      barangTerlaris.nama,
                      style: fontCardText,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      barangTerlaris.merk,
                      style: fontCardText,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Rp. "
                      '${barangTerlaris.harga}',
                      style: fontCardText,
                    ),
                    Row(
                      children: const [
                        SizedBox(),
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
                  barangTerlaris.gambar,
                  width: 80,
                  height: 100,
                )),
          ],
        ),
      ),
    );
  }
}
