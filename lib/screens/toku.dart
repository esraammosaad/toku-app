import 'package:flutter/material.dart';
import 'package:toku_app/screens/phrases_page.dart';
import '../../components/categories_comp.dart';
import 'color_page.dart';
import 'family_page.dart';
import 'numbers_page.dart';

class HomeTokuScreen extends StatelessWidget {
  const HomeTokuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Categories(
              color: Colors.orange,
              text: 'Numbers',
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NumberPage()));
              }),
          Categories(
              color: Colors.green,
              text: 'Family Members',
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FamilyPage()));
              }),
          Categories(color: Colors.purple, text: 'Colors', ontap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ColorsPage()));


          }),
          Categories(color: Colors.blue, text: 'Phrases', ontap: () {

            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  PhrasesPage()));
          }),
        ],
      ),
    );
  }
}
