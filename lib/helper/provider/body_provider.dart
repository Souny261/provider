import 'package:flutter/material.dart';
import 'package:myweb/pages/HomePage.dart';

class BodyProvider with ChangeNotifier {
  int activeBody = 0;
  List<Widget> body = [
    HomePage(),
    Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: Text("2"),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: Text("3"),
    ),
  ];

  void changeIndex({int index}) {
    activeBody = index;
    notifyListeners();
  }
}
