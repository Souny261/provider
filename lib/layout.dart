import 'package:flutter/material.dart';
import 'package:myweb/helper/provider/body_provider.dart';
import 'package:myweb/helper/provider/menu_provider.dart';
import 'package:provider/provider.dart';

class MyLayout extends StatefulWidget {
  const MyLayout({Key key}) : super(key: key);

  @override
  _MyLayoutState createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  @override
  Widget build(BuildContext context) {
    final menuProvider = Provider.of<MenuProvider>(context);
    final bodyProvider = Provider.of<BodyProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Row(
        children: [
          Expanded(
              child: Container(
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: menuProvider.menuAdmin.map((e) {
                return InkWell(
                  onTap: () {
                    menuProvider.selected(data: e);
                    bodyProvider.changeIndex(index: e.action);
                  },
                  child: Card(
                      color: e.active ? Colors.green : Colors.red,
                      child: Container(
                          padding: EdgeInsets.all(8),
                          height: 50,
                          width: double.infinity,
                          child: Text(e.title))),
                );
              }).toList(),
            ),
          )),
          Expanded(flex: 5, child: bodyProvider.body[bodyProvider.activeBody]),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       // Text("${menuProvider.num}"),
      //       // Text("${menuProvider.str}"),
      //       Divider(),
      //       MaterialButton(
      //         color: Colors.green,
      //         onPressed: () {
      //           menuProvider.addNumber();
      //         },
      //         child: Text("Add"),
      //       ),
      //       MaterialButton(
      //         color: Colors.green,
      //         onPressed: () {
      //           menuProvider.setStr(data: "test");
      //         },
      //         child: Text("SetStr"),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
