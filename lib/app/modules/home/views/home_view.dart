import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/modules/General/views/general.dart';
import 'package:grocery_app/app/modules/General/views/widgets.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    print('${SizeConfig.screenWidth}, ${SizeConfig.screenHeight}');
    return Scaffold(
        body: SafeArea(
      child: ListView(children: [
        Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Spacer(flex: 2),
            Container(
              width: getProportionateScreenWidth(329.36),
              height: getProportionateScreenHeight(362),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/homeBg.png'),
                      fit: BoxFit.contain)),
            ),
            const Spacer(),
            Container(
              width: 257,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Relax and shop',
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(height: 10),
                    Text('Shop online and get groceries',
                        style: TextStyle(
                            color: kSecondaryColor,
                            overflow: TextOverflow.clip,
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                    Text('delivered from stores to your home',
                        style: TextStyle(
                            color: kSecondaryColor,
                            overflow: TextOverflow.clip,
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                    Text('in as fast as 1 hour.',
                        style: TextStyle(
                            color: kSecondaryColor,
                            overflow: TextOverflow.clip,
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                  ]),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Get.toNamed('/sign_up');
              },
              child: Buttons(
                  text: 'Sign up',
                  color: kButtonColor,
                  width: getProportionateScreenWidth(343)),
            ),
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                Get.toNamed('/sign-in');
              },
              child: Buttons(
                  text: 'Sign in',
                  color: Colors.white,
                  width: getProportionateScreenWidth(343)),
            ),
            const Spacer(flex: 2),
          ]),
        ),
      ]),
    ));
  }
}
