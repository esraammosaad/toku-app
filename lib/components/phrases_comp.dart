import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';
class PhrasesComp extends StatelessWidget {
  Item phrase;
  PhrasesComp({super.key, required this.phrase}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.blue,
      child: Row(

        children: [
          Container(
            width: 250,
            margin: EdgeInsets.all(8),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(phrase.jpWord,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                SizedBox(height: 10,),
                Text(phrase.enWord,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
              ],
            ),
          ),
          const Spacer(flex: 1,),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              player.play(AssetSource(phrase.audio));
            },
            icon: const Icon(Icons.play_arrow,color: Colors.white,size:
            28,),)

        ],
      ),
    );
  }
}
