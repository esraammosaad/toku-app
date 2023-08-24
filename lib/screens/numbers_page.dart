import 'package:flutter/material.dart';
import '../../components/component.dart';
import '../../models/item_model.dart';

class NumberPage extends StatelessWidget {
  NumberPage({Key? key}) : super(key: key);
  List<Item> numbers = [
    Item(
      audio: 'sounds/nums/one.mp3',
      image: 'assets/images/numbers/number_one.png',
      enWord: 'one',
      jpWord: 'ichi',
    ), Item(
      audio: 'sounds/nums/two.mp3',
      image: 'assets/images/numbers/number_two.png',
      enWord: 'Two',
      jpWord: 'Ni',
    ), Item(
      audio: 'sounds/nums/three.mp3',
      image: 'assets/images/numbers/number_three.png',
      enWord: 'Three',
      jpWord: 'San',
    ), Item(
      audio: 'sounds/nums/four.mp3',
      image: 'assets/images/numbers/number_four.png',
      enWord: 'Four',
      jpWord: 'Shi',
    ), Item(
      audio: 'sounds/nums/five.mp3',
      image: 'assets/images/numbers/number_five.png',
      enWord: 'Five',
      jpWord: 'Go',
    ), Item(
      audio: 'sounds/nums/six.mp3',
      image: 'assets/images/numbers/number_six.png',
      enWord: 'Six',
      jpWord: 'Roku',
    ), Item(
      audio: 'sounds/nums/seven.mp3',
      image: 'assets/images/numbers/number_seven.png',
      enWord: 'Seven',
      jpWord: 'Sebun',
    ), Item(
      audio: 'sounds/nums/eight.mp3',
      image: 'assets/images/numbers/number_eight.png',
      enWord: 'Eight',
      jpWord: 'hachi',
    ), Item(
      audio: 'sounds/nums/nine.mp3',
      image: 'assets/images/numbers/number_nine.png',
      enWord: 'Nine',
      jpWord: 'Kyū',
    ), Item(
      audio: 'sounds/nums/ten.mp3',
      image: 'assets/images/numbers/number_ten.png',
      enWord: 'Ten',
      jpWord: 'Jū',
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body:ListView.builder(
          itemBuilder: (context,index)=> ItemComp(
            item: numbers[index],
            colorBg: Colors.orange,


          ),
          itemCount: numbers.length,



      ),
    );
  }
}
