import 'package:flutter/material.dart';
import 'package:pasti_ada/data/models_local_toko_fashion.dart';
import 'package:pasti_ada/page/confirm_item_page.dart';
import 'package:pasti_ada/widget/widget_card_choose_item.dart';

import '../common/styles.dart';

class ChooseItemPageFashion extends StatelessWidget {
  const ChooseItemPageFashion({super.key, required this.fashion});

  final Fashion fashion;

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
                  children: const [
                    Text(
                      "Pilih Barang",
                      style: TextStyle(color: Colors.white),
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
                    fashion.gambarToko,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                  child: CardProduct(
                fashion: fashion,
              )),
            ],
          ),
          const ButtonConfirmSelectItems(),
        ],
      ),
    );
  }
}

class CardProduct extends StatelessWidget {
  const CardProduct({Key? key, required this.fashion}) : super(key: key);

  final Fashion fashion;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: fashion.barang.length,
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
                tag: fashion.barang[index].gambarBarang,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(fashion.barang[index].gambarBarang),
                ),
              ),
              title: Text(
                fashion.barang[index].namaBarang,
                style: Theme.of(context).textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Row(
                children: [
                  const Text("Rp. "),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      fashion.barang[index].hargaBarang.toString(),
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
      },
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
