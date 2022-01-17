import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/modules/General/views/general.dart';
import 'package:grocery_app/app/modules/General/views/widgets.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
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
                      image: AssetImage('assets/images/verify.png'),
                      fit: BoxFit.contain)),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Enter Verification Code',
                  style: TextStyle(
                      color: kFormColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      letterSpacing: 0.2)),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Text('We have sent SMS to:\n046 XXX XX XX',
                  style: TextStyle(
                      color: kFormColor.withOpacity(0.7),
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.clip,
                      fontSize: 18,
                      letterSpacing: 0.2)),
            ),
            const Spacer(),
            Container(
              height: 20,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    return Container(
                        width: 50,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(width: 3, color: kFormColor))),
                        child: Center(
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                            ],
                            cursorColor: kFormColor,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                                color: kFormColor),
                            textAlign: TextAlign.center,
                            keyboardType:
                                const TextInputType.numberWithOptions(),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 0),
                                border: InputBorder.none),
                          ),
                        ));
                  }),
            ),
            const Spacer(flex: 2),
            Buttons(
                text: 'Sign Up',
                color: kButtonColor,
                width: getProportionateScreenWidth(343)),
            const Spacer()
          ]),
        ),
      ),
    ));
  }
}
