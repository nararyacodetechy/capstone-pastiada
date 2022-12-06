import 'package:flutter/material.dart';
import 'package:pasti_ada/widget/widget_card_costum_stock.dart';

class ConfirmItem extends StatelessWidget {
  const ConfirmItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Konfirmasi Barang"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: const [
            CardCostumStock(),
            CardCostumStock(),
            CardCostumStock(),
            CardCostumStock(),
          ],
        ),
      ),
    );
  }
}
