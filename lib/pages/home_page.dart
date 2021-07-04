import 'package:flutter/material.dart';
import 'package:xylophone_flutter/widgets/xylophone_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              XylophoneButton(soundNumber: 1, btnColor: Colors.red),
              XylophoneButton(soundNumber: 2, btnColor: Colors.orange),
              XylophoneButton(soundNumber: 3, btnColor: Colors.yellow),
              XylophoneButton(soundNumber: 4, btnColor: Colors.green),
              XylophoneButton(soundNumber: 5, btnColor: Colors.teal),
              XylophoneButton(soundNumber: 6, btnColor: Colors.blue),
              XylophoneButton(soundNumber: 7, btnColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
