import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/modules/General/views/general.dart';
import 'package:grocery_app/app/modules/General/views/widgets.dart';
import 'package:grocery_app/app/modules/Shop/controllers/shop_controller.dart';
import 'package:grocery_app/app/modules/Shop/views/popular_view.dart';

import 'category_View.dart';

class ShopBody extends StatelessWidget {
  ShopBody({Key? key}) : super(key: key);

  final ShopController _shopControl =
      Get.put(ShopController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    _shopControl.getCategoryData(context);
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
        width: SizeConfig.screenWidth,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            FaIcon(FontAwesomeIcons.mapMarkerAlt, color: kPrimaryColor),
            const SizedBox(width: 10),
            TabTitle(text: 'Lungangan')
          ]),
          const SizedBox(height: 20),
          SearchField(),
          const SizedBox(height: 20),

          //CATEGORIES SECTION
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Heading(title: 'Categories', color: kHeadingColor),
            Text('See All',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500))
          ]),
          const SizedBox(height: 20),
          GetBuilder<ShopController>(builder: (cont) {
            return CategoryView(categories: cont.categoryList);
          }),
          const SizedBox(height: 20),

          //POPULAR DEALS SECTION
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Heading(title: 'Popular Deals', color: kHeadingColor),
            Text('See All',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500))
          ]),
          const SizedBox(height: 20),
          PopularDealsView(),
        ]),
      ))),
    );
  }
}
