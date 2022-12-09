import 'dart:convert';

List<TokoTerdekat> tokoTerdekatFromJson(String str) => List<TokoTerdekat>.from(
    json.decode(str).map((x) => TokoTerdekat.fromJson(x)));

String tokoTerdekatToJson(List<TokoTerdekat> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TokoTerdekat {
  TokoTerdekat({
    required this.id,
    required this.nama,
    required this.alamat,
    required this.deskripsi,
    required this.rating,
    required this.gambar,
  });

  String id;
  String nama;
  String alamat;
  String deskripsi;
  String rating;
  String gambar;

  factory TokoTerdekat.fromJson(Map<String, dynamic> json) => TokoTerdekat(
        id: json["id"],
        nama: json["nama"],
        alamat: json["alamat"],
        deskripsi: json["deskripsi"],
        rating: json["rating"],
        gambar: json["gambar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "alamat": alamat,
        "deskripsi": deskripsi,
        "rating": rating,
        "gambar": gambar,
      };
}

List<TokoTerdekat> parseToko(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  return parsed.map((json) => TokoTerdekat.fromJson(json)).toList();
}
