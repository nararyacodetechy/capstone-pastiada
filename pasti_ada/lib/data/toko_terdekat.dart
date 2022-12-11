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
    required this.status,
    required this.jamOperasional,
  });

  String id;
  String nama;
  String alamat;
  String deskripsi;
  String rating;
  String gambar;
  String status;
  String jamOperasional;

  factory TokoTerdekat.fromJson(Map<String, dynamic> json) => TokoTerdekat(
        id: json["id"],
        nama: json["nama"],
        alamat: json["alamat"],
        deskripsi: json["deskripsi"],
        rating: json["rating"],
        gambar: json["gambar"],
        status: json["status"],
        jamOperasional: json["jamOperasional"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "alamat": alamat,
        "deskripsi": deskripsi,
        "rating": rating,
        "gambar": gambar,
        "status": status,
        "jamOperasional": jamOperasional,
      };
}

List<TokoTerdekat> parseToko(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  return parsed.map((json) => TokoTerdekat.fromJson(json)).toList();
}
