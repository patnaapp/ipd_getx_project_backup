import 'package:get/get.dart';
// import 'package:ipd_getx_project_backup/app/modules/advice/controllers/speechToText_controller.dart';

import '../controllers/advice_controller.dart';

class AdviceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdviceController>(
      () => AdviceController(),
    );
    // Get.lazyPut<SpeechToTextController>(
    //       () => SpeechToTextController(),
    // );
  }
}
