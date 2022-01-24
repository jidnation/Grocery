import 'package:get/get.dart';
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

import '../modules/Auth/bindings/auth_binding.dart';
import '../modules/Auth/views/auth_view.dart';
import '../modules/Shop/bindings/shop_binding.dart';
import '../modules/Shop/views/shop_view.dart';
import '../modules/SignIn/bindings/sign_in_binding.dart';
import '../modules/SignIn/views/sign_in_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/testing/bindings/testing_binding.dart';
import '../modules/testing/views/testing_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FRUIT,
      page: () => FruitView(),
    ),
    GetPage(
      name: _Paths.CAKES,
      page: () => CakesView(),
    ),
    GetPage(
      name: _Paths.EGGMILK,
      page: () => EggMilkView(),
    ),
    GetPage(
      name: _Paths.HANDWASH,
      page: () => HandWashView(),
    ),
    GetPage(
      name: _Paths.FISH,
      page: () => FishView(),
    ),
    GetPage(
      name: _Paths.ICECREAM,
      page: () => IceCreamView(),
    ),
    GetPage(
      name: _Paths.JUICES,
      page: () => JuicesView(),
    ),
    GetPage(
      name: _Paths.MEAT,
      page: () => MeatView(),
    ),
    GetPage(
      name: _Paths.SEAFOOD,
      page: () => SeaFoodView(),
    ),
    GetPage(
      name: _Paths.VEGETABLES,
      page: () => VegetablesView(),
    ),
    GetPage(
      name: _Paths.WINE,
      page: () => WineView(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.SignUp,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.TESTING,
      page: () => TestingView(),
      binding: TestingBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => ShopView(),
      binding: ShopBinding(),
    ),
  ];
}
