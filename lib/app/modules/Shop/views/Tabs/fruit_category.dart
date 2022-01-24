import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:grocery_app/app/modules/General/views/widgets.dart';
import 'package:grocery_app/app/modules/Shop/controllers/shop_controller.dart';

class FruitView extends StatelessWidget {
  const FruitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FruitBody extends StatelessWidget {
  const FruitBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/*    CURRENTLY WORKING WITH THIS   */
class FruitHouse extends StatelessWidget {
  const FruitHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 2),
      child: GetBuilder<ShopController>(builder: (cont) {
        return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 15,
                childAspectRatio: 2 / 2.28),
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: cont.fruitList.length,
            itemBuilder: (_, index) {
              var container = cont.fruitList[index];
              return FruitShow(
                  image: container.image,
                  name: container.name,
                  price: container.price,
                  size: container.size);
            });
      }),
    );
  }
}
