import 'package:flutter/material.dart';
import 'author_card.dart';
import 'circle_image.dart';
import 'fooderlich_theme.dart';
import 'dart:math' as math;

class Card2 extends StatelessWidget {
  const Card2({Key? key} ) : super(key: key);


  final String name = 'Mike Katz';
  final String className = 'Smoothie Connoisseur';
  final String smoothies = 'Smoothies';
  final String recipe = 'Recipe';


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 850, height: 450),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage('assets/mag5.png'),
              fit: BoxFit.cover,
            )),
        child:Column(
          children: [
             AuthorCard(
                name: name,
                title: className,
                imageProvider: AssetImage('assets/author_katz.jpeg')
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                     
                    padding: EdgeInsets.only(bottom: 32.0),
                    child: RotatedBox(
                      quarterTurns:3,
                      child: Text(
                        '$smoothies',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                  Text(
                    '$recipe',
                    style: FooderlichTheme.lightTextTheme.headline1,
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}