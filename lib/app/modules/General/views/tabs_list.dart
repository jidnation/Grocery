import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/Shop/views/Tabs/cakes_category.dart';
import 'package:grocery_app/app/modules/Shop/views/Tabs/egg_milk_category.dart';
import 'package:grocery_app/app/modules/Shop/views/Tabs/fish_category.dart';
import 'package:grocery_app/app/modules/Shop/views/Tabs/fruit_category.dart';
import 'package:grocery_app/app/modules/Shop/views/Tabs/hand_wash_category.dart';
import 'package:grocery_app/app/modules/Shop/views/Tabs/ice_cream_category.dart';
import 'package:grocery_app/app/modules/Shop/views/Tabs/juices_category.dart';
import 'package:grocery_app/app/modules/Shop/views/Tabs/meat_category.dart';
import 'package:grocery_app/app/modules/Shop/views/Tabs/sea_food_category.dart';
import 'package:grocery_app/app/modules/Shop/views/Tabs/vegetables_category.dart';
import 'package:grocery_app/app/modules/Shop/views/Tabs/wine_category.dart';

final Map<String, Widget> tabList = {
  "Fruit": FruitBody(),
  "Fish": FishBody(),
  "Cakes": CakesBody(),
  "Hand Wash": HandWashBody(),
  "Egg & Milk": EggMilkBody(),
  "Ice Cream": IceCreamBody(),
  "Juices": JuicesBody(),
  "Meat": MeatBody(),
  "Sea Food": SeaFoodBody(),
  "Vegetables": VegetablesBody(),
  "Wine": WineBody()
};

final Map<String, Widget> tabBarList = {
  "Fruit": FruitHouse(),
  "Fish": FishHouse(),
  "Cakes": CakesHouse(),
  "Hand Wash": HandWashHouse(),
  "Egg & Milk": EggMilkHouse(),
  "Ice Cream": IceCreamHouse(),
  "Juices": JuicesHouse(),
  "Meat": MeatHouse(),
  "Sea Food": SeaFoodHouse(),
  "Vegetables": VegetablesHouse(),
  "Wine": WineHouse()
};
