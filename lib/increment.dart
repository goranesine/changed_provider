import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Increment extends ChangeNotifier {
  int value = 0;

  void increment() {
    value += 1;
    notifyListeners();
  }
}