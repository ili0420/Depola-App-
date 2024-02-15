import 'package:flutter/material.dart';

class IlanProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _ilanlar = [];

  List<Map<String, dynamic>> get ilanlar => _ilanlar;

  void setIlanlar(List<Map<String, dynamic>> yeniIlanlar) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _ilanlar = yeniIlanlar;
      notifyListeners();
    });
  }

  // Yeni metod, resim URL'sini depo kartlarına ekler
  String getDepoResmiURL(int index) {
    return _ilanlar[index]['deporesmi'] ?? '';
  }
}
