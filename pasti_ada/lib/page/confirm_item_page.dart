import 'package:flutter/material.dart';
import 'package:pasti_ada/page/payment_page.dart';

import '../common/styles.dart';

class ConfirmItemPage extends StatelessWidget {
  const ConfirmItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: iconColor,
        title: const Text("Konfirmasi Barang"),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 60),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  CardCostumStock(),
                  CardCostumStock(),
                  CardCostumStock(),
                  CardCostumStock(),
                  CardCostumStock(),
                  CardCostumStock(),
                  CardCostumStock(),
                  CardCostumStock(),
                ],
              ),
            ),
          ),
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
                      builder: (context) => const PilihPembayaran()),
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
