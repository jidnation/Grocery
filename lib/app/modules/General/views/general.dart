import 'package:flutter/material.dart';

final Color kPrimaryColor = Color(0xfff99c32);
final Color kButtonColor = Color(0xffff5e00);
final Color kSecondaryColor = Color(0xff380a0e);
final Color kFormColor = Color(0xffac8e71);

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late MediaQueryData mediaQuery;
  static late Orientation orientation;

  void init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
    orientation = mediaQuery.orientation;

    defaultSize = (orientation == Orientation.landscape)
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }
}

//Get the properties size a per the screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;

  //826 is the layout height of the design use
  return (inputHeight / 812) * screenHeight;
}

//Get the properties size a per the screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;

  //375 is the layout height of the design use
  return (inputWidth / 375) * screenWidth;
}

/*    CREATING A GRADIENT TEXT    */

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Gradient gradient;

  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
