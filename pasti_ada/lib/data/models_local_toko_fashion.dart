import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        required this.fashion,
    });

    List<Fashion> fashion;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        fashion: List<Fashion>.from(json["fashion"].map((x) => Fashion.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "fashion": List<dynamic>.from(fashion.map((x) => x.toJson())),
    };
}

class Fashion {
    Fashion({
        required this.idToko,
        required this.namaToko,
        required this.gambarToko,
        required this.alamatToko,
        required this.descriptionToko,
        required this.ratingToko,
        required this.barang,
    });

    String idToko;
    String namaToko;
    String gambarToko;
    String alamatToko;
    String descriptionToko;
    String ratingToko;
    List<Barang> barang;

    factory Fashion.fromJson(Map<String, dynamic> json) => Fashion(
        idToko: json["id_toko"],
        namaToko: json["nama_toko"],
        gambarToko: json["gambar_toko"],
        alamatToko: json["alamat_toko"],
        descriptionToko: json["description_toko"],
        ratingToko: json["rating_toko"],
        barang: List<Barang>.from(json["barang"].map((x) => Barang.fromJson(x))),
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

List<Fashion> parseTokoFashion(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)["fashion"];
  return parsed.map((json) => Fashion.fromJson(json)).toList();
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
