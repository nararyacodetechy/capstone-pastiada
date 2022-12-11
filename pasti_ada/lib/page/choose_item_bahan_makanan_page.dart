import 'package:flutter/material.dart';
import 'package:pasti_ada/data/models_local_toko_bahan_bangunan.dart';
import 'package:pasti_ada/data/models_local_toko_bahan_makanan.dart';
import 'package:pasti_ada/page/confirm_item_page.dart';
import 'package:pasti_ada/widget/widget_card_choose_item_bangunan.dart';
import 'package:pasti_ada/widget/widget_card_chosoe_item_makanan.dart';
import '../common/styles.dart';

class ChooseItemBahanMakananPage extends StatelessWidget {
  final BahanMakanan bahanMakanan;
  const ChooseItemBahanMakananPage({super.key, required this.bahanMakanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pilih Barang",
                      style: fontTitleLarge,
                    ),
                  ],
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(80),
                  child: Container(
                    height: 80,
                    color: primaryColor,
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(color: iconColor, fontSize: 18),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: iconColor),
                        ),
                        hintText: 'Cari Barang disini...',
                        fillColor: primaryColor,
                        hintStyle: const TextStyle(
                            fontSize: 18.0,
                            color: Color.fromARGB(255, 180, 180, 180)),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: iconColor,
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                pinned: true,
                expandedHeight: 300,
                backgroundColor: iconColor,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    bahanMakanan.gambarToko,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 100),
                  padding: const EdgeInsets.all(10),
                  color: primaryColor,
                  child: Column(
                    children: [
                      CardProductMakanan(
                        bahanMakanan: bahanMakanan,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const ButtonConfirmSelectItems(),
        ],
      ),
    );
  }
}

class ButtonConfirmSelectItems extends StatelessWidget {
  const ButtonConfirmSelectItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 80,
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Pilihan: 3",
                style: kTextTheme.subtitle1,
              ),
              Text(
                "Total Pembayaran: Rp.300.000",
                style: kTextTheme.bodyText1,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ConfirmItemPage()),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: iconColor,
            ),
            child: const Text("Lihat Pilihan"),
          )
        ],
      ),
    );
  }
}
