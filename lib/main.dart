import 'package:flutter/material.dart';
import 'routes/home-page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: new MyHomePage(),
  );
  }
}