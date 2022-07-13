import 'package:duka/utils/colors.dart';
import 'package:duka/utils/dimension.dart';
import 'package:duka/widgets/big_text.dart';
import 'package:duka/widgets/icon_text_widget.dart';
import 'package:duka/widgets/small_text.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: Dimensions.iconSize24,
                ),
              ),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            const SmallText(text: '4.5'),
            SizedBox(
              width: Dimensions.width10,
            ),
            const SmallText(text: '1287'),
            SizedBox(
              width: Dimensions.width10,
            ),
            const SmallText(text: 'comments'),
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              text: 'Normal',
              icon: Icons.circle_sharp,
              IconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              text: '1.7km',
              icon: Icons.location_on,
              IconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              text: '32mins',
              icon: Icons.access_time_filled_rounded,
              IconColor: AppColors.iconColor2,
            ),
          ],
        )
      ],
    );
  }
}
