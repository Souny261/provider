import 'package:flutter/material.dart';

class MenuProvider with ChangeNotifier {
  int num = 0;
  String str;
  void addNumber() {
    num += 1;
    notifyListeners();
  }

  void setStr({String data}) {
    str = data;
    notifyListeners();
  }
}
