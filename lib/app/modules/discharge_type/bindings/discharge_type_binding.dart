import 'package:get/get.dart';

import '../controllers/discharge_type_controller.dart';

class DischargeTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DischargeTypeController>(
      () => DischargeTypeController(),
    );
  }
}
