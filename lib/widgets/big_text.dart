import 'package:duka/utils/dimension.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final double size;
  final TextOverflow overFlow;
  final String text;
  final Color color;
  const BigText({
    Key? key,
    this.size = 0,
    this.overFlow = TextOverflow.ellipsis,
    required this.text,
    this.color = const Color(0xFF332d2b),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
          color: color,
          fontSize: size == 0 ? Dimensions.font20 : size,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto'),
    );
  }
}
