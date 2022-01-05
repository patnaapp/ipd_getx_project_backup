import 'package:get/get.dart';

import '../controllers/physical_examination_controller.dart';

class PhysicalExaminationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhysicalExaminationController>(
      () => PhysicalExaminationController(),
    );
  }
}
