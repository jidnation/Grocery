import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/General/views/general.dart';
import 'package:grocery_app/app/modules/General/views/widgets.dart';

class ExploreBody extends StatelessWidget {
  const ExploreBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
            width: SizeConfig.screenWidth,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(children: [
              TabTitle(text: 'Categories'),
              const SizedBox(height: 15),
              SearchField(),
              CategoryGridView()
            ])),
      ),
    );
  }
}
