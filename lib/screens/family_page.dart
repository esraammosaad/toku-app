
import 'package:flutter/material.dart';
import '../../components/component.dart';


import '../../models/item_model.dart';

class FamilyPage extends StatelessWidget {
  FamilyPage({Key? key}) : super(key: key);
  List<Item> members = [
    Item(
      audio: 'sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      enWord: 'Mother',
      jpWord: 'Hahaoya',
    ),
    Item(
      audio: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      enWord: 'Father',
      jpWord: 'Chichioya',
    ),
    Item(
      audio: 'sounds/family_members/grand_mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      enWord: 'Grand Mother',
      jpWord: 'Sobo',
    ),
    Item(
      audio: 'sounds/family_members/grand_father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      enWord: 'Grand Father',
      jpWord: 'Ojīsan',
    ),
    Item(
      audio: 'sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      enWord: 'Daughter',
      jpWord: 'Musume',
    ),
    Item(
      audio: 'sounds/family_members/older_bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      enWord: 'Older Brother',
      jpWord: 'Nisan',
    ),
    Item(
      audio: 'sounds/family_members/older_sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      enWord: 'Older Sister',
      jpWord: 'Ane',
    ),
    Item(
      audio: 'sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      enWord: 'Son',
      jpWord: 'Musuko',
    ),
    Item(
      audio: 'sounds/family_members/younger_brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      enWord: 'Younger Brother',
      jpWord: 'Otōto',
    ),
    Item(
      audio: 'sounds/family_members/younger_sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      enWord: 'Younger Sister',
      jpWord: 'Imōto',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ItemComp(
          item: members[index],
          colorBg: Colors.green,
        ),
        itemCount: members.length,
      ),
    );
  }
}
