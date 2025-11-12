import 'package:flutter/material.dart';
import 'package:tokku_appp/Components/item.dart';
import 'package:tokku_appp/models/number.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  final List<Number> numbers = [
    Number(
      image: 'images/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'images/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'images/number_three.png',
      jpName: 'San',
      enName: 'three',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'images/number_four.png',
      jpName: 'ichi',
      enName: 'four',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'images/number_five.png',
      jpName: 'ichi',
      enName: 'five',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'images/number_six.png',
      jpName: 'ichi',
      enName: 'six',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'images/number_seven.png',
      jpName: 'ichi',
      enName: 'seven',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'images/number_eight.png',
      jpName: 'ichi',
      enName: 'eight',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'images/number_nine.png',
      jpName: 'ichi',
      enName: 'nine',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'images/number_ten.png',
      jpName: 'ichi',
      enName: 'ten',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num) {
          return Item(number: numbers[num]);
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
