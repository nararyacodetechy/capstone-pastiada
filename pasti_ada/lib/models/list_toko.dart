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
  String id;
  String nama;
  String rating;
  String alamat;
  String foto;

  Data(
      {required this.id,
      required this.nama,
      required this.rating,
      required this.alamat,
      required this.foto});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      nama: json['nama'],
      rating: json['rating'],
      alamat: json['alamat'],
      foto: json['foto'],
    );
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "rating": rating,
        "alamat": alamat,
        "foto": foto,
      };
}
