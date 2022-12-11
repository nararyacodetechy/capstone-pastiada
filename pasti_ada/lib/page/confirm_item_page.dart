import 'package:flutter/material.dart';
import 'package:pasti_ada/page/payment_page.dart';

import '../common/styles.dart';

class ConfirmItemPage extends StatelessWidget {
  const ConfirmItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CustomScrollView(slivers: [
            SliverAppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // CircleAvatar(
                  //   backgroundColor: iconColor,
                  //   child: Icon(
                  //     Icons.arrow_back,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  Text("Kostumisasi Barang"),
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
                  'https://deras.co.id/wp-content/uploads/2016/03/maps-local-search1-ss-1920-800x450-660x330.jpg',
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(bottom: 100),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      height: 60,
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
                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text("Total Pembayaran :"),
                                  Text(
                                    "Rp. 300.000",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: ElevatedButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PilihPembayaran()),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: iconColor,
                                ),
                                child: const Text("Pesan Sekarang"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
          const ButtonOrderConfirm()
        ],
      ),
    );
  }
}

class ButtonOrderConfirm extends StatelessWidget {
  const ButtonOrderConfirm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
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
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text("Total Pembayaran :"),
                  Text(
                    "Rp. 300.000",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConfirmItemPage()),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: iconColor,
                ),
                child: const Text("Pesan Sekarang"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
