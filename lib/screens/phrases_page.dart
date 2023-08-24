import 'package:flutter/material.dart';
import '../../components/phrases_comp.dart';
import '../../models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({Key? key}) : super(key: key);
  List<Item> phrases = [
    Item(
      audio: 'sounds/phrases/are_you_coming.wav',
      enWord: 'Are you coming?',
      jpWord: 'Kimasu ka?',
    ), Item(
      audio: 'sounds/phrases/dont_forget_to_subscribe.wav',
      enWord: "Don't forget to subscribe",
      jpWord: 'Kōdoku suru koto o wasurenaide kudasai',
    ), Item(
      audio: 'sounds/phrases/how_are_you_feeling.wav',
      enWord: 'How are you feeling',
      jpWord: 'Go kibun wa ikagadesu ka',
    ), Item(
      audio: 'sounds/phrases/i_love_anime.wav',
      enWord: 'I love anime',
      jpWord: 'Watashi wa anime ga daisukidesu',
    ), Item(
      audio: 'sounds/phrases/i_love_programming.wav',
      enWord: 'I love programming',
      jpWord: 'Puroguramingu ga daisukidesu',
    ), Item(
      audio: 'sounds/phrases/programming_is_easy.wav',
      enWord: 'Programming is easy',
      jpWord: 'Puroguramingu wa kantandesu',
    ), Item(
      audio: 'sounds/phrases/what_is_your_name.wav',
      enWord: 'What is your name?',
      jpWord: 'Namae wa nandesu ka?',
    ), Item(
      audio: 'sounds/phrases/where_are_you_going.wav',
      enWord: 'Where are you going?',
      jpWord: 'Doko ni iku no?',
    ), Item(
      audio: 'sounds/phrases/yes_im_coming.wav',
      enWord: "Yes i'm coming",
      jpWord: 'Hai, ikimasu',
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body:ListView.builder(
        itemBuilder: (context,index)=> PhrasesComp(
          phrase: phrases[index],


        ),
        itemCount: phrases.length,



      ),
    );
  }
}
