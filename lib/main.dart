import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DifferenSounds(note: 'DO', num: 1, color: Colors.blue),
            DifferenSounds(note: "RE", num: 2, color: Colors.green),
            DifferenSounds(note: "ME", num: 3, color: Colors.red),
            DifferenSounds(note: "FA", num: 4, color: Colors.yellowAccent),
            DifferenSounds(note: "SOL", num: 5, color: Colors.lightGreen),
            DifferenSounds(note: "LYA", num: 6, color: Colors.lightBlue),
            DifferenSounds(note: "SI", num: 7, color: Colors.lightGreenAccent),
          ],
        ),
      ),
    ));
  }
}

class DifferenSounds extends StatelessWidget {
  const DifferenSounds({
    super.key,
    required this.num,
    required this.color,
    required this.note,
  });
  final int num;
  final Color color;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 10, right: 50),
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: () async {
            final player = AudioPlayer();
            await player.play(AssetSource('assets_note$num.wav'));
          },
          child: Text(note)),
    );
  }
}
