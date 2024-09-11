import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(const PianoKidApp());
}

class PianoKidApp extends StatelessWidget {
  const PianoKidApp({super.key});
  static AudioPlayer player = AudioPlayer();

  void playAudio(String fileName){
    player.play(AssetSource(fileName));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PianoButton(onKeyPress: () {},),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {},
              onSuperKeyPress: () {},
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {},
              onSuperKeyPress: () {},
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {},
              onSuperKeyPress: () {},
            ),
            PianoButton(onKeyPress: () {},),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {},
              onSuperKeyPress: () {},
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {},
              onSuperKeyPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class PianoButtonWithSuperKey extends StatelessWidget {
  final Function onMainKeyPress;
  final Function onSuperKeyPress;
  const PianoButtonWithSuperKey({
    super.key, required this.onMainKeyPress, required this.onSuperKeyPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Stack(//Các widget con trong Stack sẽ được xếp chồng lên nhau theo thứ tự
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 2.0, top: 2.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: ElevatedButton(
                    onPressed: () {onMainKeyPress;},
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // Đặt góc bo bằng 0
                      ),
                    ),
                    child: null),
              ),
            ),
            Positioned(//được sd bên trong một widget Stack để xác định vị trí chính xác của một widget con
              top: -25.0,
              child: Container(
                width: 250.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {onSuperKeyPress;},
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // Đặt góc bo bằng 0
                      ),
                      backgroundColor: Colors.black
                  ),
                  child: null,
                ),
              ),
            ),
          ],
        )
    );
  }
}

class PianoButton extends StatelessWidget {
  final Function onKeyPress;
  const PianoButton({super.key, required this.onKeyPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0, bottom: 2.0, top: 2.0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: ElevatedButton(
                onPressed: () {onKeyPress;},
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Đặt góc bo bằng 0
                  ),
                ),
                child: null),
          ),
        )
    );
  }
}

