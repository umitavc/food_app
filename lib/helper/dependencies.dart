import 'package:food_app/data/api/api_client.dart';
import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:food_app/utils/app_constants.dart';
import 'package:get/get.dart';

import '../controllers/popular_product_controller.dart';
import '../controllers/recommended_product_controller.dart';
import '../data/repository/recommended_product_repo.dart';


Future<void> init()async{

  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));


  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));


  //controller
   Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
    Get.lazyPut(() =>RecommendedProductController(recommendedProductRepo: Get.find()));
}