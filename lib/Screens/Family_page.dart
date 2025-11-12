import 'package:flutter/material.dart';
import 'package:tokku_appp/Components/familt_item.dart';
import 'package:tokku_appp/Components/item.dart';

import 'package:tokku_appp/models/family.dart';

class FamilyPage extends StatelessWidget {
  FamilyPage({super.key});
  final List<Family> familyy = [
    Family(
      image: 'images/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Family(
      image: 'images/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Family Member', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: familyy.length,
        itemBuilder: (context, num) {
          return FamilyItem(family: familyy[num]);
        },
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Item> itemList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemList.add(Item(number: numbers[i]));
  //   }
  //   return itemList;
  // }
}
