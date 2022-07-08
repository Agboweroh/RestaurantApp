import 'package:get/get.dart';

class Dimensions {
  // To get the factor ratio or parameter simply divide device height or width by Widget Width or height. Same for padding, margin etc
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;
  // Dynamic height padding & margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 42.4;
  static double height20 = screenHeight / 56.7;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  // Dynamic width
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 42.4;
  static double width20 = screenHeight / 56.7;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.76;
// font Size
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;

  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;
  //  Dynamic Iconsize
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  // Dynamic ListView size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;
  // Popular food
  static double popularFoodImage = screenHeight / 2.41;
  // Bottom appBar Height
  static double bottomBarHeight = screenHeight / 7.03;
}
