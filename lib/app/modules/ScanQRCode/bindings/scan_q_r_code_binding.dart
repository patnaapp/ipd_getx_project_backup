import 'package:get/get.dart';

import '../controllers/scan_q_r_code_controller.dart';

class ScanQRCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanQRCodeController>(
      () => ScanQRCodeController(),
    );
  }
}
