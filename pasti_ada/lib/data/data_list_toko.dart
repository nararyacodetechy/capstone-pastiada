import 'dart:convert';

class ListTokoModel {
  ListTokoModel({required this.count, required this.data});

  final List<Data> data;
  final int count;

  factory ListTokoModel.fromJson(Map<String, dynamic> json) {
    return ListTokoModel(
      count: json['message']['count'],
      data:
          List<Data>.from(json['message']["data"].map((x) => Data.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "count": count,
        "data": data,
      };
}

class Data {
  String id_toko;
  String nama_toko;
  String rating_toko;
  String alamat_toko;
  String gambar_toko;

  Data(
      {required this.id_toko,
      required this.nama_toko,
      required this.rating_toko,
      required this.alamat_toko,
      required this.gambar_toko});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id_toko: json['id_toko'],
      nama_toko: json['nama_toko'],
      rating_toko: json['rating_toko'],
      alamat_toko: json['alamat_toko'],
      gambar_toko: json['gambar_toko'],
    );
  }
  Map<String, dynamic> toJson() => {
        "id": id_toko,
        "nama": nama_toko,
        "rating": rating_toko,
        "alamat": alamat_toko,
        "foto": gambar_toko,
      };
}
