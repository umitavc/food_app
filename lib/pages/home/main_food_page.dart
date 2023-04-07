import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/small_text.dart';

import 'food_page_body.dart';

class HomeFoodPage extends StatefulWidget {
  const HomeFoodPage({super.key});

  @override
  State<HomeFoodPage> createState() => _HomeFoodPageState();
}

class _HomeFoodPageState extends State<HomeFoodPage> {
  @override
  Widget build(BuildContext context) {
    //print("current height is "+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin:  EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding:  EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Turkey",
                        color: AppColors.mainColor,
                        size: 30,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "İstanbul",
                            color: Colors.black54,
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      height: Dimensions.height45,
                      width: Dimensions.height45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.radius15), color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: const FoodPageBody())),
        ],
      ),
    );
  }
}
