import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {

  final String title;
  Xylophone({Key key, this.title}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {

  void playAudio(int soundNumber) {
    final audioPlayer = AudioCache();
    audioPlayer.play('xylophone$soundNumber.wav');
  }

  Expanded soundStrip(Color color, int soundNumber) {
    return Expanded(child:
      FlatButton(
        child: Container(),
        onPressed: (){
          playAudio(soundNumber);
        },
        color: color,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Column(
          children: <Widget>[
            soundStrip(Colors.red, 1),
            soundStrip(Colors.orange, 2),
            soundStrip(Colors.yellow, 3),
            soundStrip(Colors.green, 4),
            soundStrip(Colors.teal, 5),
            soundStrip(Colors.blue, 6),
            soundStrip(Colors.indigo, 7),
          ],
        ),
      ),
    );
  }
}