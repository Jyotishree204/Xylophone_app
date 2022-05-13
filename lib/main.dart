import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(child: Text('Click Me'), onPressed: () {
              final player = AudioCache(prefix: 'assets/');
              player.play('note1.wav');
            },),
          ),
        ),
      ),
    );
  }
}
