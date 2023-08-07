import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  int idxNavBar = 0;

  void setIdx(int idx) {
    idxNavBar = idx;
    notifyListeners();
  }
}
