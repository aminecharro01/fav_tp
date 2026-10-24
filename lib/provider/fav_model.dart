import 'package:flutter/material.dart';

class FavModel with ChangeNotifier {
  bool _isFav = false;
  int _favCount = 41;

  bool get isFav => _isFav;
  int get favCount => _favCount;

  void toggleFav() {
    _isFav = !_isFav;
    _favCount += _isFav ? 1 : -1;
    notifyListeners();
  }
}