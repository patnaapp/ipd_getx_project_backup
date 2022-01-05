import 'package:get/get.dart';

import '../controllers/general_examination_controller.dart';

class GeneralExaminationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GeneralExaminationController>(
      () => GeneralExaminationController(),
    );
  }
}
