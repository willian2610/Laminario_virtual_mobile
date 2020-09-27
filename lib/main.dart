import 'package:flutter/material.dart';
import 'package:laminario_virtual_mobile/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Laminário Virtual - UFCSPA',
      home: HomePage(),
    );
  }
}

