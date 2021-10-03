import 'package:flutter/material.dart';
import 'package:myweb/helper/provider/body_provider.dart';
import 'package:myweb/helper/provider/menu_provider.dart';
import 'package:provider/provider.dart';

import 'layout.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MenuProvider>(create: (_) => MenuProvider()),
        ChangeNotifierProvider<BodyProvider>(create: (_) => BodyProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyLayout(),
    );
  }
}
