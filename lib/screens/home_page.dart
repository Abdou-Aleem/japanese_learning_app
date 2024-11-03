import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toku_app_revision/screens/colors_page.dart';
import '../screens/family_memebers_page.dart';
import '../screens/numbers_page.dart';
import '../components/home_page_layers_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 214, 204, 231),
          title: const Text('learning japanese')),
      body: Column(
        children: [

          
          homePageLayers(
            onTap: () { Navigator.push(context, 
            MaterialPageRoute(builder: (context) {
                return NumbersPage();}));},
            text: 'Numbers',
            color: Color(0xff3d83d5),
          ),


          homePageLayers(
            onTap: () { Navigator.push(context, 
            MaterialPageRoute(builder: (context) {
                return FamilyMemebersPage();}));},
            text: 'FamilyMembers',
            color: Color.fromARGB(255, 133, 224, 80),
          ),


          homePageLayers(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            text: 'Colors',
            color: Color.fromARGB(255, 196, 173, 210),
          ),


          // homePageLayers(
          //   text: 'Phrases',
          //   color: Color(0xff50ADC7),
          // ),


        ],
      ),
    );
  }
}
