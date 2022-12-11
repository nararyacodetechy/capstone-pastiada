import 'dart:convert';

class Kategori {
  Kategori({
    required this.perabotan,
    required this.bahanBangunan,
    required this.bahanMakanan,
    required this.fashion,
  });

  List<Toko>? perabotan;
  List<Toko>? bahanBangunan;
  List<Toko>? bahanMakanan;
  List<Toko>? fashion;

  factory Kategori.fromJson(Map<String, dynamic> json) => Kategori(
        // perabotan: json["perabotan"],
        // bahanBangunan: json["bahan_bangunan"],
        // bahanMakanan: json["bahan_makanan"],
        // fashion: json["fashion"],
        perabotan: json["perabotan"] == null ? null : List<Toko>.from(json["perabotan"].map((x) => Toko.fromJson(x))),
        bahanBangunan: json["bahan_bangunan"] == null ? null : List<Toko>.from(json["bahan_bangunan"].map((x) => Toko.fromJson(x))),
        bahanMakanan: json["bahan_makanan"] == null ? null : List<Toko>.from(json["bahan_makanan"].map((x) => Toko.fromJson(x))),
        fashion: json["fashion"] == null ? null : List<Toko>.from(json["fashion"].map((x) => Toko.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        // "perabotan": perabotan,
        // "bahan_bangunan": bahanBangunan,
        // "bahan_makanan": bahanMakanan,
        // "fashion": fashion,
        "perabotan": perabotan == null ? null : List<dynamic>.from(perabotan!.map((x) => x.toJson())),
        "bahan_bangunan": bahanBangunan == null ? null : List<dynamic>.from(bahanBangunan!.map((x) => x.toJson())),
        "bahan_makanan": bahanMakanan == null ? null : List<dynamic>.from(bahanMakanan!.map((x) => x.toJson())),
        "fashion": fashion == null ? null : List<dynamic>.from(fashion!.map((x) => x.toJson())),
      };
}

List<Kategori> parseKategori(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)["kategori"];
  return parsed.map((json) => Kategori.fromJson(json)).toList();
}

class Toko {
  Toko({
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

  factory Toko.fromJson(Map<String, dynamic> json) => Toko(
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

List<Toko> parseTokos(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)["kategori"];
  return parsed.map((json) => Toko.fromJson(json)).toList();
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
