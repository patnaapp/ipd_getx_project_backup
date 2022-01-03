import 'package:get/get.dart';

import '../controllers/radiology_controller.dart';

class RadiologyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RadiologyController>(
      () => RadiologyController(),
    );
  }
}
