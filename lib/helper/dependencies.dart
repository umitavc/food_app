import 'package:food_app/data/api/api_client.dart';
import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../controllers/popular_product_controller.dart';


Future<void> init()async{
  Get.lazyPut(()=>ApiClient(appBaseUrl: "https://www.dbestech.com/"));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

   Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}