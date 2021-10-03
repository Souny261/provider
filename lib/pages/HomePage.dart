import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: TabBar(
          labelColor: Colors.black, // สีของข้อความปุ่มที่เลือก
          unselectedLabelColor: Colors.grey, // สีของข้อความปุ่มที่ไม่ได้เลือก
          tabs: <Tab>[
            Tab(
              child: Text("Tab1"),
            ),
            Tab(text: 'หน้า 2'),
            Tab(text: 'หน้า 3'),
          ],
          controller: controller,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Container(
            child: Text("Page1asa"),
          ),
          Container(
            child: Text("Page2"),
          ),
          Container(
            child: Text("Page3"),
          ),
        ],
        controller: controller,
      ),
    );
  }
}
