import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://1.bp.blogspot.com/-PcMkaJvdwOc/Xbmv9nkuBYI/AAAAAAAABOk/EADUd6rT4k4BzlfV36JfxyDjap_yWMqdwCLcBGAsYHQ/s1600/Rincian%2BModal%2BUsaha%2BMinimarket%2BMandiri%2B%2528Panduan%2BLengkap%2529%2B%25283%2529.jpg"), fit: BoxFit.cover)),
              ),
              Row(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: InkWell(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(100)),
                            child: Icon(
                              Icons.arrow_back,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              )
            ],
          ),
          Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Text(
                            "IJ Grosir",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.business_center,
                                  color: Colors.orange,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.fmd_good,
                        color: Colors.orange,
                      ),
                      Text("Sukawati Gianyar Gg.9.no.11")
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.only(
                              top: 3, bottom: 3, left: 7, right: 7),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              Text(
                                "Buka",
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                        Text("07:00 - 22:00 WITA")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Container(
                              child: Row(
                                children: [
                                  RatingBarIndicator(
                                    rating: 4.5,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star_rounded,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 18.0,
                                    direction: Axis.horizontal,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: Text("|",
                                          style: TextStyle(fontSize: 12))),
                                  Text("320 Ulasan",
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Deskripsi Toko",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Menjual barang kebutuhan untuk kebutuhan sehari - hari seperti bahan dapur, alat masak, perlengkapan mandi, minuman dan makanan cepat saji lainnya.",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
