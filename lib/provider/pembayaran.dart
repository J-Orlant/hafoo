import 'package:flutter/cupertino.dart';

class Pembayaran with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set changeIndex(value) {
    _currentIndex = value;
    notifyListeners();
  }
}
