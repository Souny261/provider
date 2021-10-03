import 'package:flutter/material.dart';
import 'package:myweb/models/menu_model.dart';

class MenuProvider with ChangeNotifier {
  List<MenuModel> menuAdmin = [
    MenuModel(title: "item1", active: true, action: 0),
    MenuModel(title: "item2", active: false, action: 1),
    MenuModel(title: "item3", active: false, action: 2)
  ];
  List<MenuModel> menuUser = [
    MenuModel(title: "item4", active: true),
    MenuModel(title: "item5", active: false),
    MenuModel(title: "item6", active: false)
  ];
  List<MenuModel> menuManager = [
    MenuModel(title: "item7", active: true),
    MenuModel(title: "item8", active: false)
  ];

  void selected({MenuModel data}) {
    MenuModel model =
        MenuModel(title: data.title, action: data.action, active: true);
    resetSeleteActive().whenComplete(() =>
        menuAdmin[menuAdmin.indexWhere((e) => e.title == data.title)] = model);
    notifyListeners();
  }

  Future resetSeleteActive() async {
    menuAdmin.where((element) => element.active == true).forEach((element) {
      MenuModel model = MenuModel(
          title: element.title, action: element.action, active: false);
      menuAdmin[menuAdmin.indexWhere((e) => e.title == element.title)] = model;
    });
  }
}
