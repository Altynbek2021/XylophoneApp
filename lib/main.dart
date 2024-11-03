import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child:
                      DifferenSounds(note: 'DO', num: 1, color: Colors.blue)),
              Expanded(
                  child:
                      DifferenSounds(note: "RE", num: 2, color: Colors.green)),
              Expanded(
                  child: DifferenSounds(note: "ME", num: 3, color: Colors.red)),
              Expanded(
                  child: DifferenSounds(
                      note: "FA", num: 4, color: Colors.yellowAccent)),
              Expanded(
                  child: DifferenSounds(
                      note: "SOL", num: 5, color: Colors.lightGreen)),
              Expanded(
                  child: DifferenSounds(
                      note: "LYA", num: 6, color: Colors.lightBlue)),
              Expanded(
                child: DifferenSounds(
                    note: "SI", num: 7, color: Colors.lightGreenAccent),
              ),
            ],
          ),
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
          style: TextButton.styleFrom(
              backgroundColor: color, minimumSize: Size(200, 50)),
          onPressed: () async {
            final player = AudioPlayer();
            await player.play(AssetSource('assets_note$num.wav'));
          },
          child: Text(note)),
    );
  }
}
