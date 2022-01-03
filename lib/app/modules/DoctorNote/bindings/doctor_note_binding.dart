import 'package:get/get.dart';

import '../controllers/doctor_note_controller.dart';

class DoctorNoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorNoteController>(
      () => DoctorNoteController(),
    );
  }
}
