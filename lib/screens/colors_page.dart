import 'package:flutter/material.dart';

import '../components/numbers_page_items.dart';
import '../models/number_models.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<Number_content> numbers_content = const [
    Number_content(
        sound: 'assets/sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'black'),
    Number_content(
        sound: 'assets/sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    Number_content(
        sound: 'assets/sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'gray'),
    Number_content(
        sound: 'assets/sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    Number_content(
        sound: 'assets/sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    Number_content(
        sound: 'assets/sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'white'),
    Number_content(
        sound: 'assets/sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: Colors.blue,
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
