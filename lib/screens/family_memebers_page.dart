import 'package:flutter/material.dart';
import '../components/home_page_layers_items.dart';
import '../components/numbers_page_items.dart';
import '../models/number_models.dart';

class FamilyMemebersPage extends StatelessWidget {
  const FamilyMemebersPage({super.key});

  final List<Number_content> numbers_content = const [
     Number_content(
        sound: 'assets/sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    Number_content(
        sound: 'assets/sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    Number_content( 
        sound: 'assets/sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'grandfather'),
    Number_content(
        sound: 'assets/sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grandmother'),
    Number_content(
        sound: 'assets/sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    Number_content(
        sound: 'assets/sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nīsan',
        enName: 'older brother'),
    Number_content(
        sound: 'assets/sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'oldeer sister'),
    Number_content(
        sound: 'assets/sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    Number_content(
        sound: 'assets/sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother'),
    Number_content(
        sound: 'assets/sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger sister'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FamilyMembers'),
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
