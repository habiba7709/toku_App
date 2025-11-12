import 'package:flutter/material.dart';
import 'package:tokku_appp/Components/Category.dart';
import 'package:tokku_appp/Screens/Family_page.dart';
import 'package:tokku_appp/Screens/Numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade900,
        title: Text("Toku", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NumbersPage();
                  },
                ),
              );
            },
            text: 'Numbers',
            color: Colors.red.shade200,
          ),
          Category(
                        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return FamilyPage();
                  },
                ),
              );
            },
            
            text: 'FamilyMembers', color: Colors.pink.shade100),
          Category(text: 'Colors', color: Colors.purple.shade100),
          Category(text: 'FamilyMembers', color: Colors.grey.shade500),
        ],
      ),
    );
  }
}
