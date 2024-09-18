import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(const XylophoneApp());
}

// class XylophoneApp extends StatelessWidget {
//   const XylophoneApp({super.key});
//
//   void playSound(int soundNumber){
//     final player = AudioPlayer();
//     player.play(AssetSource('note$soundNumber.wav'));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//             children: [
//               TextButton(
//                 onPressed: () {},
//                 child: child),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(Color color, int soundNumber){
    return Expanded(
        flex: 1,
        child: ElevatedButton(
            onPressed: () {playSound(soundNumber);},
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // Đặt góc bo bằng 0
              ),
            ),
            child: null)
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.orange, 2),
                buildKey(Colors.yellow, 3),
                buildKey(Colors.green, 4),
                buildKey(Colors.teal, 5),
                buildKey(Colors.blue, 6),
                buildKey(Colors.purple, 7),
              ],
            )),
      ),
    );
  }
}