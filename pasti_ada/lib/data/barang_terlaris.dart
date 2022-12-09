import 'dart:convert';

List<ListBarang> listBarangFromJson(String str) =>
    List<ListBarang>.from(json.decode(str).map((x) => ListBarang.fromJson(x)));

String listBarangToJson(List<ListBarang> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListBarang {
  ListBarang({
    required this.id,
    required this.nama,
    required this.harga,
    required this.merk,
    required this.gambar,
  });

  String id;
  String nama;
  String harga;
  String merk;
  String gambar;

  factory ListBarang.fromJson(Map<String, dynamic> json) => ListBarang(
        id: json["id"],
        nama: json["nama"],
        harga: json["harga"],
        merk: json["merk"],
        gambar: json["gambar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "harga": harga,
        "merk": merk,
        "gambar": gambar,
      };
}
