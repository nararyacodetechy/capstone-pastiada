import 'package:flutter/material.dart';

class PilihPembayaran extends StatefulWidget {
  const PilihPembayaran({Key? key}) : super(key: key);

  @override
  State<PilihPembayaran> createState() => _PilihPembayaranState();
}

class _PilihPembayaranState extends State<PilihPembayaran> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 50,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 3,
                  ),
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text("Total Membayar :"),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "Rp.30.000",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: InkWell(
                child: Container(
                  color: Colors.orange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Beli Sekarang",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          actions: [
            ElevatedButton(
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
          backgroundColor: Colors.white,
          title: const Text(
            "Pilih Metode Pembayaran",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
          automaticallyImplyLeading: false,
          leading: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.arrow_back,
                color: Colors.orange,
              )),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 229, 229, 229),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: TabBar(
                      onTap: (value) => {},
                      indicator: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5)),
                      labelColor: Colors.white,
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      unselectedLabelColor: Colors.orange,
                      tabs: const [
                        Tab(
                          height: 30,
                          text: 'Ambil Sendiri',
                        ),
                        Tab(
                          height: 30,
                          text: 'Dikirim',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: const [
                        Text(
                          "Ringkasan Pembayaran",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                                flex: 2,
                                child: Text("Subtotal Pesanan (3 items)")),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text("Rp.32.000"),
                              ],
                            ))
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Row(
                            children: [
                              const Expanded(
                                  flex: 2, child: Text("Diskon Promo Toko")),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text("Rp.2.000"),
                                ],
                              ))
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const Expanded(
                                flex: 2,
                                child: Text(
                                  "Total Pembayaran",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text("Rp.32.000",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Metode Pembayaran",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 5, top: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 229, 229, 229),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: TabBar(
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      onTap: (value) => {},
                      indicator: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5)),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.orange,
                      tabs: const [
                        Tab(
                          height: 30,
                          text: 'Dompet Digital',
                        ),
                        Tab(
                          height: 30,
                          text: 'Tunai',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 8),
                                height: 30,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/bu2qhcx0odh9ilabdeyu"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(5)),
                                width: 30,
                              ),
                              const Text(
                                "Dana",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 2),
                                child: const Text(
                                  "Saldo Anda:",
                                ),
                              ),
                              const Text(
                                "Rp.47.890",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text("Toko :"),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                SizedBox(
                                  width: 250,
                                  child: Text(
                                    "Jawely Store",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text("Alamat Toko :"),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                SizedBox(
                                  width: 250,
                                  child: Text(
                                    "Jalan Raya PKP No.24 Kelapa Dua Weton, Ciracas, Jakarta Timur",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text("Alamat Toko :"),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "SALIN",
                                      style: TextStyle(color: Colors.orange),
                                    )),
                                const Text(
                                  "GRS378427348D",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          "Promo",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8),
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            width: 30,
                            child: const Icon(
                              Icons.label,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Dana",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const Text(
                                "1 voucher otomatis terpasang, Anda hemat Rp.2.000!",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: const Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      backgroundColor: Colors.white,
                      elevation: 0,
                      side: const BorderSide(
                          width: 1, color: Color.fromARGB(255, 213, 213, 213)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    icon: const Icon(
                      Icons.chat,
                      color: Colors.orange,
                    ),
                    label: const Text("Hubungi Penjual"),
                  )),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        backgroundColor: Colors.white,
                        elevation: 0,
                        side: const BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 213, 213, 213)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      icon: const Icon(
                        Icons.list_alt_rounded,
                        color: Colors.orange,
                      ),
                      label: const Text("Ubah Pembelian"),
                    ),
                  ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Telur Ayam : "),
                      Text(
                        "3 Butir",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text("Mie Sedaap Soto : "),
                      Text(
                        "4 Bungkus",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text("Minyak Goreng : "),
                      Text(
                        "2 Botol",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
