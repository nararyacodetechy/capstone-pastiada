import 'package:flutter/material.dart';
import 'package:pasti_ada/page/confirm_item_page.dart';
import 'package:pasti_ada/widget/widget_card_choose_item.dart';

import '../common/styles.dart';

class ChooseItemPage extends StatelessWidget {
  const ChooseItemPage({super.key});

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
                    CircleAvatar(
                      backgroundColor: iconColor,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text("Pilih Barang"),
                    CircleAvatar(
                      backgroundColor: iconColor,
                      child: Icon(Icons.person, color: primaryColor),
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
                      onChanged: (value) {
                        // Provider.of<SearchProvider>(context, listen: false)
                        //     .restoSearch(value);
                      },
                    ),
                  ),
                ),
                pinned: true,
                expandedHeight: 300,
                backgroundColor: iconColor,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    'https://media.istockphoto.com/id/1178080600/id/vektor/toko-perhiasan-kecil-membangun-vektor-kartun.jpg?s=170667a&w=0&k=20&c=UNec5Knklcm_aZ8_galvHEwVGOUsEREm0NxJjQw-kck=',
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
                    children: const [
                      CardProduct(),
                      CardProduct(),
                      CardProduct(),
                      CardProduct(),
                      CardProduct(),
                      CardProduct(),
                      CardProduct(),
                      CardProduct(),
                      CardProduct(),
                    ],
                  ),
                ),
              )
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
