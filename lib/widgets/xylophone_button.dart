import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
