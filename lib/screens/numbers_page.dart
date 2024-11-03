import 'package:flutter/material.dart';
import '../components/numbers_page_items.dart';
import '../models/number_models.dart';


class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number_content> numbers_content = const [
     Number_content(
        sound: 'assets/sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    Number_content(
        sound: 'assets/sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two'),
    Number_content( 
        sound: 'assets/sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three'),
    Number_content(
        sound: 'assets/sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four'),
    Number_content(
        sound: 'assets/sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five'),
    Number_content(
        sound: 'assets/sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roke',
        enName: 'six'),
    Number_content(
        sound: 'assets/sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'sebun',
        enName: 'seven'),
    Number_content(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    Number_content(
        sound: 'assets/sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'ku',
        enName: 'nine'),
    Number_content(
        sound: 'assets/sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'juu',
        enName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: Color(0xff3d83d5),
      ),
      
      body: ListView.builder(
        itemCount: numbers_content.length,
        itemBuilder: (context, index) {
            return NumbersPageItems(
              number_content: numbers_content[index]);
          }
        
      ),
    );
  }
}
