import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final double height;
  const SmallText({
    Key? key,
    this.size = 12,
    this.height = 1.2,
    required this.text,
    this.color = const Color(0xFFccc7c5),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        height: height,
        fontFamily: 'Roboto',
      ),
    );
  }
}
