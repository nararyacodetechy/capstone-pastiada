import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shop/models/list_toko.dart';
import 'package:shop/common/exception.dart';
import 'dart:convert';

//create a getxcontroller
class ListTokoController extends GetxController {
  //create a list of string
  String link = "http://192.168.100.46:3000/api";
  ListTokoModel? listTokoModel;
  var connection = true.obs;
  var loading = true.obs;
  List<Data>? listToko = [];

  //create a function to fetch data from api
  fetchListToko(kategori) async {
    //create a http get request
    try {
      final response = await http.get(Uri.parse('${link}/toko/${kategori}'));

      //check if the response is successful
      if (response.statusCode == 200) {
        loading(false);
        //if successful, convert the response body to a list of string
        listTokoModel = ListTokoModel.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      connection(false);
      loading(true);
      print(e);
      //if not successful, throw an error
      // throw ServerException();
    }
  }

  searchListToko(kategori, search) async {
    //create a http get request
    loading(true);
    try {
      final response = await http
          .get(Uri.parse('${link}/searchToko/${kategori}?search=${search}'));

      //check if the response is successful
      if (response.statusCode == 200) {
        loading(false);
        //if successful, convert the response body to a list of string
        listTokoModel = ListTokoModel.fromJson(jsonDecode(response.body));
        // print(listTokoModel!.data[0].nama);
      }
    } catch (e) {
      loading(true);
      connection(false);
      //if not successful, throw an error
      // throw ServerException();
    }
  }
}
