
import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget{
  const Card1({Key? key}) : super(key: key);

  final String category = 'Editor`s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        padding:const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 850, height:450),
        //color: Colors.amberAccent,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:const DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          )),
      child: Stack(
        children: [
              Text(
                category,
                style: FooderlichTheme.darkTextTheme.bodyText1,

              ),

          Positioned(
            top:20,
            child: Text(
              title,
              style: FooderlichTheme.darkTextTheme.headline2,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 20,
            child: Text(
              description,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Text(
              chef,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
          ),
          ],

      ),
      ),
    );
  }

}