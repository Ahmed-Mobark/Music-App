import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.mp3');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.orange,soundNumber: 1),
              buildKey(color: Colors.red,soundNumber: 2),
              buildKey(color: Colors.blue,soundNumber: 3),
              buildKey(color: Colors.pink,soundNumber: 4),
              buildKey(color: Colors.green,soundNumber: 5),
              buildKey(color: Colors.amber,soundNumber: 6),
              buildKey(color: Colors.white,soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
