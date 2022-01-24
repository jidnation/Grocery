import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/modules/General/views/tabs_list.dart';
import 'package:grocery_app/app/modules/General/views/widgets.dart';
import 'package:grocery_app/app/modules/Shop/controllers/shop_controller.dart';

import 'general.dart';

class TabSelector extends StatefulWidget {
  const TabSelector({Key? key}) : super(key: key);
  @override
  State<TabSelector> createState() => _TabSelectorState();
  static late TabController tabController;
}

class _TabSelectorState extends State<TabSelector>
    with SingleTickerProviderStateMixin {
  final int _length = tabList.length;
  @override
  void initState() {
    super.initState();
    Get.find<ShopController>().filler();
    TabSelector.tabController = TabController(length: _length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<ShopController>(builder: (cont) {
        TabSelector.tabController.animateTo(cont.index.value);
        //TODO wrapping with SingleChildStrollView
        return Column(children: [
          Container(
            width: SizeConfig.screenWidth,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: TabTopSection(),
          ),
          Container(
            height: 25,
            child: TabBar(
              onTap: (val) {
                cont.changeTitle(val);
              },
              controller: TabSelector.tabController,
              tabs: cont.tabsValue,
              isScrollable: true,
              labelPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              indicatorColor: kButtonColor,
              indicatorWeight: 3,
              indicatorPadding: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              labelStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              labelColor: kHeadingColor.withOpacity(0.6),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
                // padding: const EdgeInsets.symmetric(vertical: 15),
                constraints: BoxConstraints(
                  maxHeight:
                      getProportionateScreenHeight(SizeConfig.screenHeight) -
                          getProportionateScreenHeight(100),
                ),
                child: Scaffold(
                  body: TabBarView(
                    controller: TabSelector.tabController,
                    children: cont.widgets,
                  ),
                )),
          )
        ]);
      }),
    );
  }
}
