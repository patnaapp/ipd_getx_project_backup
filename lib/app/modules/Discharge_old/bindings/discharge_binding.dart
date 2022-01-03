import 'package:get/get.dart';

import '../controllers/discharge_controller.dart';

class DischargeoldBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DischargeoldController>(
      () => DischargeoldController(),
    );
  }
}
