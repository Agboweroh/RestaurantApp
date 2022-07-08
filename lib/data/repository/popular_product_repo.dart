import 'package:duka/data/api/api_client.dart';
import 'package:duka/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  ApiClient apiClient;

  PopularProductRepo({
    required this.apiClient,
  });
  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}