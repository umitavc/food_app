import 'package:flutter/material.dart';
import 'package:food_app/controllers/popular_product_controller.dart';
import 'package:food_app/pages/cart/cart_page.dart';
import 'package:food_app/pages/food/popular_food_detail.dart';
import 'package:food_app/pages/food/recommended_food_detail.dart';
import 'package:food_app/pages/home/food_page_body.dart';
import 'package:food_app/pages/splash/splash_page.dart';
import 'package:food_app/routes/router_helper.dart';
import 'package:get/get.dart';

import 'controllers/recommended_product_controller.dart';
import 'pages/home/main_food_page.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    
   return GetBuilder<PopularProductController>(builder: (_){
      return GetBuilder<RecommendedProductController>(builder: (_){
         return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
      
            initialRoute: RouterHelper.getSplashPage(),
            getPages: RouterHelper.routes,
    );
      });
   });
  }
}
