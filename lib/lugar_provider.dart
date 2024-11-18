import 'package:flutter/material.dart';
import 'package:f05_lugares_app/model/lugar.dart';

class LugarProvider with ChangeNotifier {
  List<Lugar> _lugaresFavoritos = [];

  List<Lugar> get lugaresFavoritos => _lugaresFavoritos;

  void toggleFavorito(Lugar lugar) {
    if (_lugaresFavoritos.contains(lugar)) {
      _lugaresFavoritos.remove(lugar);
    } else {
      _lugaresFavoritos.add(lugar);
    }
    notifyListeners();
  }
}
