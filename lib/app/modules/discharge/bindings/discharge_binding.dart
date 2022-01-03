import 'package:get/get.dart';

import '../controllers/discharge_controller.dart';

class DischargeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DischargeController>(
      () => DischargeController(),
    );
  }
}
