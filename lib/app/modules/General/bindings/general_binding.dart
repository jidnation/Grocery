import 'package:get/get.dart';

import '../controllers/general_controller.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GeneralController>(
      () => GeneralController(),
    );
  }
}
