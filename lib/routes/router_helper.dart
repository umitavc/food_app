import 'package:food_app/pages/cart/cart_page.dart';
import 'package:food_app/pages/food/popular_food_detail.dart';
import 'package:food_app/pages/food/recommended_food_detail.dart';
import 'package:food_app/pages/splash/splash_page.dart';
import 'package:get/get.dart';

import '../pages/home/home_page.dart';
import '../pages/home/main_food_page.dart';

class RouterHelper {

  static const String splashPage="/splash-page";
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage="/cart-page";

  static String getSplashPage()=>'$splashPage';
  static String getInitial()=>'$initial';
  static  String getPopularFood(int pageId, String page)=>'$popularFood?pageId=$pageId&page=$page';
  static  String getRecomendedFood( int pageId,String page)=>'$recommendedFood?pageId=$pageId&page=$page';
  static String getCartPage()=>'$cartPage';
  

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () =>SplashScreen()),

    GetPage(name: initial, page: () => HomePage()),

    GetPage(name: popularFood,page: () {
      var pageId=Get.parameters['pageId'];
      var page =Get.parameters["page"];
          return PopularFoodDetail(pageId: int.parse(pageId!), page: page!,);  
        },
        transition: Transition.fadeIn
        ),



      GetPage(name: recommendedFood,page: () {

        var pageId=Get.parameters['pageId'];
        var page =Get.parameters["page"];
          return RecommendedFoodDetail(pageId: int.parse(pageId!),page: page!);  
        },
        transition: Transition.fadeIn
        ),

        GetPage(name: cartPage, page: (){
          return CartPage();
        },
        transition: Transition.fadeIn
        )
  ];
}
