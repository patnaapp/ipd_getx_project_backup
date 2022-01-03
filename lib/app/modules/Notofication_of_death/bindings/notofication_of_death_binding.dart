import 'package:get/get.dart';

import '../controllers/notofication_of_death_controller.dart';

class NotoficationOfDeathBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotoficationOfDeathController>(
      () => NotoficationOfDeathController(),
    );
  }
}
