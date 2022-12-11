import 'package:flutter/material.dart';
import 'package:pasti_ada/data/models_local_toko_bahan_bangunan.dart';
import 'package:pasti_ada/data/models_local_toko_bahan_makanan.dart';

import '../common/styles.dart';

class CardProductMakanan extends StatelessWidget {
  const CardProductMakanan({
    Key? key,
    required this.bahanMakanan,
  }) : super(key: key);

  final BahanMakanan bahanMakanan;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: bahanMakanan.barang.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: iconColor),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                leading: Hero(
                  tag: bahanMakanan.barang[index].gambarBarang,
                  child: SizedBox(
                    child: Image.network(
                      bahanMakanan.barang[index].gambarBarang,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                title: Text(
                  bahanMakanan.barang[index].namaBarang,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Row(
                  children: [
                    const Text("Rp. "),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        '${bahanMakanan.barang[index].hargaBarang}',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                trailing: Column(
                  children: const [
                    ChooseItem(),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

bool _isSelected = false;

class ChooseItem extends StatefulWidget {
  const ChooseItem({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChooseItemState createState() => _ChooseItemState();
}

class _ChooseItemState extends State<ChooseItem> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: iconColor,
      ),
      child: _isSelected ? const Text("Terpilih") : const Text("Pilih"),
      onPressed: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
    );
  }
}
