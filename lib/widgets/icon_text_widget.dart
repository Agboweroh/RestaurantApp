import 'package:duka/utils/dimension.dart';
import 'package:duka/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.IconColor,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Color IconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: IconColor,
          size: Dimensions.iconSize24,
        ),
        const SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
        ),
      ],
    );
  }
}
