import 'package:flutter/material.dart';

class FishView extends StatelessWidget {
  const FishView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

class FishBody extends StatelessWidget {
  const FishBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FishHouse extends StatelessWidget {
  const FishHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
    );
  }
}
