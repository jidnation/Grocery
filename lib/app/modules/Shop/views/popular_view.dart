import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/modules/General/views/widgets.dart';
import 'package:grocery_app/app/modules/Shop/controllers/shop_controller.dart';

class PopularDealsView extends StatelessWidget {
  const PopularDealsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Center(
          child: GetBuilder<ShopController>(builder: (cont) {
            cont.getFruitData(context);
            final List data = cont.fruitList;
            return ListView.builder(
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (_, index) {
                  var house = data[index];
                  return FruitShow(
                      image: house.image,
                      name: house.name,
                      price: house.price,
                      size: house.size);
                });
          }),
        ));
  }
}
