import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/modules/General/views/widgets.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  // final List<Widget> currentTab = [
  //   ShopBody(),
  //   ExploreBody(),
  //   CartBody(),
  //   FavoriteBody(),
  //   Profile()
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<ShopController>(builder: (cont) {
          Widget going = cont.getWidget();
          return going;
        }),
        bottomNavigationBar: BottomNavBar());
  }
}
