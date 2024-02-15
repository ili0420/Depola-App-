import 'dart:ffi';

class DepoModel {
  String sahip;
  Int ucret;
  String depoTur;
  String aciklama;

  DepoModel({
    required this.sahip,
    required this.ucret,
    required this.depoTur,
    required this.aciklama,
  });

  // Firestore'dan veriyi çıkarmak için bir fabrika metodu
  factory DepoModel.fromMap(Map<String, dynamic> map) {
    return DepoModel(
      sahip: map['sahip'] ?? '',
      ucret: (map['ucret'] ?? 0.0).toInt(),
      depoTur: map['depoTur'] ?? '',
      aciklama: map['aciklama'] ?? '',
    );
  }

  // Veriyi Firestore'a eklerken kullanmak için bir metot
  Map<String, dynamic> toMap() {
    return {
      'sahip': sahip,
      'ucret': ucret,
      'depoTur': depoTur,
      'aciklama': aciklama,
    };
  }
}
