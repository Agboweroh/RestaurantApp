import 'package:duka/data/repository/recommended_product_repo.dart';
import 'package:duka/models/product_model.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;

  RecommendedProductController({required this.recommendedProductRepo});

  List<ProductModel> recommendedProductList = [];
  List<ProductModel> get popularProductList => recommendedProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      debugPrint('got recommended products ');
      recommendedProductList = [];
      recommendedProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      // print(_recommendedProductList);
      update();
    }
  }
}
