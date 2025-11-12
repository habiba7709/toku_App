import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokku_appp/models/family.dart';

class FamilyItem extends StatelessWidget {
  const FamilyItem({super.key, required this.family});
  final Family family;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.orange.shade200,
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            color: Colors.red.shade200,
            child: Image.asset(family.image),
          ),
          Column(
            children: [
              Text(family.jpName, style: TextStyle(color: Colors.white, fontSize: 18)),
              Text(family.enName, style: TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(family.sound));
            },
            icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
