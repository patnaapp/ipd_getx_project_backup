import 'package:get/get.dart';

import '../controllers/labtest_controller.dart';

class LabtestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LabtestController>(
      () => LabtestController(),
    );
  }
}
