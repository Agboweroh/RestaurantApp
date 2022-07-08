import 'package:duka/controllers/cart_controller.dart';
import 'package:duka/controllers/popular_product_controller.dart';
import 'package:duka/controllers/recommended_product_controller.dart';
import 'package:duka/data/api/api_client.dart';
import 'package:duka/data/repository/cart_repo.dart';
import 'package:duka/data/repository/popular_product_repo.dart';
import 'package:duka/data/repository/recommended_product_repo.dart';
import 'package:duka/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // Load dependencies(API client)
  Get.lazyPut(
    (() => ApiClient(appBaseUrl: AppConstants.BASE_URL)),
  );
  // Repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());

  // Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
