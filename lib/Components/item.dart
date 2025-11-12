import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokku_appp/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final Number number;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.brown.shade400,
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            color: Colors.red.shade200,
            child: Image.asset(number.image),
          ),
          Column(
            children: [
              Text(
                number.jpName,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                number.enName,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 16),
          //   child: Icon(Icons.play_arrow, color: Colors.white, size: 30),
          // ),
        ],
      ),
    );
  }
}


