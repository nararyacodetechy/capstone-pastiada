import 'dart:convert';

List<BarangTerlaris> barangTerlarisFromJson(String str) =>
    List<BarangTerlaris>.from(
        json.decode(str).map((x) => BarangTerlaris.fromJson(x)));

String barangTerlarisToJson(List<BarangTerlaris> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BarangTerlaris {
  BarangTerlaris({
    required this.id,
    required this.nama,
    required this.harga,
    required this.merk,
    required this.gambar,
  });

  String id;
  String nama;
  int harga;
  String merk;
  String gambar;

  factory BarangTerlaris.fromJson(Map<String, dynamic> json) => BarangTerlaris(
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

List<BarangTerlaris> parseBarang(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  return parsed.map((json) => BarangTerlaris.fromJson(json)).toList();
}
