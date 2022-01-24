import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/data/Model%20Classes/categories_model.dart';
import 'package:grocery_app/app/data/Model%20Classes/fruit_model.dart';
import 'package:grocery_app/app/modules/General/views/tab_selector.dart';
import 'package:grocery_app/app/modules/General/views/tabs_list.dart';
import 'package:grocery_app/app/modules/Shop/views/cart_view.dart';
import 'package:grocery_app/app/modules/Shop/views/explore_view.dart';
import 'package:grocery_app/app/modules/Shop/views/favorite_view.dart';
import 'package:grocery_app/app/modules/Shop/views/profile.dart';
import 'package:grocery_app/app/modules/Shop/views/shop_body.dart';

class ShopController extends GetxController {
  final RxString tabTitle = ''.obs;
  final RxList categoryList = [].obs;
  final RxList fruitList = [].obs;
  final RxInt toIndex = 0.obs;
  final RxInt index = 0.obs;
  final RxList<Widget> widgets = <Widget>[].obs;
  final RxList<Widget> tabsValue = <Widget>[].obs;
  final RxList<String> checkingIndex = <String>[].obs;
  final Rx<Category> container =
      Category(color: null, view: null, name: null, image: null).obs;
  final RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    TabSelector.tabController.dispose();
  }

  getCategoryData(context) async {
    var jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/Json Files/Categories.json');
    var jsonObject = await jsonDecode(jsonString);
    List<Category> _container = CategoriesList.fromJson(jsonObject).container;
    categoryList.value = _container;
    update();
  }

  /*    GETTING FRUIT LIST    */
  getFruitData(context) async {
    var jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/Json Files/Fruits.json');
    var jsonObject = await jsonDecode(jsonString);
    List<Fruit> _container = FruitList.fromJson(jsonObject).fruitContainer;
    fruitList.value = _container;
    update();
  }

  /*    UPDATING THE BOTTOM-NAVBAR INDEX   */
  changeIndex(int current) {
    toIndex.value = current;
    if (toIndex <= 4) {
      currentIndex.value = toIndex.value;
    }
    update();
  }

  /*    DETERMINE THE TAB WIDGET    */
  getWidget() {
    final List<Widget> currentTab = [
      ShopBody(),
      ExploreBody(),
      CartBody(),
      FavoriteBody(),
      Profile()
    ];
    if (toIndex.value <= 4) {
      return currentTab.elementAt(currentIndex.value);
    } else {
      tabTitle.value = container.value.name!;
      Widget? location = TabSelector();
      return location;
    }
  }

  /*    WORKING FOR THE TAB   */
  filler() {
    String _name = tabTitle.value;
    tabsValue.value = [];
    widgets.value = [];
    checkingIndex.value = [];
    tabBarList.forEach((key, value) {
      tabsValue.add(Tab(child: Text(key)));
      widgets.add(value);
      checkingIndex.add(key);
    });
    index.value = checkingIndex.indexOf(_name);
  }

  /*    CHANGING THE TAB-BAR VIEW TITLE   */
  changeTitle(int ind) {
    var _name = checkingIndex.elementAt(ind);
    tabTitle.value = _name;
  }
}
