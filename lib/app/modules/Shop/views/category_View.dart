import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/app/data/Model%20Classes/categories_model.dart';
import 'package:grocery_app/app/modules/General/views/general.dart';

class CategoryView extends StatelessWidget {
  final List categories;
  const CategoryView({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: ListView.builder(
          physics: ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (_, index) {
            var just = categories[index];
            var color = colorContainer[just.name.toLowerCase()];
            return Column(
              children: [
                Container(
                    width: 85,
                    height: 85,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: color,
                    ),
                    child: Center(child: SvgPicture.asset(just.image))),
                const SizedBox(height: 10),
                Text(just.name,
                    style: TextStyle(
                      color: kHeadingColor.withOpacity(0.7),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ))
              ],
            );
          }),
    );
  }
}
