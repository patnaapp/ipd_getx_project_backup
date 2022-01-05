import 'package:get/get.dart';

import '../controllers/other_examination_controller.dart';

class OtherExaminationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtherExaminationController>(
      () => OtherExaminationController(),
    );
  }
}
