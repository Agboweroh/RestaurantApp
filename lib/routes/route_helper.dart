import 'package:duka/pages/food/popular_food_details.dart';
import 'package:duka/pages/food/recommended_food_detail.dart';
import 'package:duka/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initialRoute = '/';
  static String getInitial() => '/';
  static const String popularFood = '/popular-food';
  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static const String recommendedFood = '/recommended-food';
  static String getRecommendedFood(int pageId) =>
      '$recommendedFood?pageId=$pageId';

  static List<GetPage> routes = [
    GetPage(
        name: initialRoute,
        page: () {
          return const MainFoodPage();
        }),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];

          return PopularFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];

          return RecommendedFoodDetail(
            pageId: int.parse(pageId!),
          );
        },
        transition: Transition.fadeIn),
  ];
}
