import 'package:get/get.dart';

import '../controllers/inter_departmental_opinion_controller.dart';

class InterDepartmentalOpinionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InterDepartmentalOpinionController>(
      () => InterDepartmentalOpinionController(),
    );
  }
}
