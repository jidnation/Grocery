import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/testing_controller.dart';

class TestingView extends GetView<TestingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TestingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
