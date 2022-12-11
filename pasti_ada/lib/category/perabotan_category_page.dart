// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, override_on_non_overriding_member

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pasti_ada/category/detailsPage/details_toko_page_perabotan.dart';
import 'package:pasti_ada/common/styles.dart';
import 'package:pasti_ada/data/models_local_toko_perabotan.dart';

class PerabotanCategoryPage extends StatelessWidget {
  const PerabotanCategoryPage({Key? key}) : super(key: key);

  @override
  Widget _buildListPerabotanItem(BuildContext context) {
    return FutureBuilder<String>(
      future: DefaultAssetBundle.of(context)
          .loadString('assets/json/local_toko_perabotan.json'),
      builder: (context, snapshot) {
        final List<Perabotan> perabotans = parseTokoPerabotan(snapshot.data);
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: perabotans.length,
          itemBuilder: (context, index) {
            return _cardPerabotanItem(context, perabotans[index]);
          },
        );
      },
    );
  }

  @override
  Widget _cardPerabotanItem(BuildContext context, Perabotan perabotan) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                DetailsTokoPerabotanPage.routeName,
                arguments: perabotan,
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    width: 100,
                    height: 100,
                    imageUrl: perabotan.gambarToko,
                    imageBuilder: (context, imageProvider) => Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    width: 300,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          perabotan.namaToko,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              overflow: TextOverflow.ellipsis),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, right: 10),
                          child: Row(
                            children: [
                              RatingBarIndicator(
                                rating: double.parse("4.5"),
                                itemCount: 5,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                itemSize: 24,
                              ),
                              Text('4.5')
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
                                  perabotan.alamatToko,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  DetailsTokoPerabotanPage.routeName,
                  arguments: perabotan,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  borderRadius: BorderRadius.circular(3),
                ),
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 2, bottom: 2),
                child: Text(
                  'Pilih Toko',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
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
                        color: iconColor,
                      ),
                    ),
                    Text(
                      'List Toko',
                      style: fontTitleLarge,
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
              onSubmitted: (query) {},
              decoration: InputDecoration(
                iconColor: iconColor,
                fillColor: iconColor,
                hintText: 'Cari toko disini',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.search,
            ),
            SizedBox(height: 16),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: BorderSide(color: iconColor)),
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
                  child: SingleChildScrollView(
                    child: _buildListPerabotanItem(context),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
