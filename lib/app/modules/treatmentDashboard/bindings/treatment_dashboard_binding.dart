import 'package:get/get.dart';

import '../controllers/treatment_dashboard_controller.dart';

class TreatmentDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TreatmentDashboardController>(
      () => TreatmentDashboardController(),
    );
  }
}
