import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop/common/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pasti_ada/data/data_list_toko.dart;
import 'package:get/get.dart';

//create statefull widget listToko
class ListToko extends StatefulWidget {
  ListToko ({Key? key}) : super(key: key);
  @override
  State<ListToko> createState() => _ListTokoState();
}

class _ListTokoState extends State<ListTokoState> {
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
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'List Toko ${kategori[widget.id - 1]}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                onSubmitted: (query) {
                  // setState(() {
                  // Get.delete<ListTokoController>();
                  listTokoController.searchListToko(widget.id, query);
                  // });
                },
                decoration: InputDecoration(
                  iconColor: Colors.orange,
                  fillColor: Colors.orange,
                  hintText: 'Cari toko disini',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.search,
              ),
              SizedBox(height: 16),
              Obx(
                () => listTokoController.loading.value
                    ? Center(child: CircularProgressIndicator())
                    : Expanded(
                        child: ListView.builder(
                          itemCount: listTokoController.listTokoModel!.count,
                          itemBuilder: (context, index) {
                            List<String> pic = [
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                              'https://static.vecteezy.com/packs/media/vectors/term-bg-1-666de2d9.jpg',
                              'https://images.ctfassets.net/hrltx12pl8hq/a2hkMAaruSQ8haQZ4rBL9/8ff4a6f289b9ca3f4e6474f29793a74a/nature-image-for-website.jpg?fit=fill&w=480&h=320',
                              'https://images.ctfassets.net/hrltx12pl8hq/a2hkMAaruSQ8haQZ4rBL9/8ff4a6f289b9ca3f4e6474f29793a74a/nature-image-for-website.jpg?fit=fill&w=480&h=320',
                              'https://static.vecteezy.com/packs/media/vectors/term-bg-1-666de2d9.jpg'
                            ];
                            return Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    side: BorderSide(color: Colors.orange)),
                                child: Container(
                                    margin: const EdgeInsets.only(
                                      bottom: 8,
                                      right: 8,
                                    ),
                                    padding: EdgeInsets.only(
                                      top: 15,
                                      bottom: 0,
                                      left: 15,
                                      right: 5,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: CachedNetworkImage(
                                                  width: 100,
                                                  height: 100,
                                                  imageUrl:
                                                      '$BASE_IMAGE_URL${listTokoController.listTokoModel!.data[index].foto}',
                                                  imageBuilder: (context,
                                                          imageProvider) =>
                                                      Container(
                                                    height: 100,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5)),
                                                      image: DecorationImage(
                                                        image: imageProvider,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  placeholder: (context, url) =>
                                                      Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  ),
                                                  errorWidget:
                                                      (context, url, error) =>
                                                          Icon(Icons.error),
                                                )),
                                            Expanded(
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 20),
                                                alignment: Alignment.topLeft,
                                                width: 300,
                                                height: 100,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      listTokoController
                                                          .listTokoModel!
                                                          .data[index]
                                                          .nama,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    ),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 5, right: 10),
                                                      child: Row(
                                                        children: [
                                                          RatingBarIndicator(
                                                            rating: double.parse(
                                                                "${listTokoController.listTokoModel!.data[index].rating}"),
                                                            itemCount: 5,
                                                            itemBuilder:
                                                                (context,
                                                                        index) =>
                                                                    Icon(
                                                              Icons.star,
                                                              color:
                                                                  kMikadoYellow,
                                                            ),
                                                            itemSize: 24,
                                                          ),
                                                          Text(
                                                              '${listTokoController.listTokoModel!.data[index].rating}')
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.location_on,
                                                            color: Colors.red,
                                                            size: 15,
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              listTokoController
                                                                  .listTokoModel!
                                                                  .data[index]
                                                                  .alamat,
                                                              maxLines: 2,
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 16),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.red.shade400,
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                              padding: EdgeInsets.only(
                                                  left: 30,
                                                  right: 30,
                                                  top: 2,
                                                  bottom: 2),
                                              child: Text(
                                                'Pilih Toko',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )));
                          },
                        ),
                      ),
              )
            ],
          ),
        ));
  }
}
}
