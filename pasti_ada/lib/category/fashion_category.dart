import 'package:flutter/material.dart';

class FashionCategoryPage extends StatelessWidget {
  const FashionCategoryPage({super.key});

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
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'List Toko',
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
              onSubmitted: (query) {},
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
            Expanded(
              child: Card(
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
