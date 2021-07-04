import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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

class XylophoneButton extends StatelessWidget {
  XylophoneButton({
    Key? key,
    required this.soundNumber,
    required this.btnColor,
  }) : super(key: key);

  final int soundNumber;
  final Color btnColor;

  // create audio player
  final player = AudioCache();

  void playSound(int number) {
    player.play('note$number.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: btnColor,
        ),
        child: Text(''),
      ),
    );
  }
}
