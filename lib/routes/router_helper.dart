import 'package:food_app/pages/food/popular_food_detail.dart';
import 'package:food_app/pages/food/recommended_food_detail.dart';
import 'package:get/get.dart';

import '../pages/home/main_food_page.dart';

class RouterHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";


  static String getInitial()=>'$initial';
  static  String getPopularFood()=>"$popularFood";
  static  String getRecomendedFood()=>"$recommendedFood";

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => HomeFoodPage()),
    GetPage(name: popularFood,page: () {
          return PopularFoodDetail();  
        },
        transition: Transition.fadeIn
        ),

      GetPage(name: recommendedFood,page: () {
          return RecommendedFoodDetail();  
        },
        transition: Transition.fadeIn
        ),
  ];
}