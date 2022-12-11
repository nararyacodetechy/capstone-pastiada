import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';
import 'package:pasti_ada/page/payment_page.dart';
import 'package:pasti_ada/widget/widget_card_costum_stock.dart';

import '../common/styles.dart';

class ConfirmItemPage extends StatelessWidget {
  const ConfirmItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
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
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: iconColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        leading: Hero(
                          tag: "1",
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.network(
                                'https://tshirtbar.id/wp-content/uploads/2021/08/OVERSIZE-TSHIRT-SALEM-323x500.png'),
                          ),
                        ),
                        title: Text(
                          "Tshirt-Salem",
                          style: Theme.of(context).textTheme.bodyLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Row(
                          children: const [
                            Text("Rp. "),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "85.500",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        trailing: SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 100,
                                child: Center(
                                  child: CustomNumberPicker(
                                    shape: const Border(
                                      top: BorderSide(color: iconColor),
                                      left: BorderSide(color: iconColor),
                                      right: BorderSide(color: iconColor),
                                      bottom: BorderSide(color: iconColor),
                                    ),
                                    initialValue: 1,
                                    maxValue: 50,
                                    minValue: 1,
                                    step: 1,
                                    onValue: (value) {
                                      print(value.toString());
                                    },
                                    valueTextStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: iconColor),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.close,
                                  color: iconColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: iconColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        leading: Hero(
                          tag: "2",
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.network(
                                'https://ds393qgzrxwzn.cloudfront.net/resize/m400x400/cat1/img/images/0/GC4XOVu0Pe.jpg'),
                          ),
                        ),
                        title: Text(
                          "Cardingan",
                          style: Theme.of(context).textTheme.bodyLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Row(
                          children: const [
                            Text("Rp. "),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "91.000",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        trailing: SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 100,
                                child: Center(
                                  child: CustomNumberPicker(
                                    shape: const Border(
                                      top: BorderSide(color: iconColor),
                                      left: BorderSide(color: iconColor),
                                      right: BorderSide(color: iconColor),
                                      bottom: BorderSide(color: iconColor),
                                    ),
                                    initialValue: 1,
                                    maxValue: 50,
                                    minValue: 1,
                                    step: 1,
                                    onValue: (value) {
                                      print(value.toString());
                                    },
                                    valueTextStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: iconColor),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.close,
                                  color: iconColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: iconColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        leading: Hero(
                          tag: "3",
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.network(
                                'https://cdn-cas.orami.co.id/parenting/images/beda-baju-anak-beda-cara-pilih-.width-800.jpegquality-80.jpg'),
                          ),
                        ),
                        title: Text(
                          "Jacket Jeans",
                          style: Theme.of(context).textTheme.bodyLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Row(
                          children: const [
                            Text("Rp. "),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "180.500",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        trailing: SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 100,
                                child: Center(
                                  child: CustomNumberPicker(
                                    shape: const Border(
                                      top: BorderSide(color: iconColor),
                                      left: BorderSide(color: iconColor),
                                      right: BorderSide(color: iconColor),
                                      bottom: BorderSide(color: iconColor),
                                    ),
                                    initialValue: 1,
                                    maxValue: 50,
                                    minValue: 1,
                                    step: 1,
                                    onValue: (value) {
                                      print(value.toString());
                                    },
                                    valueTextStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: iconColor),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.close,
                                  color: iconColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: iconColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        leading: Hero(
                          tag: "4",
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.network(
                                'https://s3.bukalapak.com/img/3015084246/s-360-360/image.jpg'),
                          ),
                        ),
                        title: Text(
                          "Hoodie Offwhite",
                          style: Theme.of(context).textTheme.bodyLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Row(
                          children: const [
                            Text("Rp. "),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "110.800",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        trailing: SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 100,
                                child: Center(
                                  child: CustomNumberPicker(
                                    shape: const Border(
                                      top: BorderSide(color: iconColor),
                                      left: BorderSide(color: iconColor),
                                      right: BorderSide(color: iconColor),
                                      bottom: BorderSide(color: iconColor),
                                    ),
                                    initialValue: 1,
                                    maxValue: 50,
                                    minValue: 1,
                                    step: 1,
                                    onValue: (value) {
                                      print(value.toString());
                                    },
                                    valueTextStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: iconColor),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.close,
                                  color: iconColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: iconColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        leading: Hero(
                          tag: "5",
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.network(
                                'https://img.my-best.id/press_component/images/238bdeeca146502dbfcbcc5ea68a2ce7.jpg?ixlib=rails-4.2.0&q=70&lossless=0&w=690&fit=max  '),
                          ),
                        ),
                        title: Text(
                          "Short Panst",
                          style: Theme.of(context).textTheme.bodyLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Row(
                          children: const [
                            Text("Rp. "),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "78.500",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        trailing: SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 100,
                                child: Center(
                                  child: CustomNumberPicker(
                                    shape: const Border(
                                      top: BorderSide(color: iconColor),
                                      left: BorderSide(color: iconColor),
                                      right: BorderSide(color: iconColor),
                                      bottom: BorderSide(color: iconColor),
                                    ),
                                    initialValue: 1,
                                    maxValue: 50,
                                    minValue: 1,
                                    step: 1,
                                    onValue: (value) {
                                      print(value.toString());
                                    },
                                    valueTextStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: iconColor),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.close,
                                  color: iconColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: iconColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        leading: Hero(
                          tag: "6",
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.network(
                                'https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/9/22/890636f1-9eda-4540-86f3-74de806a47da.jpg '),
                          ),
                        ),
                        title: Text(
                          "Celana Kulot",
                          style: Theme.of(context).textTheme.bodyLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Row(
                          children: const [
                            Text("Rp. "),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "238.500",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        trailing: SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 100,
                                child: Center(
                                  child: CustomNumberPicker(
                                    shape: const Border(
                                      top: BorderSide(color: iconColor),
                                      left: BorderSide(color: iconColor),
                                      right: BorderSide(color: iconColor),
                                      bottom: BorderSide(color: iconColor),
                                    ),
                                    initialValue: 1,
                                    maxValue: 50,
                                    minValue: 1,
                                    step: 1,
                                    onValue: (value) {
                                      print(value.toString());
                                    },
                                    valueTextStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: iconColor),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.close,
                                  color: iconColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: iconColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        leading: Hero(
                          tag: "8",
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.network('https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//83/MTA-11332415/no_brand_celana_wanita_-_celana_bahan_-_full01_gcoq5dab.jpg'),
                          ),
                        ),
                        title: Text(
                          "No-Brand",
                          style: Theme.of(context).textTheme.bodyLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Row(
                          children: const [
                            Text("Rp. "),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "301.000",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        trailing: SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 100,
                                child: Center(
                                  child: CustomNumberPicker(
                                    shape: const Border(
                                      top: BorderSide(color: iconColor),
                                      left: BorderSide(color: iconColor),
                                      right: BorderSide(color: iconColor),
                                      bottom: BorderSide(color: iconColor),
                                    ),
                                    initialValue: 1,
                                    maxValue: 50,
                                    minValue: 1,
                                    step: 1,
                                    onValue: (value) {
                                      print(value.toString());
                                    },
                                    valueTextStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: iconColor),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.close,
                                  color: iconColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: iconColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        leading: Hero(
                          tag: "7",
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.network(
                                'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/6/2/d7df2298-ad7b-4562-bc3b-5b4032e353dd.jpg'),
                          ),
                        ),
                        title: Text(
                          "Ripped jeans h&m",
                          style: Theme.of(context).textTheme.bodyLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Row(
                          children: const [
                            Text("Rp. "),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "201.000",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        trailing: SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 100,
                                child: Center(
                                  child: CustomNumberPicker(
                                    shape: const Border(
                                      top: BorderSide(color: iconColor),
                                      left: BorderSide(color: iconColor),
                                      right: BorderSide(color: iconColor),
                                      bottom: BorderSide(color: iconColor),
                                    ),
                                    initialValue: 1,
                                    maxValue: 50,
                                    minValue: 1,
                                    step: 1,
                                    onValue: (value) {
                                      print(value.toString());
                                    },
                                    valueTextStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: iconColor),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.close,
                                  color: iconColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
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
                onPressed: () =>
                    Navigator.pushNamed(context, PilihPembayaran.routeName),
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
