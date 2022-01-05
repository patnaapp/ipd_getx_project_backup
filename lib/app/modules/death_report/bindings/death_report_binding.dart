import 'package:get/get.dart';

import '../controllers/death_report_controller.dart';

class DeathReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeathReportController>(
      () => DeathReportController(),
    );
  }
}
