import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/modules/General/views/general.dart';
import 'package:grocery_app/app/modules/General/views/widgets.dart';
import 'package:grocery_app/app/modules/SignUp/views/Screens/verify.dart';

class PasswordView extends StatelessWidget {
  const PasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
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
              height: getProportionateScreenHeight(301.63),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/pass.png'),
                      fit: BoxFit.contain)),
            ),
            const Spacer(flex: 2),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Enter the password',
                  style: TextStyle(
                      color: kFormColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      letterSpacing: 0.2)),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Text('For the security & safety please choose a password',
                  style: TextStyle(
                      color: kFormColor.withOpacity(0.7),
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.clip,
                      fontSize: 18,
                      letterSpacing: 0.2)),
            ),
            const Spacer(),
            Container(
              width: getProportionateScreenWidth(348),
              height: getProportionateScreenHeight(48),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: kFormColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(children: [
                FaIcon(FontAwesomeIcons.lock, color: kButtonColor, size: 15),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: kFormColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
                FaIcon(FontAwesomeIcons.eye, color: kButtonColor, size: 16),
              ]),
            ),
            const SizedBox(height: 15),
            Container(
              width: getProportionateScreenWidth(348),
              height: getProportionateScreenHeight(48),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: kFormColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(children: [
                FaIcon(FontAwesomeIcons.lock, color: kButtonColor, size: 15),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                            color: kFormColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
                FaIcon(FontAwesomeIcons.eye, color: kButtonColor, size: 16),
              ]),
            ),
            const Spacer(flex: 2),
            InkWell(
              onTap: () {
                Get.to(() => const VerificationPage());
              },
              child: Buttons(
                  text: 'Next',
                  color: kButtonColor,
                  width: getProportionateScreenWidth(343)),
            ),
            const Spacer()
          ]),
        ),
      ),
    ));
  }
}
