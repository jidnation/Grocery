import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/data/Model%20Classes/categories_model.dart';
import 'package:grocery_app/app/modules/General/views/general.dart';
import 'package:grocery_app/app/modules/Shop/controllers/shop_controller.dart';

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

class Heading extends StatelessWidget {
  final String title;
  final Color color;
  const Heading({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: 23,
        fontWeight: FontWeight.w800,
        letterSpacing: 0.2,
      ),
    );
  }
}

class TabTitle extends StatelessWidget {
  final String text;
  const TabTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: kPrimaryColor,
            fontSize: 22,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.2));
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: getProportionateScreenWidth(348),
        height: getProportionateScreenHeight(50),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: kFormColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10)),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          FaIcon(FontAwesomeIcons.search, color: kFormColor, size: 18),
          const SizedBox(width: 5),
          Expanded(
            child: TextFormField(
              style: TextStyle(
                color: kFormColor,
                fontSize: 16,
                letterSpacing: 0.2,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.all(5),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      color: kFormColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
            ),
          ),
        ]));
  }
}

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 5),
        height: 580,
        child: GetBuilder<ShopController>(builder: (cont) {
          cont.getCategoryData(context);
          final List data = cont.categoryList;
          return GridView.builder(
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                childAspectRatio: 2 / 2.3,
                mainAxisSpacing: 25,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, index) {
                var just = data[index];
                var color = colorContainer[just.name.toLowerCase()];
                return InkWell(
                  onTap: () {
                    cont.toIndex.value = 5;
                    cont.container.value = data[index];
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                            width: 100,
                            height: 100,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              color: color,
                            ),
                            child: Center(child: SvgPicture.asset(just.image))),
                      ),
                      const SizedBox(height: 10),
                      Text(just.name,
                          style: TextStyle(
                            color: kHeadingColor.withOpacity(0.7),
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ))
                    ],
                  ),
                );
              });
        }),
      ),
    );
  }
}

/*    BOTTOM NAV BAR    */
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentIndex = 0;
    return GetBuilder<ShopController>(builder: (cont) {
      currentIndex = cont.currentIndex.value;
      return BottomNavigationBar(
        unselectedItemColor: kHeadingColor,
        selectedItemColor: kButtonColor,
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        elevation: 10,
        onTap: (val) {
          cont.changeIndex(val);
        },
        iconSize: 20,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home), label: 'Shop'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.search), label: 'Explore'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.shoppingCart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidHeart), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidUser), label: 'Account'),
        ],
      );
    });
  }
}

class Just extends StatelessWidget {
  const Just({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.offAndToNamed('/shop');
    return Container();
  }
}

class FruitShow extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String size;
  const FruitShow({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 186,
        margin: const EdgeInsets.only(right: 20, top: 3, bottom: 3, left: 5),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: kShadowColor, blurRadius: 6, spreadRadius: 0.2)
            ]),
        child: Column(children: [
          Image.asset(image),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(name,
                style: TextStyle(
                    color: kHeadingColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w800)),
          ),
          const SizedBox(height: 5),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(children: [
                  Text('$size,priceg',
                      style: TextStyle(
                          color: kHeadingColor.withOpacity(0.6),
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 5),
                  Text('\$ $price',
                      style: TextStyle(
                          color: kButtonColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w800)),
                ]),
                FaIcon(
                  FontAwesomeIcons.plusCircle,
                  color: kPlusColor,
                  size: 30,
                )
              ]),
        ]));
  }
}

/*    TAB-BAR TOP SECTION   */
class TabTopSection extends StatelessWidget {
  const TabTopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
        alignment: Alignment.topLeft,
        child: InkWell(
          onTap: () {
            Get.find<ShopController>().changeIndex(1);
          },
          child: FaIcon(FontAwesomeIcons.chevronLeft,
              size: 16, color: kButtonColor),
        ),
      ),
      const SizedBox(height: 10),
      GetX<ShopController>(builder: (con) {
        return TabTitle(text: con.tabTitle.value);
      }),
      const SizedBox(height: 10),
      SearchField(),
      const SizedBox(height: 5),
    ]);
  }
}
