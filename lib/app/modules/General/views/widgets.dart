import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/General/views/general.dart';

class Buttons extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  const Buttons(
      {Key? key, required this.text, required this.color, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: getProportionateScreenHeight(50),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              width: (color == Colors.white) ? 1.5 : 1,
              color:
                  (color == Colors.white) ? kButtonColor : Colors.transparent)),
      child: Center(
        child: Text(text,
            style: TextStyle(
                color: (color == Colors.white) ? kButtonColor : Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.2)),
      ),
    );
  }
}
