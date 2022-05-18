import 'package:flutter/material.dart';

class PoemFontSizeProvider with ChangeNotifier {
  double _value = 20;
  double get value => _value;

  void increment() {
    _value++;
    notifyListeners();
  }

  void decrement() {
    _value--;
    notifyListeners();
  }
}
