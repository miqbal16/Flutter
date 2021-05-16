import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/services.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void buttonSound(int numberSound) {
    final player = AudioCache();
    player.play('sounds/note$numberSound.wav');
  }

  Expanded buttonBar({int sound}) => Expanded(
        child: Container(
          margin: const EdgeInsets.only(
              top: 8.0, bottom: 8.0, left: 5.0, right: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage('assets/images/bar.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: TextButton(
            onPressed: () {
              buttonSound(sound);
            },
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 189, 89, 1.0),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgApp.jpg'),
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buttonBar(sound: 1),
                buttonBar(sound: 2),
                buttonBar(sound: 3),
                buttonBar(sound: 4),
                buttonBar(sound: 5),
                buttonBar(sound: 6),
                buttonBar(sound: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
