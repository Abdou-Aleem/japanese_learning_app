import 'package:flutter/material.dart';
import '../models/number_models.dart';
import 'package:audioplayers/audioplayers.dart';


class NumbersPageItems extends StatelessWidget {
  const NumbersPageItems({
    required this.number_content,
  });

  final Number_content number_content;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        // color: color,
        child: Container(
          margin: const EdgeInsets.only(bottom: 6.0),
          color: Colors.lightBlueAccent,
          child: Row(
            children: [
              Container(
                // color:  Color(0xffFFF6DC),
                child: Image.asset(number_content.image),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      number_content.enName,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      number_content.jpName,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: IconButton(
                    onPressed: () async {
                      AudioCache.instance = AudioCache(prefix: '');
                      final player = AudioPlayer();
                      await player.play(AssetSource(number_content.sound));
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 30,
                      color: Colors.black,
                    )),
              )
            ],
          ),
        ));
  }
}
