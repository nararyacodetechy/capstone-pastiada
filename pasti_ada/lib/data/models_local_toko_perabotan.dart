import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.perabotan,
  });

  List<Perabotan> perabotan;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        perabotan: List<Perabotan>.from(
            json["perabotan"].map((x) => Perabotan.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "perabotan": List<dynamic>.from(perabotan.map((x) => x.toJson())),
      };
}

class Perabotan {
  String idToko;
  String namaToko;
  String gambarToko;
  String alamatToko;
  String descriptionToko;
  String ratingToko;
  List<Barang> barang;

  Perabotan({
    required this.idToko,
    required this.namaToko,
    required this.gambarToko,
    required this.alamatToko,
    required this.descriptionToko,
    required this.ratingToko,
    required this.barang,
  });

  factory Perabotan.fromJson(Map<String, dynamic> json) => Perabotan(
        idToko: json["id_toko"],
        namaToko: json["nama_toko"],
        gambarToko: json["gambar_toko"],
        alamatToko: json["alamat_toko"],
        descriptionToko: json["description_toko"],
        ratingToko: json["rating_toko"],
        barang:
            List<Barang>.from(json["barang"].map((x) => Barang.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id_toko": idToko,
        "nama_toko": namaToko,
        "gambar_toko": gambarToko,
        "alamat_toko": alamatToko,
        "description_toko": descriptionToko,
        "rating_toko": ratingToko,
        "barang": List<dynamic>.from(barang.map((x) => x.toJson())),
      };
}

List<Perabotan> parseTokoPerabotan(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)["perabotan"];
  return parsed.map((json) => Perabotan.fromJson(json)).toList();
}

class Barang {
  Barang({
    required this.idBarang,
    required this.namaBarang,
    required this.gambarBarang,
    required this.hargaBarang,
    required this.merekBarang,
  });

  String idBarang;
  String namaBarang;
  String gambarBarang;
  int hargaBarang;
  String merekBarang;

  factory Barang.fromJson(Map<String, dynamic> json) => Barang(
        idBarang: json["id_barang"],
        namaBarang: json["nama_barang"],
        gambarBarang: json["gambar_barang"],
        hargaBarang: json["harga_barang"],
        merekBarang: json["merek_barang"],
      );

  Map<String, dynamic> toJson() => {
        "id_barang": idBarang,
        "nama_barang": namaBarang,
        "gambar_barang": gambarBarang,
        "harga_barang": hargaBarang,
        "merek_barang": merekBarang,
      };
}
