import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage(
      {Key? key, this.imageRadius = 30, required this.imageProvider})
      : super(key: key);

  final double imageRadius;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius:imageRadius,
      child: CircleAvatar(
          radius: imageRadius-4,
          foregroundImage: imageProvider,
      ),
    );
  }
}
