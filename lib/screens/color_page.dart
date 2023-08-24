import 'package:flutter/material.dart';
import '../../components/component.dart';
import '../../models/item_model.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({Key? key}) : super(key: key);
  List<Item> colors = [
    Item(
      audio: 'sounds/colors/black.wav',
      image: 'assets/images/colors/color_black.png',
      enWord: 'Black',
      jpWord: 'Kuro',
    ),
    Item(
      audio: 'sounds/colors/brown.wav',
      image: 'assets/images/colors/color_brown.png',
      enWord: 'Brown',
      jpWord: 'Chairo',
    ),
    Item(
      audio: 'sounds/colors/dusty_yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      enWord: 'Dusty Yellow',
      jpWord: 'Dasutiierō',
    ),
    Item(
      audio: 'sounds/colors/gray.wav',
      image: 'assets/images/colors/color_gray.png',
      enWord: 'Gray',
      jpWord: 'Gurē',
    ),
    Item(
      audio: 'sounds/colors/green.wav',
      image: 'assets/images/colors/color_green.png',
      enWord: 'Green',
      jpWord: 'Midori',
    ),
    Item(
      audio: 'sounds/colors/red.wav',
      image: 'assets/images/colors/color_red.png',
      enWord: 'Red',
      jpWord: 'Aka',
    ),
    Item(
      audio: 'sounds/colors/white.wav',
      image: 'assets/images/colors/color_white.png',
      enWord: 'White',
      jpWord: 'Shiro',
    ),
    Item(
      audio: 'sounds/colors/yellow.wav',
      image: 'assets/images/colors/yellow.png',
      enWord: 'Yellow',
      jpWord: 'Kiiro',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ItemComp(
          item: colors[index],
          colorBg: Colors.purple,
        ),
        itemCount: colors.length,
      ),
    );
  }
}
