import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/modules/General/views/general.dart';
import 'package:grocery_app/app/modules/General/views/widgets.dart';
import 'package:grocery_app/app/modules/SignUp/views/Screens/password.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: FaIcon(FontAwesomeIcons.chevronLeft,
                  color: kPrimaryColor, size: 22),
            ),
          ),
          const SizedBox(height: 10),
          Text('Sign Up',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 25)),
          const Spacer(flex: 2),
          Container(
            width: getProportionateScreenWidth(348.27),
            height: getProportionateScreenHeight(331.63),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/phone.png'),
                    fit: BoxFit.cover)),
          ),
          const Spacer(),
          Container(
            width: getProportionateScreenWidth(348),
            height: getProportionateScreenHeight(48),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: kFormColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.all(12),
                  hintText: 'Name Surname',
                  hintStyle: TextStyle(
                      color: kFormColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700)),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: getProportionateScreenWidth(348),
            height: getProportionateScreenHeight(48),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: kFormColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  width: 33,
                  height: 26,
                  child: Image.asset('assets/images/flag.png'),
                ),
                const SizedBox(width: 10),
                FaIcon(FontAwesomeIcons.caretDown, size: 15, color: kFormColor)
              ]),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: const EdgeInsets.all(12),
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                          color: kFormColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                ),
              ),
            ]),
          ),
          const Spacer(flex: 2),
          InkWell(
            onTap: () {
              Get.to(() => const PasswordView());
            },
            child: Buttons(
                text: 'Next',
                color: kButtonColor,
                width: getProportionateScreenWidth(343)),
          ),
          const SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Already have an account? ',
              style: TextStyle(
                  color: kFormColor, fontSize: 18, fontWeight: FontWeight.w600),
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/sign-in');
              },
              child: Text(
                'Login',
                style: TextStyle(
                    color: kButtonColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ]),
          const Spacer()
        ]),
      ),
    ));
  }
}
