import 'package:flutter/material.dart';
import 'package:xylophone_flutter/pages/home_page.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter XylophoneApp',
      home: HomePage(),
    );
  }
}
