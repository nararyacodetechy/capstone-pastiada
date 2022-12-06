import 'package:flutter/material.dart';
import 'package:shop/pages/list_toko.dart';

//create home statefull
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

//create home state
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), //width and height
          // The size the AppBar would prefer if there were no other constraints.
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 50,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'PASTI',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 2),
                      ),
                      Text(
                        'ADA',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 85, 0, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.message),
                        color: Colors.orange,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.person_rounded),
                          color: Colors.orange),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: 0,
                    child: Image.asset(
                      'assets/background.png',
                      width: MediaQuery.of(context).size.width,
                    )),
                Positioned(
                  top: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 10),
                    height: 35,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.orange,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('cari barang atau toko disini ...',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                          ),
                        ]),
                  ),
                ),
                Positioned(
                  top: 180,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 10),
                    height: 150,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: menus(),
                    ),
                  ),
                )
              ],
            )));
  }

  Row menus() {
    return Row(
        //create menus
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListToko(id: 1);
              }));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8)),
                  child: Image.asset(
                    'assets/kuliner.png',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text('Kuliner',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListToko(id: 2);
              }));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8)),
                  child: Image.asset(
                    'assets/perabotan.png',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text('Perabotan',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListToko(id: 3);
              }));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8)),
                  child: Image.asset(
                    'assets/bahanmakan.png',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text('Bahan Makan',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListToko(id: 4);
              }));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8)),
                  child: Image.asset(
                    'assets/fashion.png',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text('Fashion',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                )
              ],
            ),
          ),
        ]);
  }
}
