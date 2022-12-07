import 'package:flutter/material.dart';
import 'package:pasti_ada/page/confirm_item_page.dart';
import 'package:pasti_ada/widget/widget_card_choose_item.dart';

class SelectItemPage extends StatelessWidget {
  const SelectItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ],
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(80),
                  child: Container(
                    height: 80,
                    color: Colors.white,
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      style:
                          const TextStyle(color: Colors.orange, fontSize: 18),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        hintText: 'Cari Barang disini...',
                        fillColor: Colors.white,
                        hintStyle: const TextStyle(
                            fontSize: 18.0,
                            color: Color.fromARGB(255, 180, 180, 180)),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.orange,
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
                backgroundColor: Colors.orange,
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
                  color: Colors.white,
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
      margin: const EdgeInsets.only(top: 583),
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Pilihan: 3",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Text("Total Pembayaran: Rp.300.000"),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ConfirmItemPage()),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text("Lihat Pilihan"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
