import 'package:flutter/material.dart';

import 'circle_image.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard(
      {Key? key,
        required this.name,
        required this.title,
        required this.imageProvider})
       : super(key: key);

  final String name;
  final String title;
  final ImageProvider imageProvider;

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool iconClicked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleImage(imageProvider: widget.imageProvider),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    widget.name,
                  style: FooderlichTheme.lightTextTheme.headline2,
                ),
                Text(
                    widget.title,
                  style: FooderlichTheme.lightTextTheme.headline3,
                ),
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(iconClicked?Icons.favorite:Icons.favorite_border),
          iconSize: 30,
          color: Colors.black,
          onPressed: () {
           iconClicked= !iconClicked;
           setState(() {
           });
           const snackBar = SnackBar(content: Text('favorite click'));
           ScaffoldMessenger.of(context).showSnackBar(snackBar);
            print(iconClicked);
          },
        ),
      ],
    );
  }
}