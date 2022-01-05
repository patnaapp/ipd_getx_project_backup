import 'package:get/get.dart';

import '../controllers/investigations_controller.dart';

class InvestigationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InvestigationsController>(
      () => InvestigationsController(),
    );
  }
}
