import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expandable_text_widget.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [AppIcon(icon: Icons.clear), AppIcon(icon: Icons.shopping_cart_outlined)],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(size: Dimensions.font26, text: "Pankek")),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellewColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/image/food1.jpg",
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                    text:
                        "Kahvaltılarınızda severek tüketeceğiniz, reçel, marmelat gibi tatlılarla lezzetlendireceğiniz, kaşık dökmesi olarak da bilinen ama tatlı olan bir tarif. Çocuklarınız pankek tarifine bayılacaklar. Günümüzde olan pankek tavaları ile farklı hayvan şekilleri verebileceğiniz böylelikle de çocuklarınızın dikkatini çekecek olan pankek tarifini mutlaka denemelisiniz.Kahvaltılarınızda severek tüketeceğiniz, reçel, marmelat gibi tatlılarla lezzetlendireceğiniz, kaşık dökmesi olarak da bilinen ama tatlı olan bir tarif. Çocuklarınız pankek tarifine bayılacaklar. Günümüzde olan pankek tavaları ile farklı hayvan şekilleri verebileceğiniz böylelikle de çocuklarınızın dikkatini çekecek olan pankek tarifini mutlaka denemelisiniz.Kahvaltılarınızda severek tüketeceğiniz, reçel, marmelat gibi tatlılarla lezzetlendireceğiniz, kaşık dökmesi olarak da bilinen ama tatlı olan bir tarif. Çocuklarınız pankek tarifine bayılacaklar. Günümüzde olan pankek tavaları ile farklı hayvan şekilleri verebileceğiniz böylelikle de çocuklarınızın dikkatini çekecek olan pankek tarifini mutlaka denemelisiniz.Kahvaltılarınızda severek tüketeceğiniz, reçel, marmelat gibi tatlılarla lezzetlendireceğiniz, kaşık dökmesi olarak da bilinen ama tatlı olan bir tarif. Çocuklarınız pankek tarifine bayılacaklar. Günümüzde olan pankek tavaları ile farklı hayvan şekilleri verebileceğiniz böylelikle de çocuklarınızın dikkatini çekecek olan pankek tarifini mutlaka denemelisiniz.Kahvaltılarınızda severek tüketeceğiniz, reçel, marmelat gibi tatlılarla lezzetlendireceğiniz, kaşık dökmesi olarak da bilinen ama tatlı olan bir tarif. Çocuklarınız pankek tarifine bayılacaklar. Günümüzde olan pankek tavaları ile farklı hayvan şekilleri verebileceğiniz böylelikle de çocuklarınızın dikkatini çekecek olan pankek tarifini mutlaka denemelisiniz.Kahvaltılarınızda severek tüketeceğiniz, reçel, marmelat gibi tatlılarla lezzetlendireceğiniz, kaşık dökmesi olarak da bilinen ama tatlı olan bir tarif. Çocuklarınız pankek tarifine bayılacaklar. Günümüzde olan pankek tavaları ile farklı hayvan şekilleri verebileceğiniz böylelikle de çocuklarınızın dikkatini çekecek olan pankek tarifini mutlaka denemelisiniz.Kahvaltılarınızda severek tüketeceğiniz, reçel, marmelat gibi tatlılarla lezzetlendireceğiniz, kaşık dökmesi olarak da bilinen ama tatlı olan bir tarif. Çocuklarınız pankek tarifine bayılacaklar. Günümüzde olan pankek tavaları ile farklı hayvan şekilleri verebileceğiniz böylelikle de çocuklarınızın dikkatini çekecek olan pankek tarifini mutlaka denemelisiniz.Kahvaltılarınızda severek tüketeceğiniz, reçel, marmelat gibi tatlılarla lezzetlendireceğiniz, kaşık dökmesi olarak da bilinen ama tatlı olan bir tarif. Çocuklarınız pankek tarifine bayılacaklar. Günümüzde olan pankek tavaları ile farklı hayvan şekilleri verebileceğiniz böylelikle de çocuklarınızın dikkatini çekecek olan pankek tarifini mutlaka denemelisiniz.Kahvaltılarınızda severek tüketeceğiniz, reçel, marmelat gibi tatlılarla lezzetlendireceğiniz, kaşık dökmesi olarak da bilinen ama tatlı olan bir tarif. Çocuklarınız pankek tarifine bayılacaklar. Günümüzde olan pankek tavaları ile farklı hayvan şekilleri verebileceğiniz böylelikle de çocuklarınızın dikkatini çekecek olan pankek tarifini mutlaka denemelisiniz.Kahvaltılarınızda severek tüketeceğiniz, reçel, marmelat gibi tatlılarla lezzetlendireceğiniz, kaşık dökmesi olarak da bilinen ama tatlı olan bir tarif. Çocuklarınız pankek tarifine bayılacaklar. Günümüzde olan pankek tavaları ile farklı hayvan şekilleri verebileceğiniz böylelikle de çocuklarınızın dikkatini çekecek olan pankek tarifini mutlaka denemelisiniz."),
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                ),
                BigText(
                  text: "\$12.88 " + " x " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.add,
                )
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                  topRight: Radius.circular(Dimensions.radius20 * 2),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.all(Dimensions.height20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.radius20), color: Colors.white),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
                Container(
                  padding: EdgeInsets.all(Dimensions.height20),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.radius20), color: AppColors.mainColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
