import 'package:duka/pages/home/food_page_body.dart';
import 'package:duka/utils/colors.dart';
import 'package:duka/utils/dimension.dart';
import 'package:duka/widgets/big_text.dart';
import 'package:duka/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width15),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: 'Nigeria', color: AppColors.mainColor),
                      Row(
                        children: [
                          const SmallText(
                            text: 'Abuja',
                          ),
                          Icon(Icons.arrow_drop_down_rounded,
                              size: Dimensions.iconSize24)
                        ],
                      ),
                    ],
                  ),
                  Container(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimensions.iconSize24,
                    ),
                    height: Dimensions.height45,
                    width: Dimensions.width45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor),
                  )
                ],
              ),
            ),
          ),
          // Showing the body
          const Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          )
        ],
      ),
    );
  }
}
