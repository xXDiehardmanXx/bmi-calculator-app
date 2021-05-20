import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(XyloPhone());
}

class XyloPhone extends StatelessWidget {
  int noteNumber = 1;
  void playSound(noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildPanel({Color color, int soundNumber}){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              buildPanel(color : Colors.yellow, soundNumber: 1);
              buildPanel(color : Colors.red, soundNumber: 2);
            ],
          ),
        ),
      ),
    );
  }
}
