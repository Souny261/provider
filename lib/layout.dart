import 'package:flutter/material.dart';
import 'package:myweb/helper/provider/menu_provider.dart';
import 'package:myweb/main.dart';
import 'package:provider/provider.dart';

class MyLayout extends StatefulWidget {
  const MyLayout({Key key}) : super(key: key);

  @override
  _MyLayoutState createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  @override
  void initState() {
    final menuProvider = Provider.of<MenuProvider>(context, listen: false);
    menuProvider.addNumber();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final menuProvider = Provider.of<MenuProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("DATA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${menuProvider.num}"),
            Text("${menuProvider.str}"),
            Divider(),
            MaterialButton(
              color: Colors.green,
              onPressed: () {
                menuProvider.addNumber();
              },
              child: Text("Add"),
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: () {
                menuProvider.setStr(data: "test");
              },
              child: Text("SetStr"),
            )
          ],
        ),
      ),
    );
  }
}
